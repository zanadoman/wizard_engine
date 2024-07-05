#include <wizard_engine/wizard_engine.hpp>

class wizard final : wze::collider {
  private:
    std::shared_ptr<wze::sprite> _sprite =
        wze::sprite::create(0, 0, 0, 0, 100, 100, false,
                            wze::assets::create_texture(wze::assets::load_image(
                                "assets/wizard_engine/icon.png")));
    wze::key _forward;
    wze::key _backward;
    wze::key _left;
    wze::key _right;

  public:
    wizard(float x, float y, float z, float force, float mass, wze::key forward,
           wze::key backward, wze::key left, wze::key right)
        : collider(*wze::polygon::create(
                       {{-50, -50}, {-50, 50}, {50, 50}, {50, -50}}, x, y, z),
                   force, mass, 0) {
        _forward = forward;
        _backward = backward;
        _left = left;
        _right = right;
        components().push_back(_sprite);
        wze::renderer::queue().push_back(_sprite);
        entity::update_components();
    }

    void refresh() {
        if (wze::input::key(_forward)) {
            set_x(x() + wze::math::move_x(0.3 * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
            set_y(y() + wze::math::move_y(0.3 * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
        }
        if (wze::input::key(_backward)) {
            set_x(x() - wze::math::move_x(0.3 * wze::timer::delta_time(),
                                          angle() - wze::math::to_radians(90)));
            set_y(y() - wze::math::move_y(0.3 * wze::timer::delta_time(),
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
    wizard wizard1 = {-500,       0,          0,          10,        1000,
                      wze::KEY_W, wze::KEY_S, wze::KEY_A, wze::KEY_D};
    wizard wizard2 = {
        500,           0, 0, 1001, 10, wze::KEY_UP, wze::KEY_DOWN, wze::KEY_LEFT,
        wze::KEY_RIGHT};

    wze_while(true) {
        wizard1.refresh();
        wizard2.refresh();
    }
}
