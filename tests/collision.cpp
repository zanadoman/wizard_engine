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

constexpr float sprite_size = 100;
constexpr float movement_speed = .5;
constexpr float rotation_speed = .004;
constexpr float left = -500;
constexpr float middle = 0;
constexpr float right = 500;
constexpr float strong = 21;
constexpr float weak = 11;
constexpr float light = 10;
constexpr float heavy = 20;

class wizard final : private wze::collider {
  public:
    wizard(float x, float y, float angle, float force, float mass,
           wze::key forward, wze::key backward, wze::key right, wze::key left)
        : collider(wze::polygon({{-sprite_size / 2, sprite_size / 2},
                                 {-sprite_size / 2, -sprite_size / 2},
                                 {sprite_size / 2, -sprite_size / 2},
                                 {sprite_size / 2, sprite_size / 2}},
                                x, y, angle),
                   force, mass, 0) {
        static std::shared_ptr<wze::texture> const texture =
            wze::assets::create_texture(
                wze::assets::load_image("tests/image.png"));

        _sprite = std::make_shared<wze::sprite>(
            0, 0, 0, 0, sprite_size, sprite_size, false, texture,
            wze::math::random<uint8_t>(std::numeric_limits<uint8_t>::max() / 4,
                                       std::numeric_limits<uint8_t>::max()),
            wze::math::random<uint8_t>(std::numeric_limits<uint8_t>::max() / 4,
                                       std::numeric_limits<uint8_t>::max()),
            wze::math::random<uint8_t>(std::numeric_limits<uint8_t>::max() / 4,
                                       std::numeric_limits<uint8_t>::max()));
        _forward = forward;
        _backward = backward;
        _right = right;
        _left = left;
        components().push_back(_sprite);
        recompose();
    }

    void update() {
        if (wze::input::key(_forward) && !wze::input::key(_backward)) {
            set_x(x() + wze::math::transform_x(0, -movement_speed,
                                               transformation_matrix()) *
                            wze::timer::delta_time());
            set_y(y() + wze::math::transform_y(0, -movement_speed,
                                               transformation_matrix()) *
                            wze::timer::delta_time());
        } else if (wze::input::key(_backward) && !wze::input::key(_forward)) {
            set_x(x() + wze::math::transform_x(0, movement_speed,
                                               transformation_matrix()) *
                            wze::timer::delta_time());
            set_y(y() + wze::math::transform_y(0, movement_speed,
                                               transformation_matrix()) *
                            wze::timer::delta_time());
        }
        if (wze::input::key(_right) && !wze::input::key(_left)) {
            set_angle(angle() + rotation_speed * wze::timer::delta_time());
        } else if (wze::input::key(_left) && !wze::input::key(_right)) {
            set_angle(angle() - rotation_speed * wze::timer::delta_time());
        }
    }

  private:
    std::shared_ptr<wze::sprite> _sprite;
    wze::key _forward;
    wze::key _backward;
    wze::key _right;
    wze::key _left;
};

wze_main("Wizard Engine - Collision", 1920, 1080) {
    wizard wizard_left(left, 0, 0, strong, light, wze::KEY_W, wze::KEY_S,
                       wze::KEY_D, wze::KEY_A);
    wizard const wizard_middle(middle, 0, 0, weak, light, wze::KEY_UNKNOWN,
                               wze::KEY_UNKNOWN, wze::KEY_UNKNOWN,
                               wze::KEY_UNKNOWN);
    wizard wizard_right(right, 0, 0, strong, heavy, wze::KEY_UP, wze::KEY_DOWN,
                        wze::KEY_RIGHT, wze::KEY_LEFT);

    wze_while(true) {
        wizard_left.update();
        wizard_right.update();
    }

    return 0;
}
