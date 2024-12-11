use std::{
  collections::HashMap,
  net::{IpAddr, Ipv4Addr, SocketAddr},
  sync::OnceLock,
};

use anyhow::Result;
use clap::Parser;
use tokio::{
  main,
  net::UdpSocket,
  select,
  signal::ctrl_c,
  sync::{
    broadcast::{channel, Receiver, Sender},
    RwLock,
  },
  time::{sleep, Duration, Instant},
};
use tracing::{error, info, instrument, level_filters::LevelFilter, Level};
use tracing_subscriber::{
  fmt::{format::FmtSpan, layer},
  layer::SubscriberExt,
  registry,
  util::SubscriberInitExt,
};

#[derive(Parser)]
#[command(version, about = "Simple UDP broadcast server for testing purposes")]
struct Args {
  /// IPv4 address of the server
  #[arg(short, long, default_value_t = Ipv4Addr::new(127, 0, 0, 1))]
  address: Ipv4Addr,
  /// Port to listen on
  #[arg(short, long, default_value_t = 3000)]
  port: u16,
  /// Client timeout duration in seconds
  #[arg(short, long, default_value_t = 10)]
  timeout: u64,
  /// Maximum message size
  #[arg(long, default_value_t = 1024)]
  buffer_size: usize,
  /// Tracing level
  #[arg(long, default_value_t = Level::INFO)]
  log_level: Level,
}

impl Args {
  #[instrument(level = "trace")]
  fn once() -> &'static Args {
    static ARGS: OnceLock<Args> = OnceLock::new();
    ARGS.get_or_init(Args::parse)
  }
}

#[instrument(level = "trace")]
fn clients() -> &'static RwLock<HashMap<SocketAddr, Instant>> {
  static CLIENTS: OnceLock<RwLock<HashMap<SocketAddr, Instant>>> =
    OnceLock::new();
  CLIENTS.get_or_init(|| RwLock::new(HashMap::default()))
}

#[instrument(level = "debug", skip(socket, sender))]
async fn input_handler(
  socket: &UdpSocket,
  sender: Sender<Vec<u8>>,
) -> Result<()> {
  let mut buffer = vec![0; Args::once().buffer_size];
  loop {
    let (size, address) = socket.recv_from(&mut buffer).await?;
    clients()
      .write()
      .await
      .entry(address)
      .and_modify(|timestamp| {
        info!("{address} updated");
        *timestamp = Instant::now()
      })
      .or_insert_with(|| {
        info!("{address} connected");
        Instant::now()
      });
    let message = buffer[..size].to_vec();
    info!("{address}: {}", String::from_utf8_lossy(&message));
    sender.send(message)?;
  }
}

#[instrument(level = "debug", skip(socket, receiver))]
async fn output_handler(
  socket: &UdpSocket,
  mut receiver: Receiver<Vec<u8>>,
) -> Result<()> {
  loop {
    let message = receiver.recv().await?;
    for address in clients().read().await.keys() {
      socket.send_to(&message, address).await?;
    }
  }
}

#[instrument(level = "debug")]
async fn timeout_handler() -> Result<()> {
  loop {
    sleep(Duration::from_secs(1)).await;
    clients().write().await.retain(|address, timestamp| {
      let alive = Instant::now().duration_since(*timestamp)
        <= Duration::from_secs(Args::once().timeout);
      if !alive {
        error!("{address} disconnected")
      }
      alive
    })
  }
}

#[main]
async fn main() -> Result<()> {
  registry()
    .with(LevelFilter::from(Args::once().log_level))
    .with(layer().with_span_events(FmtSpan::NEW | FmtSpan::CLOSE))
    .init();
  let socket = UdpSocket::bind(SocketAddr::new(
    IpAddr::V4(Args::once().address),
    Args::once().port,
  ))
  .await?;
  let channel = channel(u8::MAX.into()).0;
  let receiver = channel.subscribe();
  info!("listening on {}", socket.local_addr()?);
  select! {
    result = input_handler(&socket, channel) => result,
    result = output_handler(&socket, receiver) => result,
    result = timeout_handler() => result,
    result = ctrl_c() => Ok(result?)
  }
  .map_err(|error| {
    error!("{error}");
    error
  })
}
