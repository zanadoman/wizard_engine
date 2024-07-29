#include <wizard_engine/wizard_engine.hpp>

class wizard final : wze::collider {
  private:
    std::shared_ptr<wze::sprite> _sprite;
    wze::key _forward;
    wze::key _backward;
    wze::key _left;
    wze::key _right;

  public:
    wizard(float x, float y, float z, float force, float mass, wze::key forward,
           wze::key backward, wze::key left, wze::key right)
        : collider(wze::polygon({{-50, -50}, {-50, 50}, {50, 50}, {50, -50}}, x,
                                y, z),
                   force, mass, 0) {
        _sprite = std::shared_ptr<wze::sprite>(
            new wze::sprite(0, 0, 0, 0, 100, 100, false,
                            wze::assets::create_texture(wze::assets::load_image(
                                "assets/wizard_engine/icon.png"))));
        _forward = forward;
        _backward = backward;
        _left = left;
        _right = right;
        components().push_back(_sprite);
        entity::recompose();
    }

    void update() {
        if (wze::input::key(_forward)) {
            set_x(x() + wze::math::move_x(0.3f * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
            set_y(y() + wze::math::move_y(0.3f * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
        }
        if (wze::input::key(_backward)) {
            set_x(x() - wze::math::move_x(0.3f * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
            set_y(y() - wze::math::move_y(0.3f * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
        }
        if (wze::input::key(_left)) {
            set_angle(angle() - 0.003f * wze::timer::delta_time());
        }
        if (wze::input::key(_right)) {
            set_angle(angle() + 0.003f * wze::timer::delta_time());
        }
    }
};

wze_main(1920, 1080) {
    wze::speaker s(wze::assets::load_sound("./assets/test/music.wav"));
    s.play();

    wizard wizard1 = {-500,       0,          0,          21,        10,
                      wze::KEY_W, wze::KEY_S, wze::KEY_A, wze::KEY_D};

    wizard wizard2 = {500,
                      0,
                      wze::math::to_radians(270),
                      21,
                      10,
                      wze::KEY_UP,
                      wze::KEY_DOWN,
                      wze::KEY_LEFT,
                      wze::KEY_RIGHT};

    wizard wizard3 = {0,
                      0,
                      0,
                      10,
                      10,
                      wze::KEY_UNKNOWN,
                      wze::KEY_UNKNOWN,
                      wze::KEY_UNKNOWN,
                      wze::KEY_UNKNOWN};

    wze_while(true) {
        wizard1.update();
        wizard2.update();
    }

    return 0;
}
