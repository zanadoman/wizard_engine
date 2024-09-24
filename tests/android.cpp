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

constexpr uint8_t frame_time = 16;
constexpr float sprite_size = 100;
constexpr float movement_speed = .5;

wze_main("Wizard Engine - Android", 2400, 1080) {
    std::shared_ptr<wze::texture> const texture =
        wze::assets::create_texture(wze::assets::load_image("tests/image.png"));
    float size;
    wze::sprite player;
    wze::sprite gesture;
    std::vector<wze::sprite> fingers;

    size = sprite_size;
    player = wze::sprite(0, 0, 0, 0, size, size, false, texture,
                         std::numeric_limits<uint8_t>::max(), 0, 0);
    gesture = wze::sprite(0, 0, 0, 0, sprite_size / 4, sprite_size / 4, false,
                          texture);
    wze::timer::set_frame_time(frame_time);
    wze::input::set_text_input(true);

    wze_while(true) {
        switch (wze::input::key()) {
        case 'w':
            player.set_y(player.y() -
                         movement_speed * wze::timer::delta_time());
            break;
        case 's':
            player.set_y(player.y() +
                         movement_speed * wze::timer::delta_time());
            break;
        case 'd':
            player.set_x(player.x() +
                         movement_speed * wze::timer::delta_time());
            break;
        case 'a':
            player.set_x(player.x() -
                         movement_speed * wze::timer::delta_time());
            break;
        default:
            if (wze::input::fingers().size() == 1) {
                player.set_x(std::clamp(
                    player.x() +
                        wze::input::fingers().begin()->second.relative_x,
                    (float)wze::window::width() / -2,
                    (float)wze::window::width() / 2));
                player.set_y(std::clamp(
                    player.y() +
                        wze::input::fingers().begin()->second.relative_y,
                    (float)wze::window::height() / -2,
                    (float)wze::window::height() / 2));
            }
        }
        if ((bool)wze::input::gesture() &&
            wze::math::length(wze::input::gesture()->x - player.x(),
                              wze::input::gesture()->y - player.y()) < size) {
            size += size * wze::input::gesture()->length;
            player.set_width(size);
            player.set_height(size);
            player.set_angle(player.angle() + wze::input::gesture()->angle);
            gesture.set_x(wze::input::gesture()->x);
            gesture.set_y(wze::input::gesture()->y);
        }
        fingers.clear();
        std::for_each(
            wze::input::fingers().begin(), wze::input::fingers().end(),
            [&](std::pair<size_t, wze::finger> const& finger) -> void {
                fingers.emplace_back(finger.second.absolute_x,
                                     finger.second.absolute_y, 0, 0,
                                     sprite_size, sprite_size, false, texture);
            });
    }

    return 0;
}
