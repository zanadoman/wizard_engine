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

#define __WIZARD_ENGINE_INTERNAL

#include <wizard_engine/assets.hpp>
#include <wizard_engine/audio.hpp>
#include <wizard_engine/camera.hpp>
#include <wizard_engine/engine.hpp>
#include <wizard_engine/input.hpp>
#include <wizard_engine/math.hpp>
#include <wizard_engine/renderer.hpp>
#include <wizard_engine/sprite.hpp>
#include <wizard_engine/timer.hpp>
#include <wizard_engine/window.hpp>

std::vector<SDL_Event> wze::engine::_events;

void wze::engine::play_intro() {
    std::shared_ptr<image> logo;
    sprite intro;
    float opacity;

    logo = assets::load_image("./assets/wizard_engine/logo.png");
    if (assets::hash_image(logo) != 14466144734576808089U) {
        throw std::runtime_error("Invalid ./assets/wizard_engine/logo.png");
    }

    intro = {0,
             0,
             0,
             0,
             window::height() * 0.75f,
             window::height() * 0.75f,
             false,
             assets::create_texture(logo)};

    opacity = 0;
    while (opacity <= std::numeric_limits<uint8_t>::max()) {
        intro.set_color_a(opacity);
        if (!update()) {
            return;
        }
        opacity += 0.1f * timer::delta_time();
    }

    opacity = std::numeric_limits<uint8_t>::max();
    while (0 <= opacity) {
        intro.set_color_a(opacity);
        if (!update()) {
            return;
        }
        opacity -= 0.1f * timer::delta_time();
    }
}

std::vector<SDL_Event> const& wze::engine::events() {
    return _events;
}

void wze::engine::initialize(std::string const& title, uint16_t width,
                             uint16_t height) {
    _events = {};
    if (SDL_Init(SDL_INIT_EVERYTHING)) {
        throw std::runtime_error(SDL_GetError());
    }
    if (!IMG_Init(IMG_INIT_JPG | IMG_INIT_PNG | IMG_INIT_TIF | IMG_INIT_WEBP |
                  IMG_INIT_JXL | IMG_INIT_AVIF)) {
        throw std::runtime_error(IMG_GetError());
    }
    if (!Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 | MIX_INIT_OGG |
                  MIX_INIT_MID | MIX_INIT_OPUS | MIX_INIT_WAVPACK) ||
        Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT,
                      MIX_DEFAULT_CHANNELS, 2048)) {
        throw std::runtime_error(Mix_GetError());
    }
    if (TTF_Init()) {
        throw std::runtime_error(TTF_GetError());
    }
    math::initialize();
    timer::initialize();
    window::initialize(title, width, height);
    input::initialize();
    camera::initialize();
    renderer::initialize();
    audio::initialize();
    play_intro();
}

bool wze::engine::update() {
    SDL_Event event;

    renderer::update();
    audio::update();
    timer::update();

    _events.clear();
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return false;
        }
        _events.push_back(event);
    }

    input::update();

    return true;
}
