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
use lazy_static::lazy_static;
use std::{collections::HashMap, env::args, net::SocketAddr, sync::Arc};
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

const DEFAULT_PORT: u32 = 8080;
const BUFFER_SIZE: usize = 1024;
const TIMEOUT: Duration = Duration::from_secs(10);

lazy_static! {
    static ref clients: RwLock<HashMap<SocketAddr, Instant>> =
        RwLock::new(HashMap::new());
}

#[repr(C)]
#[derive(Clone, AsBytes, FromBytes, FromZeroes)]
struct Payload {
    content: [u8; BUFFER_SIZE],
}

async fn input(
    socket: Arc<UdpSocket>,
    transmitter: Sender<(SocketAddr, Payload)>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER_SIZE];

    loop {
        let (sender, payload) = match socket.recv_from(&mut buffer).await {
            Ok((size, address)) => (
                address,
                match Payload::read_from(&buffer[..size]) {
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
        clients
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
        println!("{}: {}", sender, String::from_utf8_lossy(&payload.content));
        if let Err(error) = transmitter.send((sender, payload)) {
            eprintln!("{}", error)
        }
    }
}

async fn output(
    socket: Arc<UdpSocket>,
    mut receiver: Receiver<(SocketAddr, Payload)>,
) -> Result<(), Error> {
    loop {
        let (sender, payload) = match receiver.recv().await {
            Ok(message) => message,
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        for (address, _) in clients.read().await.iter() {
            if sender != *address {
                if let Err(error) =
                    socket.send_to(&payload.as_bytes(), address).await
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
        clients.write().await.retain(|address, timestamp| {
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
