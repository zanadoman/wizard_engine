#include <cstdlib>
#include <ctime>
#include <wizard_engine/wizard_engine.hpp>

#define RANDOM(min, max) (float)(rand() % (max - min) + min)

wze_main(1920, 1080) {
    std::shared_ptr<wze::texture> texture;
    std::vector<wze::sprite> sprites;

    texture = wze::assets::create_texture(
        wze::assets::load_image("./assets/wizard_engine/icon.png"));

    srand(time(nullptr));
    for (size_t i = 0; i != 1000; ++i) {
        sprites.emplace_back();
        sprites.back() = {RANDOM(-1000, 1000),
                          RANDOM(-1000, 1000),
                          RANDOM(-1000, 1000),
                          wze::math::to_radians(RANDOM(0, 360)),
                          100,
                          100,
                          true,
                          texture};
    }

    wze_while(true) {
        if (wze::input::key(wze::KEY_W)) {
            wze::camera::set_z(wze::camera::z() +
                               0.1f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_S)) {
            wze::camera::set_z(wze::camera::z() -
                               0.1f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_A)) {
            wze::camera::set_x(wze::camera::x() -
                               0.1f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_D)) {
            wze::camera::set_x(wze::camera::x() +
                               0.1f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_SPACE)) {
            wze::camera::set_y(wze::camera::y() -
                               0.1f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_LSHIFT)) {
            wze::camera::set_y(wze::camera::y() +
                               0.1f * wze::timer::delta_time());
        }
    }

    return 0;
}
