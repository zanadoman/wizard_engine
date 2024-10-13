/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

use anyhow::{anyhow, Error};
use clap::Parser;
use std::{net::SocketAddr, sync::OnceLock};
use tokio::{
    io::{split, AsyncReadExt, AsyncWriteExt, ReadHalf, WriteHalf},
    main,
    net::{TcpListener, TcpStream},
    spawn,
    sync::broadcast::{channel, Receiver, Sender},
    try_join,
};
use tracing::{error, info, instrument, warn};
use tracing_subscriber::{fmt, fmt::format::FmtSpan};
use zerocopy::FromBytes;

const PORT: u16 = 8080;
const BUFFER: usize = 1024;

#[derive(Parser)]
#[command(version, about = "Simple TCP broadcast server for Wizard Engine")]
struct Args {
    #[arg(short, long, default_value_t = PORT)]
    port: u16,
}

impl Args {
    #[instrument]
    fn once() -> &'static Args {
        static ARGS: OnceLock<Args> = OnceLock::new();
        ARGS.get_or_init(Args::parse)
    }
}

#[instrument(skip(socket, sender))]
async fn input(
    address: &SocketAddr,
    socket: &mut ReadHalf<TcpStream>,
    sender: &Sender<[u8; BUFFER]>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER];
    loop {
        let size = match socket.read(&mut buffer).await {
            Ok(0) => return Err(anyhow!("{} disconnected", address)),
            Ok(size) => size,
            Err(error) => return Err(error.into()),
        };
        let message = match <[u8; BUFFER]>::read_from(&buffer[..size]) {
            Some(message) => message,
            None => {
                warn!("corrupted");
                continue;
            }
        };
        info!("{}", String::from_utf8_lossy(&message));
        if let Err(error) = sender.send(message) {
            warn!("{}", error)
        }
    }
}

#[instrument(skip(socket, receiver))]
async fn output(
    socket: &mut WriteHalf<TcpStream>,
    receiver: &mut Receiver<[u8; BUFFER]>,
) -> Result<(), Error> {
    loop {
        let message = match receiver.recv().await {
            Ok(message) => message,
            Err(error) => {
                warn!("{}", error);
                continue;
            }
        };
        socket.write_all(&message).await?
    }
}

#[main]
async fn main() -> Result<(), Error> {
    fmt().with_span_events(FmtSpan::FULL).init();
    let listener =
        TcpListener::bind(format!("127.0.0.1:{}", Args::once().port)).await?;
    let channel = channel(u8::MAX.into()).0;
    info!("{:?} listening", listener.local_addr()?);
    loop {
        let (socket, address) = match listener.accept().await {
            Ok(connection) => connection,
            Err(error) => {
                warn!("{}", error);
                continue;
            }
        };
        let (mut reader, mut writer) = split(socket);
        let sender = channel.clone();
        let mut receiver = channel.subscribe();
        spawn(async move {
            info!("{} connected", address);
            if let Err(error) = try_join!(
                input(&address, &mut reader, &sender),
                output(&mut writer, &mut receiver)
            ) {
                error!("{}", error)
            }
        });
    }
}
