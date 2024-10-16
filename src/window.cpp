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

#include <wizard_engine/exception.hpp>
#include <wizard_engine/window.hpp>

SDL_Window* wze::window::_base = {};
uint16_t wze::window::_width = {};
uint16_t wze::window::_height = {};

SDL_Window* wze::window::base() {
    return _base;
}

uint16_t wze::window::width() {
    return _width;
}

uint16_t wze::window::height() {
    return _height;
}

std::string wze::window::title() {
    return SDL_GetWindowTitle(base());
}

void wze::window::set_title(std::string const& title) {
    SDL_SetWindowTitle(base(), title.c_str());
}

void wze::window::set_icon(std::shared_ptr<image> const& icon) {
    SDL_SetWindowIcon(base(), icon.get());
}

bool wze::window::visible() {
    return (bool)(SDL_GetWindowFlags(base()) & SDL_WINDOW_SHOWN);
}

bool wze::window::focused() {
    return (bool)(SDL_GetWindowFlags(base()) & SDL_WINDOW_INPUT_FOCUS);
}

void wze::window::initialize(std::string const& title, uint16_t width,
                             uint16_t height) {
    _base = SDL_CreateWindow(title.empty() ? "Wizard Engine" : title.c_str(),
                             SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
                             width, height,
                             SDL_WINDOW_RESIZABLE
#ifndef __EMSCRIPTEN__
                                 | SDL_WINDOW_FULLSCREEN_DESKTOP
#endif /* __EMSCRIPTEN__ */
    );
    if (!(bool)base()) {
        throw exception(SDL_GetError());
    }
    _width = width;
    _height = height;
    set_icon(assets::load_image("./wizard_engine/icon.png"));
}
