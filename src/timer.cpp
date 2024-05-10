#include "../include/WZE/timer.hpp" // IWYU pragma: keep

uint8_t  wze::timer::_frametime = 0;
uint64_t wze::timer::_lasttime  = 0;
uint8_t  wze::timer::_deltatime = 0;

auto wze::timer::frametime() -> uint8_t {
    return timer::_frametime;
}

void wze::timer::set_frametime(uint8_t frametime) {
    timer::_frametime = frametime;
}

auto wze::timer::deltatime() -> uint8_t {
    return timer::_deltatime;
}

void wze::timer::set_deltatime(uint8_t deltatime) {
    timer::_deltatime = deltatime;
}

auto wze::timer::time() -> uint64_t {
    return SDL_GetTicks64();
}

void wze::timer::update() {
    uint32_t deadline = timer::_lasttime + timer::_frametime;

    if (SDL_GetTicks64() < deadline) {
        SDL_Delay(deadline - SDL_GetTicks64());
    }

    timer::_deltatime = SDL_GetTicks64() - timer::_lasttime;
    timer::_lasttime  = SDL_GetTicks64();
}
