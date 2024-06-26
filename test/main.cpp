#include <wizard_engine/wizard_engine.hpp>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <ostream>

int32_t random(int32_t min, int32_t max) {
    return min + rand() % (max - min);
}

std::ostream& operator<<(std::ostream& ostream,
                         std::pair<float_t, float_t> const& pair) {
    return ostream << std::get<0>(pair) << ' ' << std::get<1>(pair);
}

WZE_MAIN(1920, 1080) {
    std::unique_ptr<wze::animator> animator;
    std::vector<std::shared_ptr<wze::sprite>> sprites;

    srand(time(nullptr));

    animator = wze::animator::create(
        {}, {wze::assets::create_texture(
                 wze::assets::load_image("assets/test/run1.png")),
             wze::assets::create_texture(
                 wze::assets::load_image("assets/test/run2.png")),
             wze::assets::create_texture(
                 wze::assets::load_image("assets/test/run3.png")),
             wze::assets::create_texture(
                 wze::assets::load_image("assets/test/run4.png")),
             wze::assets::create_texture(
                 wze::assets::load_image("assets/test/run5.png")),
             wze::assets::create_texture(
                 wze::assets::load_image("assets/test/run6.png"))});

    for (size_t i = 0; i < 10000; ++i) {
        sprites.push_back(wze::sprite::create(
            random(-2000, 2000), random(-2000, 2000), random(-2000, 2000),
            random(0, 360), 100, 100, true));
        wze::render::instances().push_back(sprites.back());
        animator->instances().push_back(sprites.back());
    }

    WZE_LOOP {
        if (wze::input::keys(wze::KEY_W)) {
            wze::camera::set_z(wze::camera::z() +
                               0.5f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_S)) {
            wze::camera::set_z(wze::camera::z() -
                               0.5f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_D)) {
            wze::camera::set_x(wze::camera::x() +
                               0.5f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_A)) {
            wze::camera::set_x(wze::camera::x() -
                               0.5f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_SPACE)) {
            wze::camera::set_y(wze::camera::y() -
                               0.5f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_LSHIFT)) {
            wze::camera::set_y(wze::camera::y() +
                               0.5f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_MOUSE_MWU)) {
            wze::camera::set_angle(wze::camera::angle() +
                                   0.05f * wze::timer::delta_time());
        }
        if (wze::input::keys(wze::KEY_MOUSE_MWD)) {
            wze::camera::set_angle(wze::camera::angle() -
                                   0.05f * wze::timer::delta_time());
        }

        animator->update();

        std::cout << wze::input::cursor_spatial_xy(500.f) << std::endl;
        printf("%u\n", wze::timer::delta_time());
    }
}
