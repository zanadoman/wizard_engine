#include "WZE/WizardEngine.hpp" // IWYU pragma: keep
#include <iostream>

#undef main

int32_t main() {
    wze::engine::init(1920, 1080);

    wze::timer::set_delay(1000 / 60);

    while (wze::engine::update()) {
        std::cout << wze::input::cursor_x() << '\n';
        std::cout << wze::input::cursor_y() << '\n';
    }

    return 0;
}
