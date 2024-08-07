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
use std::net::SocketAddr;
use tokio::{
    io::{split, AsyncReadExt, AsyncWriteExt, ReadHalf, WriteHalf},
    main,
    net::{TcpListener, TcpStream},
    spawn,
    sync::{
        broadcast,
        broadcast::{Receiver, Sender},
    },
    try_join,
};

async fn reader(
    mut reader: ReadHalf<TcpStream>,
    address: SocketAddr,
    transmitter: Sender<(SocketAddr, Vec<u8>)>,
) -> Result<(), Error> {
    let mut buffer = [0; 1024];

    loop {
        let message = match reader.read(&mut buffer).await {
            Ok(0) => return Err(anyhow!("Disconnected: {}", address)),
            Ok(size) => (address, buffer[..size].to_vec()),
            Err(error) => return Err(anyhow!(error)),
        };
        print!("{}: {}", message.0, String::from_utf8_lossy(&message.1));
        if let Err(error) = transmitter.send(message) {
            return Err(anyhow!(error));
        }
    }
}

async fn writer(
    mut writer: WriteHalf<TcpStream>,
    address: SocketAddr,
    mut receiver: Receiver<(SocketAddr, Vec<u8>)>,
) -> Result<(), Error> {
    loop {
        match receiver.recv().await {
            Ok(message) => {
                if message.0 != address {
                    if let Err(error) = writer.write_all(&message.1).await {
                        return Err(anyhow!(error));
                    }
                }
            }
            Err(error) => return Err(anyhow!(error)),
        }
    }
}

#[main]
async fn main() {
    let listener = TcpListener::bind("127.0.0.1:8080").await.unwrap();
    let (transmitter, ..) = broadcast::channel::<(SocketAddr, Vec<u8>)>(100);

    loop {
        let (socket, address) = listener.accept().await.unwrap();
        let (readr, writr) = split(socket);
        let transmitter = transmitter.clone();

        spawn(async move {
            println!("Connected: {}", address);
            if let Err(error) = try_join!(
                writer(writr, address, transmitter.subscribe()),
                reader(readr, address, transmitter)
            ) {
                eprintln!("{}", error);
            }
        });
    }
}
