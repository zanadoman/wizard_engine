#include "../include/WZE/timer.hpp" // IWYU pragma: keep

uint8_t wze::timer::_frame = 0;
uint64_t wze::timer::_last = 0;
uint8_t wze::timer::_delta = 0;

auto wze::timer::frame(void) -> uint8_t {
    return _frame;
}

void wze::timer::set_frame(uint8_t ms) {
    _frame = ms;
}

auto wze::timer::delta(void) -> uint8_t {
    return _delta;
}

void wze::timer::set_delta(uint8_t ms) {
    _delta = ms;
}

auto wze::timer::now(void) -> uint64_t {
    return SDL_GetTicks64();
}

void wze::timer::__update(void) {
    uint64_t now;
    uint64_t end;

    now = SDL_GetTicks64();
    end = _last + _frame;

    if (now < end) {
        SDL_Delay(end - now);
    }

    now = SDL_GetTicks64();
    _delta = now - _last;
    _last = now;
}
