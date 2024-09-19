use std::{
    hash::{DefaultHasher, Hash, Hasher},
    net::SocketAddrV4,
};
use tokio::time::Instant;
use zerocopy::{AsBytes, FromBytes, FromZeroes};

#[derive(Copy, Clone)]
pub struct Player {
    id: u64,
    time: Instant,
    x: f32,
    y: f32,
}

impl Player {
    pub fn id(&self) -> u64 {
        self.id
    }

    pub fn time(&self) -> Instant {
        self.time
    }

    pub fn update(&mut self, incoming: &Incoming) {
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
#[derive(AsBytes, FromBytes, FromZeroes)]
pub struct Incoming {
    x: f32,
    y: f32,
}

#[repr(C)]
#[derive(AsBytes, FromBytes, FromZeroes)]
pub struct Outgoing {
    id: u64,
    x: f32,
    y: f32,
}

impl Outgoing {
    pub fn id(&self) -> u64 {
        self.id
    }

    pub fn set_id(&mut self, id: &u64) {
        self.id = *id
    }
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
