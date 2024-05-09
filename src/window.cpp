#include "../include/window.hpp"

SDL_Window*   wze::window::base     = nullptr;
SDL_Renderer* wze::window::renderer = nullptr;
uint16_t      wze::window::width    = 0;
uint16_t      wze::window::height   = 0;

uint16_t
wze::window::get_width(void)
{
    return window::width;
}

uint16_t
wze::window::get_height(void)
{
    return window::height;
}

SDL_Window*
wze::window::_get_base(void)
{
    return window::base;
}

SDL_Renderer*
wze::window::_get_renderer(void)
{
    return window::renderer;
}

void
wze::window::open(const std::string title,
                  const std::string icon_path,
                  uint16_t          width,
                  uint16_t          height)
{
    SDL_Surface* icon;

    window::base =
      SDL_CreateWindow(title.empty() ? "Wizard Engine" : title.c_str(),
                       SDL_WINDOWPOS_CENTERED,
                       SDL_WINDOWPOS_CENTERED,
                       width,
                       height,
                       SDL_WINDOW_RESIZABLE | SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (!window::base) {
        throw std::runtime_error(SDL_GetError());
    }

    icon =
      IMG_Load(icon_path.empty() ? "assets/wze/icon.png" : icon_path.c_str());

    if (!icon) {
        throw std::runtime_error(IMG_GetError());
    }

    SDL_SetWindowIcon(window::base, icon);
    SDL_FreeSurface(icon);

    window::renderer =
      SDL_CreateRenderer(window::base, -1, SDL_RENDERER_ACCELERATED);

    if (!window::renderer) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderSetLogicalSize(window::renderer, width, height)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetRenderDrawBlendMode(window::renderer, SDL_BLENDMODE_BLEND)) {
        throw std::runtime_error(SDL_GetError());
    }

    window::width  = width;
    window::height = height;
}
