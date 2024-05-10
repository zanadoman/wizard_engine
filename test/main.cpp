#include "../include/WZE/WizardEngine.hpp" // IWYU pragma: keep

#include <cstdio> // IWYU pragma: keep

#undef main

int32_t main(void) {
    wze::engine::init();

    wze::window::open("", "", 1920, 1080);

    wze::timer::set_frametime(1000 / 60);

    while (wze::engine::update()) {
        (void)printf("%u\n", wze::timer::get_deltatime());
    }

    return 0;
}
