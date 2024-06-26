/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

#include "WZE/engine.hpp"
#include "WZE/input.hpp"
#include "WZE/render.hpp"
#include "WZE/timer.hpp"
#include "WZE/window.hpp"

std::vector<SDL_Event> wze::engine::_events;

wze::engine::engine() {}

std::vector<SDL_Event> const& wze::engine::__events() {
    return _events;
}

void wze::engine::init(uint16_t width, uint16_t height) {
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
        _events.push_back(event);
    }

    input::__update();

    return true;
}
