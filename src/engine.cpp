#include "WZE/engine.hpp"
#include "WZE/input.hpp"
#include "WZE/render.hpp"
#include "WZE/timer.hpp"
#include "WZE/window.hpp"

std::deque<SDL_Event> wze::engine::_events;

wze::engine::engine() {}

std::deque<SDL_Event> const& wze::engine::__events() {
    return _events;
}

void wze::engine::init(uint16_t width, uint16_t height) {
    std::atexit([]() {
        TTF_Quit();
        Mix_CloseAudio();
        Mix_Quit();
        SDL_Quit();
    });

    if (SDL_Init(SDL_INIT_EVERYTHING)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (!Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 | MIX_INIT_OGG |
                  MIX_INIT_MID | MIX_INIT_OPUS | MIX_INIT_WAVPACK)) {
        throw std::runtime_error(Mix_GetError());
    }

    if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT,
                      MIX_DEFAULT_CHANNELS, 2048)) {
        throw std::runtime_error(Mix_GetError());
    }

    if (TTF_Init()) {
        throw std::runtime_error(TTF_GetError());
    }

    window::__init(width, height);
    render::__init();
    input::__init();
}

bool wze::engine::update() {
    SDL_Event event;

    render::__update();
    timer::__update();

    _events.clear();
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return false;
        }
        _events.push_front(event);
    }

    input::__update();

    return true;
}
