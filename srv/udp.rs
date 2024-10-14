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

use clap::{value_parser, Parser};
use std::{collections::HashMap, net::SocketAddr, sync::OnceLock};
use thiserror::Error;
use tokio::{
    io::Error,
    main,
    net::UdpSocket,
    select,
    signal::ctrl_c,
    sync::{
        broadcast::{
            channel,
            error::{RecvError, SendError},
            Receiver, Sender,
        },
        RwLock,
    },
    time::{sleep, Duration, Instant},
    try_join,
};
use tracing::{error, info, instrument, warn};
use tracing_subscriber::{fmt, fmt::format::FmtSpan};
use zerocopy::FromBytes;

const DEFAULT_PORT: u16 = 8080;
const DEFAULT_TIMEOUT: u64 = 10;
const BUFFER_SIZE: usize = 1024;

#[derive(Error, Debug)]
enum ServerError {
    #[error("{0}")]
    Error(#[from] Error),
    #[error("{0}")]
    RecvError(#[from] RecvError),
    #[error("{0}")]
    SendError(#[from] Box<SendError<[u8; BUFFER_SIZE]>>),
}

#[derive(Parser)]
#[command(version, about = "Simple UDP broadcast server for Wizard Engine")]
struct Args {
    #[arg(short, long, default_value_t = DEFAULT_PORT)]
    port: u16,
    #[arg(
        short,
        long,
        default_value_t = DEFAULT_TIMEOUT,
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
async fn input_task(
    socket: &UdpSocket,
    sender: &Sender<[u8; BUFFER_SIZE]>,
) -> Result<(), ServerError> {
    let mut buffer = [0; BUFFER_SIZE];
    loop {
        let (size, address) = socket.recv_from(&mut buffer).await?;
        let message = match <[u8; BUFFER_SIZE]>::read_from(&buffer[..size]) {
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
        sender.send(message).map_err(Box::new)?;
    }
}

#[instrument(skip(socket, receiver))]
async fn output_task(
    socket: &UdpSocket,
    receiver: &mut Receiver<[u8; BUFFER_SIZE]>,
) -> Result<(), ServerError> {
    loop {
        let message = receiver.recv().await?;
        for address in clients().read().await.keys() {
            if let Err(error) = socket.send_to(&message, address).await {
                warn!("{}", error)
            }
        }
    }
}

#[instrument]
async fn timeout_task() -> Result<(), ServerError> {
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
async fn main() -> Result<(), ServerError> {
    fmt().with_span_events(FmtSpan::FULL).init();
    let socket =
        UdpSocket::bind(format!("127.0.0.1:{}", Args::once().port)).await?;
    let channel = channel(u8::MAX.into()).0;
    let mut receiver = channel.subscribe();
    info!("{:?} listening", socket.local_addr()?);
    select! {
        result = async {
            try_join!(
                input_task(&socket, &channel),
                output_task(&socket, &mut receiver),
                timeout_task()
            )
        } => result.map(|_| ()),
        result = ctrl_c() => Ok(result?)
    }
}
