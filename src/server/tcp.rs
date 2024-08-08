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
use std::{env::args, net::SocketAddr};
use tokio::{
    io::{split, AsyncReadExt, AsyncWriteExt, ReadHalf, WriteHalf},
    main,
    net::{TcpListener, TcpStream},
    spawn,
    sync::broadcast::{channel, Receiver, Sender},
    try_join,
};

const DEFAULT_PORT: u16 = 8080;
const BUFFER_SIZE: usize = 1024;

async fn input(
    address: SocketAddr,
    mut reader: ReadHalf<TcpStream>,
    transmitter: Sender<(SocketAddr, Vec<u8>)>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER_SIZE];

    loop {
        let (sender, content) = match reader.read(&mut buffer).await {
            Ok(0) => return Err(anyhow!("Client {} disconnected", address)),
            Ok(size) => (address, buffer[..size].to_vec()),
            Err(error) => return Err(error.into()),
        };
        println!("{}: {}", sender, String::from_utf8_lossy(&content));
        transmitter.send((sender, content))?;
    }
}

async fn output(
    address: SocketAddr,
    mut writer: WriteHalf<TcpStream>,
    mut receiver: Receiver<(SocketAddr, Vec<u8>)>,
) -> Result<(), Error> {
    loop {
        let (sender, content) = match receiver.recv().await {
            Ok(message) => message,
            Err(error) => return Err(error.into()),
        };
        if sender != address {
            writer.write_all(&content).await?
        }
    }
}

#[main]
async fn main() -> Result<(), Error> {
    let listener = TcpListener::bind(format!(
        "0.0.0.0:{}",
        args().nth(1).unwrap_or(DEFAULT_PORT.to_string())
    ))
    .await?;
    let transmitter = channel::<(SocketAddr, Vec<u8>)>(u8::MAX.into()).0;

    println!("Listening on {:?}", listener.local_addr()?);

    loop {
        let (socket, address) = match listener.accept().await {
            Ok(connection) => connection,
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        let (reader, writer) = split(socket);
        let transmitter = transmitter.clone();

        spawn(async move {
            println!("Client {} connected", address);
            if let Err(error) = try_join!(
                input(address, reader, transmitter.clone()),
                output(address, writer, transmitter.subscribe())
            ) {
                eprintln!("{}", error)
            }
        });
    }
}
