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
    mem::size_of,
    net::{SocketAddr, SocketAddrV4},
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
const TIMEOUT: Duration = Duration::from_secs(10);

fn players() -> &'static RwLock<HashMap<SocketAddrV4, Player>> {
    static PLAYERS: OnceLock<RwLock<HashMap<SocketAddrV4, Player>>> =
        OnceLock::new();
    PLAYERS.get_or_init(|| RwLock::new(HashMap::default()))
}

#[derive(Copy, Clone)]
struct Player {
    id: u64,
    time: Instant,
    x: f32,
    y: f32,
}

impl Player {
    fn update(&mut self, incoming: &Incoming) {
        self.time = Instant::now();
        self.x = incoming.x;
        self.y = incoming.y;
    }
}

impl From<(&SocketAddrV4, &Incoming)> for Player {
    fn from((address, incoming): (&SocketAddrV4, &Incoming)) -> Self {
        let mut hasher = DefaultHasher::new();
        address.hash(&mut hasher);
        Self {
            id: hasher.finish(),
            time: Instant::now(),
            x: incoming.x,
            y: incoming.y,
        }
    }
}

#[repr(C)]
#[derive(Copy, Clone, AsBytes, FromBytes, FromZeroes)]
struct Incoming {
    x: f32,
    y: f32,
}

#[repr(C)]
#[derive(Copy, Clone, AsBytes, FromBytes, FromZeroes)]
struct Outgoing {
    id: u64,
    x: f32,
    y: f32,
}

impl From<&Player> for Outgoing {
    fn from(player: &Player) -> Self {
        Self {
            id: player.id,
            x: player.x,
            y: player.y,
        }
    }
}

async fn receiver(
    socket: &Arc<UdpSocket>,
    sender: &Sender<Player>,
) -> Result<(), Error> {
    let mut buffer = [0; size_of::<Incoming>()];
    loop {
        let (size, address) = match socket.recv_from(&mut buffer).await {
            Ok(message) => message,
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        let address = match address {
            SocketAddr::V4(address) => address,
            SocketAddr::V6(address) => {
                eprintln!("Invalid address from [{}]", address);
                continue;
            }
        };
        let incoming = match Incoming::read_from(&buffer[..size]) {
            Some(incoming) => incoming,
            None => {
                eprintln!("Invalid data from [{}]", address);
                continue;
            }
        };
        let player = *players()
            .write()
            .await
            .entry(address)
            .and_modify(|player| player.update(&incoming))
            .or_insert_with(|| {
                println!("Player [{}] connected", address);
                Player::from((&address, &incoming))
            });
        if let Err(error) = sender.send(player) {
            eprintln!("{}", error)
        }
    }
}

async fn sender(
    socket: &Arc<UdpSocket>,
    mut receiver: Receiver<Player>,
) -> Result<(), Error> {
    loop {
        let player = match receiver.recv().await {
            Ok(player) => player,
            Err(error) => {
                eprintln!("{}", error);
                continue;
            }
        };
        let mut outgoing = Outgoing::from(&player);
        for (address, player) in players().read().await.iter() {
            outgoing.id = outgoing.id.wrapping_sub(player.id);
            if let Err(error) =
                socket.send_to(&outgoing.as_bytes(), address).await
            {
                eprintln!("{}", error)
            }
            outgoing.id = outgoing.id.wrapping_add(player.id);
        }
    }
}

async fn timeout() -> Result<(), Error> {
    loop {
        sleep(Duration::from_secs(1)).await;
        players().write().await.retain(|address, player| {
            let alive = Instant::now().duration_since(player.time) < TIMEOUT;
            if !alive {
                println!("Player [{}] disconnected", address)
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
    let channel = channel(u8::MAX.into()).0;

    println!("Listening on {:?}", socket.local_addr()?);

    try_join!(
        receiver(&socket, &channel),
        sender(&socket, channel.subscribe()),
        timeout()
    )?;
    Ok(())
}
