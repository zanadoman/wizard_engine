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
use std::{
    collections::HashMap,
    env::args,
    hash::{DefaultHasher, Hash, Hasher},
    net::SocketAddr,
    sync::{Arc, OnceLock},
};
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
use zerocopy::{AsBytes, FromBytes, FromZeroes};

const DEFAULT_PORT: u16 = 8080;
const BUFFER_SIZE: usize = 1024;
const TIMEOUT: Duration = Duration::from_secs(10);

fn clients() -> &'static RwLock<HashMap<SocketAddr, Instant>> {
    static CLIENTS: OnceLock<RwLock<HashMap<SocketAddr, Instant>>> =
        OnceLock::new();
    CLIENTS.get_or_init(|| RwLock::new(HashMap::new()))
}

#[repr(C)]
#[derive(Clone, AsBytes, FromBytes, FromZeroes)]
struct Incoming {
    x: f32,
    y: f32,
}

#[repr(C)]
#[derive(Clone, AsBytes, FromBytes, FromZeroes)]
struct Outgoing {
    id: u64,
    x: f32,
    y: f32,
}

async fn input(
    socket: Arc<UdpSocket>,
    transmitter: Sender<(SocketAddr, (f32, f32))>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER_SIZE];

    loop {
        let (sender, incoming) = match socket.recv_from(&mut buffer).await {
            Ok((size, address)) => (
                address,
                match Incoming::read_from(&buffer[..size]) {
                    Some(payload) => payload,
                    None => {
                        eprintln!("Invalid data from {}", address);
                        continue;
                    }
                },
            ),
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        clients()
            .write()
            .await
            .entry(sender)
            .and_modify(|timestamp| {
                println!("Client {} updated", sender);
                *timestamp = Instant::now()
            })
            .or_insert_with(|| {
                println!("Client {} connected", sender);
                Instant::now()
            });
        println!("{}: x: {}, y: {}", sender, incoming.x, incoming.y);
        if let Err(error) = transmitter.send((sender, (incoming.x, incoming.y)))
        {
            eprintln!("{}", error)
        }
    }
}

async fn output(
    socket: Arc<UdpSocket>,
    mut receiver: Receiver<(SocketAddr, (f32, f32))>,
) -> Result<(), Error> {
    loop {
        let (sender, outgoing) = match receiver.recv().await {
            Ok(outgoing) => {
                let mut hasher = DefaultHasher::new();
                outgoing.0.hash(&mut hasher);
                (
                    outgoing.0,
                    Outgoing {
                        id: hasher.finish(),
                        x: outgoing.1 .0,
                        y: outgoing.1 .1,
                    },
                )
            }
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        for (address, _) in clients().read().await.iter() {
            if sender != *address {
                if let Err(error) =
                    socket.send_to(&outgoing.as_bytes(), address).await
                {
                    eprintln!("{}", error)
                }
            }
        }
    }
}

async fn timeout() -> Result<(), Error> {
    loop {
        sleep(Duration::from_secs(1)).await;
        clients().write().await.retain(|address, timestamp| {
            let alive = Instant::now().duration_since(*timestamp) < TIMEOUT;
            if !alive {
                println!("Client {} disconnected", address)
            }
            alive
        })
    }
}

#[main]
async fn main() -> Result<(), Error> {
    let socket = Arc::new(
        UdpSocket::bind(format!(
            "0.0.0.0:{}",
            args().nth(1).unwrap_or(DEFAULT_PORT.to_string())
        ))
        .await?,
    );
    let transmitter = channel(u8::MAX.into()).0;

    println!("Listening on {:?}", socket.local_addr()?);

    try_join!(
        input(socket.clone(), transmitter.clone()),
        output(socket.clone(), transmitter.subscribe()),
        timeout()
    )?;
    Ok(())
}
