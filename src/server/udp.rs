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
    sync::Arc,
    time::{Duration, Instant},
};
use tokio::{
    main,
    net::UdpSocket,
    spawn,
    sync::{
        broadcast::{channel, Sender},
        Mutex,
    },
};

const DEFAULT_PORT: u32 = 8080;
const BUFFER_SIZE: usize = 1024;

#[main]
async fn main() -> Result<(), Error> {
    let socket = Arc::new(
        UdpSocket::bind(format!(
            "0.0.0.0:{}",
            args().nth(1).unwrap_or(DEFAULT_PORT.to_string())
        ))
        .await?,
    );
    let clients = Arc::new(Mutex::new(HashMap::<SocketAddr, Instant>::new()));
    let transmitter = Arc::new(Mutex::<Sender<(SocketAddr, Vec<u8>)>>::new(
        channel(u8::MAX.into()).0,
    ));
    let mut buffer = [0; BUFFER_SIZE];

    println!("Listening on {:?}", socket.local_addr()?);

    let clients_clone = clients.clone();
    spawn(async move {
        loop {
            clients_clone.lock().await.retain(|_, timestamp| {
                Instant::now().duration_since(*timestamp)
                    < Duration::from_secs(10)
            });
        }
    });

    let transmitter_clone = transmitter.clone();
    let clients_clone2 = clients.clone();
    let socket_clone = socket.clone();
    spawn(async move {
        let mut receiver = transmitter_clone.lock().await.subscribe();

        loop {
            match receiver.recv().await {
                Ok((sender, content)) => {
                    for (client, _) in clients_clone2.lock().await.iter() {
                        if *client != sender {
                            if let Err(error) =
                                socket_clone.send_to(&content, client).await
                            {
                                eprintln!("{}", error);
                            }
                        }
                    }
                }
                Err(error) => eprintln!("{}", error),
            }
        }
    });

    loop {
        let message = match socket.recv_from(&mut buffer).await {
            Ok((size, address)) => {
                clients
                    .lock()
                    .await
                    .entry(address)
                    .and_modify(|timestamp| {
                        println!("Client {} updated", address);
                        *timestamp = Instant::now()
                    })
                    .or_insert_with(|| {
                        println!("Client {} connected", address);
                        Instant::now()
                    });
                (address, buffer[..size].to_vec())
            }
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        println!("{}: {}", message.0, String::from_utf8_lossy(&message.1));
        if let Err(error) = transmitter.lock().await.send(message) {
            eprintln!("{}", error);
        }
    }
}
