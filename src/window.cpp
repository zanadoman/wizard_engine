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

#include <wizard_engine/window.hpp>

SDL_Window* wze::window::_base = nullptr;
uint16_t wze::window::_width = 0;
uint16_t wze::window::_height = 0;
std::string wze::window::_title = {};
std::shared_ptr<wze::image> wze::window::_icon = {};

SDL_Window* wze::window::base() {
    return _base;
}

uint16_t wze::window::width() {
    return _width;
}

uint16_t wze::window::height() {
    return _height;
}

std::string const& wze::window::title() {
    return _title;
}

void wze::window::set_title(std::string const& title) {
    static std::string fallback = "Wizard Engine";

    _title = title.empty() ? fallback : title;
    SDL_SetWindowTitle(_base, _title.c_str());
}

std::shared_ptr<wze::image> const& wze::window::icon() {
    return _icon;
}

void wze::window::set_icon(std::shared_ptr<image> const& icon) {
    static std::shared_ptr<image> fallback =
        assets::load_image("./assets/wizard_engine/icon.png");

    _icon = icon ? icon : fallback;
    SDL_SetWindowIcon(_base, _icon.get());
}

void wze::window::initialize(uint16_t width, uint16_t height) {
    if (!(_base = SDL_CreateWindow(
              nullptr, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width,
              height, SDL_WINDOW_RESIZABLE | SDL_WINDOW_FULLSCREEN_DESKTOP))) {
        throw std::runtime_error(SDL_GetError());
    }
    _width = width;
    _height = height;
    set_title({});
    set_icon({});
}

bool wze::window::visible() {
    return SDL_GetWindowFlags(_base) & SDL_WINDOW_SHOWN;
}

bool wze::window::focused() {
    return SDL_GetWindowFlags(_base) & SDL_WINDOW_INPUT_FOCUS;
}
