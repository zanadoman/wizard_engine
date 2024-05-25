#include "../include/WZE/engine.hpp" // IWYU pragma: keep

#undef main

int32_t main() {
    wze::engine::init();

    wze::timer::set_frame(1000 / 60);

    while (wze::engine::update()) {
    }

    return 0;
}
