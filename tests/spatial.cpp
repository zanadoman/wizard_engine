#include <cstdlib>
#include <ctime>
#include <wizard_engine/wizard_engine.hpp>

#define RANDOM(min, max) (float)(rand() % (max - min) + min)

wze_main(1920, 1080) {
    std::shared_ptr<wze::texture> texture;
    std::vector<wze::sprite> sprites;
    wze::speaker speaker;

    texture = wze::assets::create_texture(
        wze::assets::load_image("./assets/wizard_engine/icon.png"));

    srand(time(nullptr));
    for (size_t i = 0; i != 1000; ++i) {
        sprites.push_back(wze::sprite(
            RANDOM(-1000, 1000), RANDOM(-1000, 1000), RANDOM(-1000, 1000),
            wze::math::to_radians(RANDOM(0, 360)), 100, 100, true, texture));
    }

    speaker =
        wze::speaker(wze::assets::load_sound("./assets/test/light_blast_5.wav"),
                     127, 2000, true, 1500, 0);
    speaker.play(0, 10000);

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
        if (wze::input::key(wze::KEY_MOUSE_LEFT)) {
            wze::camera::set_angle(wze::camera::angle() -
                                   0.001f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_MOUSE_RIGHT)) {
            wze::camera::set_angle(wze::camera::angle() +
                                   0.001f * wze::timer::delta_time());
        }
    }

    return 0;
}
