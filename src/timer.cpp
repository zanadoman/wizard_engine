#include "../include/WZE/timer.hpp" // IWYU pragma: keep

uint8_t  wze::timer::frametime = 0;
uint64_t wze::timer::lasttime  = 0;
uint8_t  wze::timer::deltatime = 0;

auto wze::timer::get_frametime() -> uint8_t {
    return timer::frametime;
}

void wze::timer::set_frametime(uint8_t frametime) {
    timer::frametime = frametime;
}

auto wze::timer::get_deltatime() -> uint8_t {
    return timer::deltatime;
}

void wze::timer::set_deltatime(uint8_t deltatime) {
    timer::deltatime = deltatime;
}

auto wze::timer::get_time() -> uint64_t {
    return SDL_GetTicks64();
}

void wze::timer::_update() {
    uint32_t deadline = timer::lasttime + timer::frametime;

    if (SDL_GetTicks64() < deadline) {
        SDL_Delay(deadline - SDL_GetTicks64());
    }

    timer::deltatime = SDL_GetTicks64() - timer::lasttime;
    timer::lasttime  = SDL_GetTicks64();
}
