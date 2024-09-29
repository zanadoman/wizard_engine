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
use zerocopy::FromBytes;

const DEFAULT_PORT: u16 = 8080;
const BUFFER_SIZE: usize = 1024;

async fn input(
    address: &SocketAddr,
    socket: &mut ReadHalf<TcpStream>,
    sender: &Sender<[u8; BUFFER_SIZE]>,
) -> Result<(), Error> {
    let mut buffer = [0; BUFFER_SIZE];
    loop {
        let size = match socket.read(&mut buffer).await {
            Ok(0) => return Err(anyhow!("Client {} disconnected", &address)),
            Ok(size) => size,
            Err(error) => return Err(error.into()),
        };
        let message = match <[u8; BUFFER_SIZE]>::read_from(&buffer[..size]) {
            Some(message) => message,
            None => {
                eprintln!("Invalid data from {}", &address);
                continue;
            }
        };
        println!("{}: {}", &address, &String::from_utf8_lossy(&message));
        if let Err(error) = sender.send(message) {
            eprintln!("{}", &error)
        }
    }
}

async fn output(
    socket: &mut WriteHalf<TcpStream>,
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
        socket.write_all(&message).await?
    }
}

#[main]
async fn main() -> Result<(), Error> {
    let listener = TcpListener::bind(format!(
        "0.0.0.0:{}",
        &args().nth(1).unwrap_or(DEFAULT_PORT.to_string())
    ))
    .await?;
    let channel = channel(u8::MAX.into()).0;
    println!("Listening on {:?}", &listener.local_addr()?);
    loop {
        let (socket, address) = match listener.accept().await {
            Ok(connection) => connection,
            Err(error) => {
                eprintln!("{}", &error);
                continue;
            }
        };
        let (mut reader, mut writer) = split(socket);
        let sender = channel.clone();
        let mut receiver = channel.subscribe();
        spawn(async move {
            println!("Client {} connected", &address);
            if let Err(error) = try_join!(
                input(&address, &mut reader, &sender),
                output(&mut writer, &mut receiver)
            ) {
                eprintln!("{}", &error)
            }
        });
    }
}
