#include "../include/WZE/timer.hpp" // IWYU pragma: keep

uint8_t wze::timer::_frametime = 0;
uint64_t wze::timer::_lasttime = 0;
uint8_t wze::timer::_deltatime = 0;

auto wze::timer::frametime(void) -> uint8_t {
    return _frametime;
}

void wze::timer::set_frametime(uint8_t frametime) {
    _frametime = frametime;
}

auto wze::timer::deltatime(void) -> uint8_t {
    return _deltatime;
}

void wze::timer::set_deltatime(uint8_t deltatime) {
    _deltatime = deltatime;
}

auto wze::timer::time(void) -> uint64_t {
    return SDL_GetTicks64();
}

void wze::timer::__update(void) {
    auto deadline = _lasttime + _frametime;

    if (SDL_GetTicks64() < deadline) {
        SDL_Delay(deadline - SDL_GetTicks64());
    }

    _deltatime = SDL_GetTicks64() - _lasttime;
    _lasttime = SDL_GetTicks64();
}
