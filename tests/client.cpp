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
constexpr uint64_t timeout = 10000;

struct incoming {
    uint64_t id;
    float x;
    float y;
};

struct outgoing {
    float x;
    float y;
};

class player : private wze::entity {
  public:
    explicit player() : player({0, 0, 0}) {}

    explicit player(incoming const& incoming)
        : entity({}, incoming.x, incoming.y) {
        static std::shared_ptr<wze::texture> const texture =
            wze::assets::create_texture(
                wze::assets::load_image("./tests/image.png"));

        _id = incoming.id;
        _time = wze::timer::current_time();
        _sprite = std::make_shared<wze::sprite>(0, 0, 0, 0, sprite_size,
                                                sprite_size, false, texture);
        components().push_back(_sprite);
        recompose();
    }

    [[nodiscard]] uint64_t id() const {
        return _id;
    }

    [[nodiscard]] uint64_t time() const {
        return _time;
    }

    bool update() {
        bool moved;

        moved = false;
        if (wze::input::key(wze::KEY_UP) && !wze::input::key(wze::KEY_DOWN)) {
            set_y(y() - movement_speed * wze::timer::delta_time());
            moved = true;
        } else if (wze::input::key(wze::KEY_DOWN) &&
                   !wze::input::key(wze::KEY_UP)) {
            set_y(y() + movement_speed * wze::timer::delta_time());
            moved = true;
        }
        if (wze::input::key(wze::KEY_RIGHT) &&
            !wze::input::key(wze::KEY_LEFT)) {
            set_x(x() + movement_speed * wze::timer::delta_time());
            moved = true;
        } else if (wze::input::key(wze::KEY_LEFT) &&
                   !wze::input::key(wze::KEY_RIGHT)) {
            set_x(x() - movement_speed * wze::timer::delta_time());
            moved = true;
        }

        return moved;
    }

    void update(incoming const& incoming) {
        if (incoming.id == id()) {
            _time = wze::timer::current_time();
            set_x(incoming.x);
            set_y(incoming.y);
        }
    }

    explicit operator outgoing() const {
        return {x(), y()};
    }

  private:
    uint64_t _id;
    uint64_t _time;
    std::shared_ptr<wze::sprite> _sprite;
};

wze_main("Wizard Engine - Net", 1920, 1080) {
    wze::udp_socket<outgoing, incoming> socket(
        wze::net::resolve(server_address, server_port));
    incoming incoming;
    player player;
    std::unordered_map<uint64_t, class player> players;
    std::unordered_map<uint64_t, class player>::iterator iterator;

    wze::timer::set_frame_time(4);

    wze_while(true) {
        if (player.update()) {
            socket.send((outgoing)player);
        }
        while (socket.receive(incoming)) {
            if (incoming.id == player.id()) {
                player.update(incoming);
            } else {
                iterator = players.find(incoming.id);
                if (iterator == players.end()) {
                    players.emplace(incoming.id, incoming);
                } else {
                    iterator->second.update(incoming);
                }
            }
        }
        for (iterator = players.begin(); iterator != players.end();) {
            if (iterator->second.time() + timeout <
                wze::timer::current_time()) {
                iterator = players.erase(iterator);
            } else {
                ++iterator;
            }
        }
    }

    return 0;
}
