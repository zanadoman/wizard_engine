#include "../include/WZE/engine.hpp" // IWYU pragma: keep

std::vector<SDL_Event> wze::engine::events;

void wze::engine::init() {
    constexpr uint16_t CHUNK_SIZE = 2048;

    if (SDL_Init(SDL_INIT_EVERYTHING)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (!Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 | MIX_INIT_OGG |
                  MIX_INIT_MID | MIX_INIT_OPUS | MIX_INIT_WAVPACK)) {
        throw std::runtime_error(Mix_GetError());
    }

    if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT,
                      MIX_DEFAULT_CHANNELS, CHUNK_SIZE)) {
        throw std::runtime_error(Mix_GetError());
    }

    if (TTF_Init()) {
        throw std::runtime_error(TTF_GetError());
    }
}

auto wze::engine::update() -> bool {
    SDL_Event event;

    engine::events.clear();

    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return false;
        }

        engine::events.push_back(event);
    }

    render::_update();

    return true;
}
