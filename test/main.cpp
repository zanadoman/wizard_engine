#include "../include/WZE/WizardEngine.hpp" // IWYU pragma: keep

#include <cstdio> // IWYU pragma: keep

#undef main

using namespace wze;

int32_t main(void) {
    engine::init();

    timer::set_frametime(1000 / 60);

    window::open("", "", 1920, 1080);

    while (engine::update()) {
        (void)printf("%u %u\n", window::width(), window::height());
    }

    return 0;
}
