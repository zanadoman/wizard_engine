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

use tokio::io::{AsyncReadExt, AsyncWriteExt};

#[tokio::main]
async fn main() {
    let listener = tokio::net::TcpListener::bind("127.0.0.1:8080")
        .await
        .unwrap();
    let clients = std::sync::Arc::new(
        tokio::sync::Mutex::new(std::collections::HashMap::<
            std::net::SocketAddr,
            tokio::net::TcpStream,
        >::new()),
    );

    loop {
        let (socket, address) = listener.accept().await.unwrap();
        let clients = clients.clone();
        println!("Connected: {}", address);

        tokio::spawn(async move {
            let mut buffer = [0; 1024];
            let mut buffer_size: usize;
            clients.lock().await.insert(address, socket);

            loop {
                buffer_size = match clients
                    .lock()
                    .await
                    .get_mut(&address)
                    .unwrap()
                    .read(&mut buffer)
                    .await
                {
                    Ok(0) => break,
                    Ok(v) => v,
                    Err(e) => {
                        eprintln!("{}: {}", address, e);
                        break;
                    }
                };

                match std::str::from_utf8(&buffer[0..buffer_size]) {
                    Ok(v) => print!("{}: {}", address, v),
                    Err(e) => eprintln!("{}: {}", address, e),
                }

                for client in clients.lock().await.iter_mut() {
                    if *client.0 != address {
                        if let Err(e) =
                            client.1.write_all(&buffer[0..buffer_size]).await
                        {
                            eprintln!("{}: {}", address, e);
                        }
                    }
                }
            }

            clients.lock().await.remove(&address);
            println!("Disconnected: {}", address);
        });
    }
}
