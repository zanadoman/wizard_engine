#include "../include/WZE/window.hpp"

SDL_Window *wze::window::_base = nullptr;
uint16_t wze::window::_width = 0;
uint16_t wze::window::_height = 0;
std::string wze::window::_title;
std::string wze::window::_icon;

auto wze::window::base(void) -> SDL_Window * {
    return _base;
}
auto wze::window::width(void) -> int32_t {
    int32_t res;

    SDL_GetWindowSize(_base, &res, nullptr);

    return res;
}

auto wze::window::height(void) -> int32_t {
    int32_t res;

    SDL_GetWindowSize(_base, nullptr, &res);

    return res;
}

auto wze::window::title(void) -> const std::string & {
    return _title;
}

void wze::window::set_title(const std::string &title) {
    _title = title.empty() ? "Wizard Engine" : title;
    SDL_SetWindowTitle(_base, title.c_str());
}

auto wze::window::icon(void) -> const std::string & {
    return _icon;
}

void wze::window::set_icon(const std::string &icon) {
    SDL_Surface *img;

    _icon = icon.empty() ? "assets/wze/icon.png" : icon;
    img = IMG_Load(_icon.c_str());

    if (img == nullptr) {
        throw std::runtime_error(IMG_GetError());
    }

    SDL_SetWindowIcon(_base, img);
    SDL_FreeSurface(img);
}

void wze::window::__init(uint16_t width, uint16_t height) {
    _base = SDL_CreateWindow(
        "", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height,
        SDL_WINDOW_RESIZABLE | SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (_base == nullptr) {
        throw std::runtime_error(SDL_GetError());
    }

    _width = width;
    _height = height;
}
