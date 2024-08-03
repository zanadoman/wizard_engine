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

// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE_INTERNAL__

#include <wizard_engine/assets.hpp>
#include <wizard_engine/audio.hpp>
#include <wizard_engine/camera.hpp>
#include <wizard_engine/engine.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/input.hpp>
#include <wizard_engine/math.hpp>
#include <wizard_engine/renderer.hpp>
#include <wizard_engine/sprite.hpp>
#include <wizard_engine/timer.hpp>
#include <wizard_engine/window.hpp>

std::vector<SDL_Event> wze::engine::_events = {};

void wze::engine::play_intro() {
    // NOLINTNEXTLINE(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
    static_assert(sizeof(size_t) == 4 || sizeof(size_t) == 8);
    constexpr size_t logo_hash =
        sizeof(size_t) == 8 ? 4621002103177400980 : 315106224;
    constexpr float speed = 0.1;

    std::shared_ptr<image> logo;
    sprite intro;
    float opacity;

    logo = assets::load_image("./assets/wizard_engine/logo.png");
    if (assets::hash_image(logo) != logo_hash) {
        throw exception("Invalid ./assets/wizard_engine/logo.png");
    }

    intro = sprite(0, 0, 0, 0, (float)window::height() / 2,
                   (float)window::height() / 2, false,
                   assets::create_texture(logo));

    opacity = 0;
    while (opacity <= std::numeric_limits<uint8_t>::max()) {
        intro.set_color_a((uint8_t)opacity);
        if (!update()) {
            return;
        }
        opacity += speed * timer::delta_time();
    }

    opacity = std::numeric_limits<uint8_t>::max();
    while (0 <= opacity) {
        intro.set_color_a((uint8_t)opacity);
        if (!update()) {
            return;
        }
        opacity -= speed * timer::delta_time();
    }
}

std::vector<SDL_Event> const& wze::engine::events() {
    return _events;
}

void wze::engine::initialize(uint16_t width, uint16_t height) {
    constexpr uint16_t MIX_DEFAULT_CHUNKSIZE = 4096;

    std::set_terminate([]() -> void {
        std::function<void(char const*)> log;
        std::exception_ptr exception_ptr;

        log = [](char const* message) -> void {
            engine::log(message, LOG_LEVEL_CRITICAL);
            if ((bool)SDL_ShowSimpleMessageBox(
                    SDL_MESSAGEBOX_ERROR,
                    (bool)window::base() ? SDL_GetWindowTitle(window::base())
                                         : "Wizard Engine",
                    message, nullptr)) {
                engine::log(SDL_GetError(), LOG_LEVEL_CRITICAL);
            }
        };

        exception_ptr = std::current_exception();
        if (exception_ptr) {
            try {
                std::rethrow_exception(exception_ptr);
            } catch (std::exception const& exception) {
                log(exception.what());
            } catch (...) {
                log("Unknown exception");
            }
        } else {
            log("Unknown error");
        }

        abort();
    });

    _events = {};
    if ((bool)SDL_Init(SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO |
                       SDL_INIT_EVENTS | SDL_INIT_JOYSTICK |
                       SDL_INIT_GAMECONTROLLER | SDL_INIT_SENSOR)) {
        throw exception(SDL_GetError());
    }
#ifndef __EMSCRIPTEN__
    if (IMG_Init(IMG_INIT_JPG | IMG_INIT_PNG) !=
        (IMG_INIT_JPG | IMG_INIT_PNG)) {
        throw exception(IMG_GetError());
    }
#endif /* __EMSCRIPTEN__ */
    if ((Mix_Init(MIX_INIT_OGG) != MIX_INIT_OGG) ||
        (bool)Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT,
                            MIX_DEFAULT_CHANNELS, MIX_DEFAULT_CHUNKSIZE)) {
        throw exception(Mix_GetError());
    }
    if ((bool)TTF_Init()) {
        throw exception(TTF_GetError());
    }
    math::initialize();
    timer::initialize();
    window::initialize(width, height);
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
    while ((bool)SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            return false;
        }
        _events.push_back(event);
    }

    input::update();

    return true;
}

void wze::engine::log(char const* message, log_level log_level) {
    // NOLINTNEXTLINE(hicpp-vararg,cppcoreguidelines-pro-type-vararg)
    SDL_LogMessage(SDL_LOG_CATEGORY_APPLICATION, (SDL_LogPriority)log_level,
                   "%s", message);
}

void wze::engine::log(std::string const& message, log_level log_level) {
    log(message.c_str(), log_level);
}
