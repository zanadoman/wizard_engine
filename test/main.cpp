#include "../include/WZE/WizardEngine.hpp" // IWYU pragma: keep

#include <GL/gl.h>
#include <cstdio> // IWYU pragma: keep

#undef main

using namespace wze;

int32_t main(void) {
    engine::init();

    timer::set_frametime(1000 / 60);

    window::open("", "", 1920, 1080);

    input::hide_cursor();
    input::set_mouse_sens(0.2);

    glPushMatrix();
    while (engine::update()) {
        camera::set_x(camera::x() + input::mouse_x());
        camera::set_y(camera::y() - input::mouse_y());
    }

    return 0;
}
