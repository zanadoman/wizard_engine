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

#include <wizard_engine/wizard_engine.hpp>

constexpr char const* server_address = "127.0.0.1";
constexpr uint16_t server_port = 8080;
constexpr float sprite_size = 100;
constexpr float movement_speed = .5;

struct incoming {
    uint64_t id;
    float x;
    float y;
};

struct outgoing {
    float x;
    float y;
};

wze_main("Wizard Engine - Net", 1920, 1080) {
    wze::udp_socket<outgoing, incoming> socket(
        wze::net::resolve(server_address, server_port));
    std::shared_ptr<wze::texture> const texture = wze::assets::create_texture(
        wze::assets::load_image("./assets/tests/image.png"));
    wze::sprite player;
    incoming incoming;
    outgoing outgoing;
    std::unordered_map<uint64_t, wze::sprite> players;

    player = wze::sprite(0, 0, 0, 0, sprite_size, sprite_size, false, texture);

    wze_while(true) {
        if (wze::input::key(wze::KEY_UP) && !wze::input::key(wze::KEY_DOWN)) {
            player.set_y(player.y() -
                         movement_speed * wze::timer::delta_time());
        } else if (wze::input::key(wze::KEY_DOWN) &&
                   !wze::input::key(wze::KEY_UP)) {
            player.set_y(player.y() +
                         movement_speed * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_RIGHT) &&
            !wze::input::key(wze::KEY_LEFT)) {
            player.set_x(player.x() +
                         movement_speed * wze::timer::delta_time());
        } else if (wze::input::key(wze::KEY_LEFT) &&
                   !wze::input::key(wze::KEY_RIGHT)) {
            player.set_x(player.x() -
                         movement_speed * wze::timer::delta_time());
        }

        outgoing.x = player.x();
        outgoing.y = player.y();
        socket.send(outgoing);

        while (socket.receive(incoming)) {
            if (players.find(incoming.id) == players.end()) {
                players[incoming.id] =
                    wze::sprite(incoming.x, incoming.y, 0, 0, sprite_size,
                                sprite_size, false, texture);
            } else {
                players.at(incoming.id).set_x(incoming.x);
                players.at(incoming.id).set_y(incoming.y);
            }
        }
    }

    return 0;
}
