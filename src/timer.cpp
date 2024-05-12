#include "../include/WZE/timer.hpp" // IWYU pragma: keep

uint8_t  wze::timer::_frametime = 0; // NOLINT
uint64_t wze::timer::_lasttime  = 0; // NOLINT
uint8_t  wze::timer::_deltatime = 0; // NOLINT

auto wze::timer::frametime() -> uint8_t {
    return _frametime;
}

void wze::timer::set_frametime(uint8_t frametime) {
    _frametime = frametime;
}

auto wze::timer::deltatime() -> uint8_t {
    return _deltatime;
}

void wze::timer::set_deltatime(uint8_t deltatime) {
    _deltatime = deltatime;
}

auto wze::timer::time() -> uint64_t {
    return SDL_GetTicks64();
}

void wze::timer::update() {
    uint32_t deadline = _lasttime + _frametime;

    if (SDL_GetTicks64() < deadline) {
        SDL_Delay(deadline - SDL_GetTicks64());
    }

    _deltatime = SDL_GetTicks64() - _lasttime;
    _lasttime  = SDL_GetTicks64();
}
