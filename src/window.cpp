#include "../include/WZE/window.hpp"

SDL_Window   *wze::window::_base     = nullptr;
SDL_Renderer *wze::window::_renderer = nullptr;
uint16_t      wze::window::_width    = 0;
uint16_t      wze::window::_height   = 0;

auto wze::window::base() -> SDL_Window * {
    return window::_base;
}

auto wze::window::renderer() -> SDL_Renderer * {
    return window::_renderer;
}

auto wze::window::width() -> uint16_t {
    return window::_width;
}

auto wze::window::height() -> uint16_t {
    return window::_height;
}

void wze::window::open(const std::string &title, const std::string &icon_path,
                       uint16_t width, uint16_t height) {
    SDL_Surface *icon;

    window::_base = SDL_CreateWindow(
        title.empty() ? "Wizard Engine" : title.c_str(), SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED, width, height,
        SDL_WINDOW_RESIZABLE | SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (!window::_base) {
        throw std::runtime_error(SDL_GetError());
    }

    icon =
        IMG_Load(icon_path.empty() ? "assets/wze/icon.png" : icon_path.c_str());

    if (!icon) {
        throw std::runtime_error(IMG_GetError());
    }

    SDL_SetWindowIcon(window::_base, icon);
    SDL_FreeSurface(icon);

    window::_renderer =
        SDL_CreateRenderer(window::_base, -1, SDL_RENDERER_ACCELERATED);

    if (!window::_renderer) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderSetLogicalSize(window::_renderer, width, height)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetRenderDrawBlendMode(window::_renderer, SDL_BLENDMODE_BLEND)) {
        throw std::runtime_error(SDL_GetError());
    }

    window::_width  = width;
    window::_height = height;
}
