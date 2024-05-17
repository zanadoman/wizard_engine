#include "../include/WZE/WizardEngine.hpp" // IWYU pragma: keep

#include <cstdio> // IWYU pragma: keep

#undef main

using namespace wze;

auto main() -> int32_t {
    engine::init();

    timer::set_frametime(1000 / 60);

    window::open("", "", 16.0 / 9.0);

    input::hide_cursor();
    input::set_mouse_sens(0.2);

    texture tex = load_texture("assets/wze/icon.png");

    GLdouble vertex[] = {-5, -5, -50};
    GLdouble screen[2];

    while (engine::update()) {
        camera::set_x(camera::x() + input::cursor_x());
        camera::set_y(camera::y() + input::cursor_y());

        if (input::key(KEY_W)) {
            camera::set_z(camera::z() + 0.2 * timer::deltatime());
        } else if (input::key(KEY_S)) {
            camera::set_z(camera::z() - 0.2 * timer::deltatime());
        }

        render::rel_projection(vertex, screen);;

        printf("%f %f\n", screen[0], screen[1]);
        // printf("%f, %f\n", (double)input::mouse_x(), (double)input::mouse_y());

        if (input::key(KEY_MOUSE_MWU)) {
            camera::set_angle(camera::angle() + 3);
        } else if (input::key(KEY_MOUSE_MWD)) {
            camera::set_angle(camera::angle() - 3);
        }
    }

    return 0;
}
