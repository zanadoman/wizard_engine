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

    while (engine::update()) {
        (void)printf("%u %u\n", window::width(), window::height());

        glTranslatef(input::mouse_x(), -input::mouse_y(), 0);
        glRotatef(input::key(KEY_MOUSE_WHEEL) * 5, 0, 0, 1);
    }

    return 0;
}
