#include "WZE/render.hpp"
#include "WZE/window.hpp"

SDL_Renderer *wze::render::_renderer = nullptr;
SDL_Texture *wze::render::_canvas = nullptr;

void wze::render::open_frame() {
    if (SDL_SetRenderTarget(_renderer, _canvas)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetRenderDrawColor(_renderer, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderClear(_renderer)) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::close_frame() {
    if (SDL_SetRenderTarget(_renderer, nullptr)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetRenderDrawColor(_renderer, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderClear(_renderer)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderCopy(_renderer, _canvas, NULL, NULL)) {
        throw std::runtime_error(SDL_GetError());
    }

    SDL_RenderPresent(_renderer);
}

SDL_Renderer *wze::render::__renderer() {
    return _renderer;
}

void wze::render::__init() {
    _renderer = SDL_CreateRenderer(window::__base(), -1,
                                   SDL_RENDERER_ACCELERATED |
                                       SDL_RENDERER_TARGETTEXTURE);

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

    _canvas = SDL_CreateTexture(_renderer, SDL_PIXELFORMAT_RGBA8888,
                                SDL_TEXTUREACCESS_TARGET, window::width(),
                                window::height());

    if (!_canvas) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::__update() {
    render::open_frame();

    SDL_Rect r(100, 100, 100, 100);
    SDL_SetRenderDrawColor(_renderer, 0, 255, 0, 255);
    SDL_RenderFillRect(_renderer, &r);

    render::close_frame();
}
