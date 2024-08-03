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

#ifdef _WINDOWS_
    std::set_terminate([]() -> void {
        std::exception_ptr exception_ptr;

        exception_ptr = std::current_exception();
        if (exception_ptr) {
            try {
                std::rethrow_exception(exception_ptr);
            } catch (std::exception const& exception) {
                MessageBox(nullptr, exception.what(),
                           (bool)window::base()
                               ? SDL_GetWindowTitle(window::base())
                               : "Wizard Engine",
                           MB_OK | MB_ICONERROR);
            } catch (...) {
                MessageBox(nullptr, "Unknown exception",
                           (bool)window::base()
                               ? SDL_GetWindowTitle(window::base())
                               : "Wizard Engine",
                           MB_OK | MB_ICONERROR);
            }
        } else {
            MessageBox(nullptr, "Unknown error",
                       (bool)window::base() ? SDL_GetWindowTitle(window::base())
                                            : "Wizard Engine",
                       MB_OK | MB_ICONERROR);
        }

        abort();
    });
#endif /* _WINDOWS_ */

    _events = {};
    if ((bool)SDL_Init(SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO |
                       SDL_INIT_EVENTS | SDL_INIT_JOYSTICK |
                       SDL_INIT_GAMECONTROLLER | SDL_INIT_SENSOR)) {
        throw exception(SDL_GetError());
    }
    if (!(bool)IMG_Init(IMG_INIT_JPG | IMG_INIT_PNG | IMG_INIT_TIF |
                        IMG_INIT_WEBP | IMG_INIT_JXL | IMG_INIT_AVIF)) {
#ifndef __EMSCRIPTEN__
        throw exception(IMG_GetError());
#endif /* __EMSCRIPTEN__ */
    }
    if (!(bool)Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 |
                        MIX_INIT_OGG | MIX_INIT_MID | MIX_INIT_OPUS) ||
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

void wze::engine::log(std::string const& message) {
#ifdef __EMSCRIPTEN__
    // NOLINTNEXTLINE(hicpp-vararg,cppcoreguidelines-pro-type-vararg)
    emscripten_log(EM_LOG_INFO, message.c_str());
#else  /* __EMSCRIPTEN__ */
    std::cout << message << std::endl;
#endif /* __EMSCRIPTEN__ */
}
