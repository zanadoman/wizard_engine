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
use bytemuck::{bytes_of, from_bytes, Pod, Zeroable};
use lazy_static::lazy_static;
use std::{env::args, mem::size_of, net::SocketAddr, sync::Arc};
use tokio::{
    io::{split, AsyncReadExt, AsyncWriteExt, ReadHalf, WriteHalf},
    main,
    net::{TcpListener, TcpStream},
    spawn,
    sync::broadcast::{channel, Receiver, Sender},
    sync::Mutex,
    try_join,
};

const DEFAULT_PORT: u16 = 8080;

lazy_static! {
    static ref LOBBIES: Arc<Mutex<Vec<Lobby>>> =
        Arc::new(Mutex::new(Vec::<Lobby>::new()));
}

#[repr(C)]
#[derive(Debug, Copy, Clone, Pod, Zeroable)]
struct Position {
    x: f32,
    y: f32,
}

#[repr(C)]
#[derive(Debug, Copy, Clone, Pod, Zeroable)]
struct GameState {
    player1: Position,
    player2: Position,
    ball: Position,
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

/* Completed */
async fn receive_state(
    state: Arc<Mutex<Position>>,
    mut socket: ReadHalf<TcpStream>,
) -> Result<(), Error> {
    let mut buffer = [0; size_of::<Position>()];

    loop {
        match socket.read(&mut buffer).await {
            Ok(0) => return Err(anyhow!("{:?}", socket)),
            Ok(..) => *state.lock().await = *from_bytes(&buffer),
            Err(error) => return Err(error.into()),
        }
    }
}

/* Completed */
async fn send_state(
    mut receiver: Receiver<GameState>,
    mut socket: WriteHalf<TcpStream>,
) -> Result<(), Error> {
    loop {
        socket.write_all(bytes_of(&receiver.recv().await?)).await?
    }
}

struct Lobby {
    player1: Option<Player>,
    player2: Option<Player>,
}

async fn new_lobby(lobby: Lobby) {
    let player1 = lobby.player1.unwrap();
    let player1_state = Arc::new(Mutex::new(Position { x: 0., y: 0. }));
    let player2 = lobby.player2.unwrap();
    let player2_state = Arc::new(Mutex::new(Position { x: 0., y: 0. }));
    let transmitter = channel(u8::MAX.into()).0;

    if let Err(error) = try_join!(
        receive_state(player1_state.clone(), player1.reader),
        receive_state(player2_state.clone(), player2.reader),
        send_state(transmitter.subscribe(), player1.writer),
        send_state(transmitter.subscribe(), player2.writer),
        update_lobby(
            player1_state.clone(),
            player2_state.clone(),
            transmitter.clone()
        )
    ) {
        eprintln!("{}", error)
    }
}

async fn update_lobby(
    player1_state: Arc<Mutex<Position>>,
    player2_state: Arc<Mutex<Position>>,
    transmitter: Sender<GameState>,
) -> Result<(), Error> {
    let mut state = GameState {
        player1: Position { x: 0., y: 0. },
        player2: Position { x: 0., y: 0. },
        ball: Position { x: 0., y: 0. },
    };

    loop {
        state.player1 = player1_state.lock().await.clone();
        state.player2 = player2_state.lock().await.clone();
        transmitter.send(state)?;
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
