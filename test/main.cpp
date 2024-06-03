#include "WZE/WizardEngine.hpp" // IWYU pragma: keep
#include <iostream>

#undef main

class box : wze::renderable {
    private:
    float_t _x;
    float_t _y;
    float_t _z;
    float_t _angle;
    wze::texture _texture;

    public:
    float_t x() const override {
        return _x;
    }

    float_t y() const override {
        return _y;
    }

    float_t z() const override {
        return _z;
    }

    float_t width() const override {
        return 100.f;
    }

    float_t height() const override {
        return 100.f;
    }

    float_t angle() const override {
        return _angle;
    }

    float_t flip() const override {
        return wze::FLIP_NONE;
    }

    uint8_t color_r() const override {
        return 255;
    }

    uint8_t color_g() const override {
        return 255;
    }

    uint8_t color_b() const override {
        return 255;
    }

    uint8_t color_a() const override {
        return 255;
    }

    bool visible() const override {
        return true;
    }

    wze::texture const& texture() const override {
        return _texture;
    }

    uint8_t priority() const override {
        return 255;
    }

    bool projectable() const override {
        return true;
    }

    box(float_t x, float_t y, float_t z, float_t angle, wze::texture const& texture) {
        _x = x;
        _y = y;
        _z = z;
        _angle = angle;
        _texture = texture;
    }
};

int32_t main() {
    wze::engine::init(1920, 1080);

    wze::timer::set_delay(1000 / 60);

    box b1(0.f, 0.f, 0.5f, 45.f * wze::rad, wze::assets::load_texture("assets/wze/icon.png"));
    // box b2(0.f, 0.f, 1.f, -0.f * wze::rad, wze::assets::load_texture("assets/wze/icon.png"));
    // box b3(0.f, 0.f, 1.5f, -0.f * wze::rad, wze::assets::load_texture("assets/wze/icon.png"));

    while (wze::engine::update()) {
        if (wze::input::keys(wze::KEY_MOUSE_MWU)) {
            wze::camera::set_angle(wze::camera::angle() + 0.1f);
        }
        if (wze::input::keys(wze::KEY_MOUSE_MWD)) {
            wze::camera::set_angle(wze::camera::angle() - 0.1f);
        }
        if (wze::input::keys(wze::KEY_W)) {
            wze::camera::set_z(wze::camera::z() + 0.02f);
        }
        if (wze::input::keys(wze::KEY_S)) {
            wze::camera::set_z(wze::camera::z() - 0.02f);
        }
        if (wze::input::keys(wze::KEY_D)) {
            wze::camera::set_x(wze::camera::x() + 10.f);
        }
        if (wze::input::keys(wze::KEY_A)) {
            wze::camera::set_x(wze::camera::x() - 10.f);
        }
        // std::cout << wze::input::cursor_x() << '\n';
        // std::cout << wze::input::cursor_y() << '\n';
    }

    return 0;
}
