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

use anyhow::Error;
use clap::{value_parser, Parser};
use std::{collections::HashMap, net::SocketAddr, sync::OnceLock};
use tokio::{
    main,
    net::UdpSocket,
    sync::{
        broadcast::{channel, Receiver, Sender},
        RwLock,
    },
    time::{sleep, Duration, Instant},
    try_join,
};
use tracing::{info, instrument, warn};
use tracing_subscriber::{fmt, fmt::format::FmtSpan};
use zerocopy::FromBytes;

const PORT: u16 = 8080;
const BUFFER: usize = 1024;
const TIMEOUT: u64 = 10;

#[derive(Parser)]
#[command(version, about = "Simple UDP broadcast server for Wizard Engine")]
struct Args {
    #[arg(short, long, default_value_t = PORT)]
    port: u16,
    #[arg(
        short,
        long,
        default_value_t = TIMEOUT,
        value_parser = value_parser!(u64).range(1..),
    )]
    timeout: u64,
}

impl Args {
    #[instrument]
    fn once() -> &'static Args {
        static ARGS: OnceLock<Args> = OnceLock::new();
        ARGS.get_or_init(Args::parse)
    }
}

#[instrument]
fn clients() -> &'static RwLock<HashMap<SocketAddr, Instant>> {
    static CLIENTS: OnceLock<RwLock<HashMap<SocketAddr, Instant>>> =
        OnceLock::new();
    CLIENTS.get_or_init(|| RwLock::new(HashMap::default()))
}

#[instrument(skip(socket, sender))]
async fn input(
    socket: &UdpSocket,
    sender: &Sender<[u8; BUFFER]>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER];
    loop {
        let (size, address) = match socket.recv_from(&mut buffer).await {
            Ok(connection) => connection,
            Err(error) => {
                warn!("{}", error);
                continue;
            }
        };
        let message = match <[u8; BUFFER]>::read_from(&buffer[..size]) {
            Some(message) => message,
            None => {
                warn!("{} corrupted", address);
                continue;
            }
        };
        clients()
            .write()
            .await
            .entry(address)
            .and_modify(|timestamp| {
                info!("{} updated", address);
                *timestamp = Instant::now()
            })
            .or_insert_with(|| {
                info!("{} connected", address);
                Instant::now()
            });
        info!("{}: {}", address, String::from_utf8_lossy(&message));
        if let Err(error) = sender.send(message) {
            warn!("{}", error)
        }
    }
}

#[instrument(skip(socket, receiver))]
async fn output(
    socket: &UdpSocket,
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
        for address in clients().read().await.keys() {
            if let Err(error) = socket.send_to(&message, address).await {
                warn!("{}", error)
            }
        }
    }
}

#[instrument]
async fn timeout() -> Result<(), Error> {
    loop {
        sleep(Duration::from_secs(1)).await;
        clients().write().await.retain(|address, timestamp| {
            let alive = Instant::now().duration_since(*timestamp)
                < Duration::from_secs(Args::once().timeout);
            if !alive {
                info!("{} disconnected", address)
            }
            alive
        })
    }
}

#[main]
async fn main() -> Result<(), Error> {
    fmt().with_span_events(FmtSpan::FULL).init();
    let socket =
        UdpSocket::bind(format!("127.0.0.1:{}", Args::once().port)).await?;
    let channel = channel(u8::MAX.into()).0;
    let mut receiver = channel.subscribe();
    info!("{:?} listening", socket.local_addr()?);
    try_join!(
        input(&socket, &channel),
        output(&socket, &mut receiver),
        timeout()
    )?;
    Ok(())
}
