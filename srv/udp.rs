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
use zerocopy::FromBytes;

const DEFAULT_PORT: u16 = 8080;
const BUFFER_SIZE: usize = 1024;
const TIMEOUT: Duration = Duration::from_secs(10);

fn clients() -> &'static RwLock<HashMap<SocketAddr, Instant>> {
    static CLIENTS: OnceLock<RwLock<HashMap<SocketAddr, Instant>>> =
        OnceLock::new();
    CLIENTS.get_or_init(|| RwLock::new(HashMap::default()))
}

async fn input(
    socket: &Arc<UdpSocket>,
    sender: &Sender<[u8; BUFFER_SIZE]>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER_SIZE];
    loop {
        let (size, address) = match socket.recv_from(&mut buffer).await {
            Ok(connection) => connection,
            Err(error) => {
                eprintln!("{}", &error);
                continue;
            }
        };
        let message = match <[u8; BUFFER_SIZE]>::read_from(&buffer[..size]) {
            Some(message) => message,
            None => {
                eprintln!("Invalid message from {}", &address);
                continue;
            }
        };
        clients()
            .write()
            .await
            .entry(address)
            .and_modify(|timestamp| {
                println!("Client {} updated", &address);
                *timestamp = Instant::now()
            })
            .or_insert_with(|| {
                println!("Client {} connected", &address);
                Instant::now()
            });
        println!("{}: {}", &address, &String::from_utf8_lossy(&message));
        if let Err(error) = sender.send(message) {
            eprintln!("{}", &error)
        }
    }
}

async fn output(
    socket: &Arc<UdpSocket>,
    receiver: &mut Receiver<[u8; BUFFER_SIZE]>,
) -> Result<(), Error> {
    loop {
        let message = match receiver.recv().await {
            Ok(message) => message,
            Err(error) => {
                eprintln!("{}", &error);
                continue;
            }
        };
        for address in clients().read().await.keys() {
            if let Err(error) = socket.send_to(&message, &address).await {
                eprintln!("{}", &error)
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
                println!("Client {} disconnected", &address)
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
            &args().nth(1).unwrap_or(DEFAULT_PORT.to_string())
        ))
        .await?,
    );
    let channel = channel(u8::MAX.into()).0;
    let mut receiver = channel.subscribe();
    println!("Listening on {:?}", &socket.local_addr()?);
    try_join!(
        input(&socket, &channel),
        output(&socket, &mut receiver),
        timeout()
    )?;
    Ok(())
}
