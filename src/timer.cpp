#include "../include/timer.hpp" // IWYU pragma: keep

uint8_t  wze::timer::frametime = 0;
uint64_t wze::timer::lasttime  = 0;
uint8_t  wze::timer::deltatime = 0;

uint8_t wze::timer::get_frametime(void) {
    return timer::frametime;
}

void wze::timer::set_frametime(uint8_t frametime) {
    timer::frametime = frametime;
}

uint8_t wze::timer::get_deltatime(void) {
    return timer::deltatime;
}

void wze::timer::set_deltatime(uint8_t deltatime) {
    timer::deltatime = deltatime;
}

uint64_t wze::timer::get_time(void) {
    return SDL_GetTicks64();
}

void wze::timer::update(void) {
    uint32_t deadline;

    deadline = timer::lasttime + timer::frametime;

    if (SDL_GetTicks64() < deadline) {
        SDL_Delay(deadline - SDL_GetTicks64());
    }

    timer::deltatime = SDL_GetTicks64() - timer::lasttime;
    timer::lasttime = SDL_GetTicks64();
}
