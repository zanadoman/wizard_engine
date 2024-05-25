#include "../include/WZE/render.hpp" // IWYU pragma: keep

SDL_Renderer *wze::render::_renderer = nullptr;

void wze::render::open_frame() {
    SDL_SetRenderDrawColor(_renderer, 0, 0, 0, UINT8_MAX);
    SDL_RenderClear(_renderer);
}

void wze::render::close_frame() {
    SDL_RenderPresent(_renderer);
}

SDL_Renderer *wze::render::renderer() {
    return _renderer;
}

void wze::render::init() {
    _renderer =
        SDL_CreateRenderer(window::base(), -1, SDL_RENDERER_ACCELERATED);

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

void wze::render::update() {
    render::open_frame();
    render::close_frame();
}
