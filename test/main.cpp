#include "WZE/WizardEngine.hpp" // IWYU pragma: keep

#undef main

int32_t main() {
    wze::engine::init(1920, 1080);

    wze::timer::set_frame_time(1000 / 60);

    wze::texture texture = wze::assets::create_texture(
        wze::assets::load_image("assets/wze/icon.png"));

    std::unique_ptr<wze::sprite> s1 =
        wze::sprite::create(0.f, 0.f, 250.f, 0.f, 100.f, 100.f, true, texture);
    std::shared_ptr<wze::sprite> s2 =
        wze::sprite::create(0.f, 0.f, 500.f, 0.f, 100.f, 100.f, true, texture);
    std::unique_ptr<wze::sprite> s3 =
        wze::sprite::create(0.f, 0.f, 750.f, 0.f, 100.f, 100.f, true, texture);

    std::unique_ptr<wze::animator> anim = wze::animator::create(
        s2, {
                wze::assets::create_texture(
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
                    wze::assets::load_image("assets/test/run6.png"))
            });

    while (wze::engine::update()) {
        if (wze::input::keys(wze::KEY_MOUSE_MWU)) {
            wze::camera::set_angle(wze::camera::angle() + 0.1f);
        }
        if (wze::input::keys(wze::KEY_MOUSE_MWD)) {
            wze::camera::set_angle(wze::camera::angle() - 0.1f);
        }
        if (wze::input::keys(wze::KEY_W)) {
            wze::camera::set_z(wze::camera::z() + 10.f);
        }
        if (wze::input::keys(wze::KEY_S)) {
            wze::camera::set_z(wze::camera::z() - 10.f);
        }
        if (wze::input::keys(wze::KEY_D)) {
            wze::camera::set_x(wze::camera::x() + 10.f);
        }
        if (wze::input::keys(wze::KEY_A)) {
            wze::camera::set_x(wze::camera::x() - 10.f);
        }
        if (wze::input::keys(wze::KEY_SPACE)) {
            wze::camera::set_y(wze::camera::y() - 10.f);
        }
        if (wze::input::keys(wze::KEY_LSHIFT)) {
            wze::camera::set_y(wze::camera::y() + 10.f);
        }
        // std::cout << wze::input::cursor_x() << '\n';
        // std::cout << wze::input::cursor_y() << '\n';

        anim->animate();
    }

    return 0;
}
