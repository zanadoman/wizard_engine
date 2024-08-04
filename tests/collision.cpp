#include <wizard_engine/wizard_engine.hpp>

constexpr float sprite_size = 100;
constexpr float movement_speed = .5;
constexpr float rotation_speed = .004;
constexpr float left = -500;
constexpr float middle = 0;
constexpr float right = 500;
constexpr float strong = 21;
constexpr float weak = 11;
constexpr float heavy = 20;
constexpr float light = 10;

class wizard final : public wze::collider {
  private:
    std::shared_ptr<wze::sprite> _sprite;
    wze::key _forward;
    wze::key _backward;
    wze::key _right;
    wze::key _left;

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
                wze::assets::load_image("assets/wizard_engine/icon.png"));

        _sprite = std::make_shared<wze::sprite>(0, 0, 0, 0, sprite_size,
                                                sprite_size, false, texture);
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
};

wze_main(1920, 1080) {
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
