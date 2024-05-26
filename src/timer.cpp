#include "WZE/timer.hpp"

uint8_t wze::timer::_delay = 0;
uint64_t wze::timer::_last = 0;
uint8_t wze::timer::_delta = 0;

uint8_t wze::timer::delay() {
    return _delay;
}

void wze::timer::set_delay(uint8_t ms) {
    _delay = ms;
}

uint8_t wze::timer::delta() {
    return _delta;
}

void wze::timer::set_delta(uint8_t ms) {
    _delta = ms;
}

uint64_t wze::timer::now() {
    return SDL_GetTicks64();
}

void wze::timer::__update() {
    uint64_t now;
    uint64_t end;

    now = SDL_GetTicks64();
    end = _last + _delay;

    if (now < end) {
        SDL_Delay(end - now);
    }

    now = SDL_GetTicks64();
    _delta = now - _last;
    _last = now;
}
