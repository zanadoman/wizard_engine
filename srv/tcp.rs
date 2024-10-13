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

use clap::Parser;
use std::net::SocketAddr;
use thiserror::Error;
use tokio::{
    io::{split, AsyncReadExt, AsyncWriteExt, Error, ReadHalf, WriteHalf},
    main,
    net::{TcpListener, TcpStream},
    select,
    signal::ctrl_c,
    spawn,
    sync::broadcast::{
        channel,
        error::{RecvError, SendError},
        Receiver, Sender,
    },
    try_join,
};
use tracing::{error, info, instrument};
use tracing_subscriber::{fmt, fmt::format::FmtSpan};
use zerocopy::FromBytes;

const PORT: u16 = 8080;
const BUFFER: usize = 1024;

#[derive(Error, Debug)]
enum ServerError {
    #[error("{0} corrupted")]
    Corrupted(SocketAddr),
    #[error("{0} disconnected")]
    Disconnected(SocketAddr),
    #[error("{0}")]
    Error(#[from] Error),
    #[error("{0}")]
    RecvError(#[from] RecvError),
    #[error("{0}")]
    SendError(#[from] Box<SendError<[u8; BUFFER]>>),
}

#[derive(Parser)]
#[command(version, about = "Simple TCP broadcast server for Wizard Engine")]
struct Args {
    #[arg(short, long, default_value_t = PORT)]
    port: u16,
}

#[instrument(skip(socket, sender))]
async fn input(
    address: &SocketAddr,
    socket: &mut ReadHalf<TcpStream>,
    sender: &Sender<[u8; BUFFER]>,
) -> Result<(), ServerError> {
    let mut buffer = [0; BUFFER];
    loop {
        let size = match socket.read(&mut buffer).await {
            Ok(0) => return Err(ServerError::Disconnected(*address)),
            Ok(size) => size,
            Err(error) => return Err(error.into()),
        };
        let message = <[u8; BUFFER]>::read_from(&buffer[..size])
            .ok_or_else(|| ServerError::Corrupted(*address))?;
        info!("{}", String::from_utf8_lossy(&message));
        sender.send(message).map_err(Box::new)?;
    }
}

#[instrument(skip(socket, receiver))]
async fn output(
    socket: &mut WriteHalf<TcpStream>,
    receiver: &mut Receiver<[u8; BUFFER]>,
) -> Result<(), ServerError> {
    loop {
        socket.write_all(&receiver.recv().await?).await?
    }
}

#[instrument(skip(listener, sender))]
async fn serve(
    listener: &TcpListener,
    sender: &Sender<[u8; BUFFER]>,
) -> Result<(), ServerError> {
    loop {
        let (socket, address) = listener.accept().await?;
        let (mut reader, mut writer) = split(socket);
        let sender = sender.clone();
        let mut receiver = sender.subscribe();
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

#[main]
async fn main() -> Result<(), ServerError> {
    fmt().with_span_events(FmtSpan::FULL).init();
    let listener =
        TcpListener::bind(format!("127.0.0.1:{}", Args::parse().port)).await?;
    let channel = channel(u8::MAX.into()).0;
    info!("{:?} listening", listener.local_addr()?);
    select! {
        result = serve(&listener, &channel) => result,
        result = ctrl_c() => Ok(result?)
    }
}
