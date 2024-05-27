#include "WZE/window.hpp"

SDL_Window *wze::window::_base = 0;
uint16_t wze::window::_width = 0;
uint16_t wze::window::_height = 0;
std::string wze::window::_title = "";
wze::image_t wze::window::_icon = nullptr;

SDL_Window *wze::window::__base() {
    return _base;
}

uint16_t wze::window::width() {
    return _width;
}

uint16_t wze::window::height() {
    return _height;
}

const std::string &wze::window::title() {
    return _title;
}

void wze::window::set_title(const std::string &title) {
    SDL_SetWindowTitle(_base, title.c_str());
    _title = title;
}

const wze::image_t &wze::window::icon() {
    return _icon;
}

void wze::window::set_icon(const image_t &icon) {
    SDL_SetWindowIcon(_base, icon.get());
    _icon = icon;
}

bool wze::window::visible() {
    return SDL_GetWindowFlags(_base) & SDL_WINDOW_SHOWN;
}

bool wze::window::focused() {
    return SDL_GetWindowFlags(_base) & SDL_WINDOW_INPUT_FOCUS;
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
    set_title("Wizard Engine");
    set_icon(assets::load_image("assets/wze/icon.png"));
}
