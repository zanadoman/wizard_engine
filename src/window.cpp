#include "../include/WZE/window.hpp"

SDL_Window *wze::window::_base = nullptr;
uint16_t wze::window::_width = 0;
uint16_t wze::window::_height = 0;
wze::image wze::window::_icon;

SDL_Window *wze::window::base() {
    return _base;
}

int32_t wze::window::width() {
    return _width;
}

int32_t wze::window::height() {
    return _height;
}

std::string wze::window::title() {
    return SDL_GetWindowTitle(_base);
}

void wze::window::set_title(const std::string &title) {
    SDL_SetWindowTitle(_base, title.c_str());
}

const wze::image &wze::window::icon() {
    return _icon;
}

void wze::window::set_icon(const image &icon) {
    SDL_SetWindowIcon(_base, icon.get());
    _icon = icon;
}

void wze::window::__init(uint16_t width, uint16_t height) {
    _base = SDL_CreateWindow(
        "", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height,
        SDL_WINDOW_RESIZABLE | SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (!_base) {
        throw std::runtime_error(SDL_GetError());
    }

    _width = width;
    _height = height;
}
