#include "../include/WZE/WizardEngine.hpp" // IWYU pragma: keep

#include <cstdio> // IWYU pragma: keep

#undef main

using namespace wze;

int32_t main(void) {
    engine::init();

    timer::set_frametime(1000 / 60);

    window::open("", "", 1920, 1080);

    input::hide_cursor();
    input::set_mouse_sens(0.2);

    std::shared_ptr<gl_texture> tex =
        gl_texture::load_texture("assets/wze/icon.png");

    printf("%u\n", tex->id());

    while (engine::update()) {
        camera::set_x(camera::x() + input::mouse_x());
        camera::set_y(camera::y() - input::mouse_y());
        if (input::key(KEY_W)) {
            camera::set_z(camera::z() + 0.2f * timer::deltatime());
        } else if (input::key(KEY_S)) {
            camera::set_z(camera::z() - 0.2f * timer::deltatime());
        }
    }

    return 0;
}
