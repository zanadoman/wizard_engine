#include "WZE/render.hpp"
#include "WZE/window.hpp"

SDL_Renderer *wze::render::_renderer = nullptr;

void wze::render::open_frame() {
    if (SDL_SetRenderDrawColor(_renderer, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderClear(_renderer)) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::close_frame() {
    SDL_RenderPresent(_renderer);
}

SDL_Renderer *wze::render::__renderer() {
    return _renderer;
}

void wze::render::__init() {
    _renderer =
        SDL_CreateRenderer(window::__base(), -1, SDL_RENDERER_ACCELERATED);

    if (!_renderer) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderSetLogicalSize(_renderer, window::width(),
                                 window::height())) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetRenderDrawBlendMode(_renderer, SDL_BLENDMODE_BLEND)) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::__update() {
    render::open_frame();
    render::close_frame();
}
