#include "../include/engine.hpp" // IWYU pragma: keep

std::vector<SDL_Event> wze::engine::events;

void wze::engine::init(void) {
    if (SDL_Init(SDL_INIT_EVERYTHING)) {
        throw wze_error(SDL_GetError());
    }

    if (!Mix_Init(
            MIX_INIT_FLAC |
            MIX_INIT_MOD |
            MIX_INIT_MP3 |
            MIX_INIT_OGG |
            MIX_INIT_MID |
            MIX_INIT_OPUS |
            MIX_INIT_WAVPACK
        )
    ) {
        throw wze_error(Mix_GetError());
    }

    if (Mix_OpenAudio(
            MIX_DEFAULT_FREQUENCY,
            MIX_DEFAULT_FORMAT,
            MIX_DEFAULT_CHANNELS,
            2048
        )
    ) {
        throw wze_error(Mix_GetError());
    }

    if (TTF_Init()) {
        throw wze_error(TTF_GetError());
    }
}

bool wze::engine::update(void) {
    SDL_Event event;

    engine::events.clear();

    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return false;
        }     

        engine::events.push_back(event);
    }

    render::update();

    return true;
}
