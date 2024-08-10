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
use std::{env::args, net::SocketAddr, sync::Arc};
use tokio::{
    io::{split, ReadHalf, WriteHalf},
    main,
    net::{TcpListener, TcpStream},
    spawn,
    sync::Mutex,
    try_join,
};

const DEFAULT_PORT: u16 = 8080;

lazy_static! {
    static ref LOBBIES: Arc<Mutex<Vec<Lobby>>> =
        Arc::new(Mutex::new(Vec::<Lobby>::new()));
}

#[repr(C)]
struct Position {
    x: f32,
    y: f32,
}

struct Player {
    address: SocketAddr,
    reader: ReadHalf<TcpStream>,
    writer: WriteHalf<TcpStream>,
}

async fn new_player(player: Player) {
    let mut lobbies = LOBBIES.lock().await;

    match lobbies.iter().position(|lobby| lobby.player1.is_some()) {
        Some(index) => {
            lobbies[index].player2 = Some(player);
            spawn(new_lobby(lobbies.remove(index)));
        }
        None => {
            lobbies.push(Lobby {
                player1: Some(player),
                player2: None,
            });
        }
    }
}

async fn read_player(reader: ReadHalf<TcpStream>) -> Result<(), Error> {
    Ok(())
}

async fn write_player(writer: WriteHalf<TcpStream>) -> Result<(), Error> {
    Ok(())
}

struct Lobby {
    player1: Option<Player>,
    player2: Option<Player>,
}

async fn new_lobby(lobby: Lobby) {
    let player1 = lobby.player1.unwrap();
    let player2 = lobby.player2.unwrap();

    if let Err(error) = try_join!(
        read_player(player1.reader),
        read_player(player2.reader),
        write_player(player1.writer),
        write_player(player2.writer)
    ) {
        eprintln!("{}", error)
    }
}

#[main]
async fn main() -> Result<(), Error> {
    let listener = TcpListener::bind(format!(
        "0.0.0.0:{}",
        args().nth(1).unwrap_or(DEFAULT_PORT.to_string())
    ))
    .await?;

    println!("Listening on {:?}", listener.local_addr()?);

    loop {
        match listener.accept().await {
            Ok((socket, address)) => {
                let (reader, writer) = split(socket);
                new_player(Player {
                    address,
                    reader,
                    writer,
                })
                .await
            }
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
    }
}
