#include "WZE/render.hpp"
#include "WZE/math.hpp"
#include "WZE/window.hpp"

SDL_Renderer* wze::render::_base = nullptr;
SDL_Rect wze::render::_sview = {0, 0, 0, 0};
SDL_Texture* wze::render::_dtarg = nullptr;
SDL_Rect wze::render::_dview = {0, 0, 0, 0};

void wze::render::_clear_targ() {
    if (SDL_SetRenderDrawColor(_base, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderClear(_base)) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::_set_dtarg() {
    if (SDL_SetRenderTarget(_base, _dtarg)) {
        throw std::runtime_error(SDL_GetError());
    }

    _clear_targ();
}

void wze::render::_set_starg() {
    if (SDL_SetRenderTarget(_base, _starg)) {
        throw std::runtime_error(SDL_GetError());
    }

    _clear_targ();
}

void wze::render::_put_dtarg() {
    if (SDL_RenderCopyEx(_base, _dtarg, NULL, &_dview, 45, NULL,
                         SDL_FLIP_NONE)) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::_put_starg() {
    SDL_RenderPresent(_base);
}

SDL_Renderer* wze::render::__base() {
    return _base;
}

void wze::render::__init() {
    uint16_t diag;

    _base = SDL_CreateRenderer(window::__base(), -1,
                               SDL_RENDERER_ACCELERATED |
                                   SDL_RENDERER_TARGETTEXTURE);

    if (!_base) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderSetLogicalSize(_base, window::width(), window::height())) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetRenderDrawBlendMode(_base, SDL_BLENDMODE_BLEND)) {
        throw std::runtime_error(SDL_GetError());
    }

    diag = math::dist(0, 0, window::width(), window::height());

    _dtarg = SDL_CreateTexture(_base, SDL_PIXELFORMAT_RGBA8888,
                               SDL_TEXTUREACCESS_TARGET, diag, diag);

    if (!_dtarg) {
        throw std::runtime_error(SDL_GetError());
    }

    _dview.x = (window::width() - diag) / 2;
    _dview.y = (window::height() - diag) / 2;
    _dview.w = diag;
    _dview.h = diag;

    _sview.x = window::width() / 2;
    _sview.y = window::height() / 2;
    _sview.w = window::width();
    _sview.h = window::height();
}

void wze::render::__update() {
    _set_dtarg();

    SDL_Rect r1(500 - _dview.x, 500 - _dview.y, 100, 100);
    SDL_SetRenderDrawColor(_base, 0, 255, 0, 255);
    SDL_RenderFillRect(_base, &r1);

    _set_starg();
    _put_dtarg();

    SDL_Rect r2(0 - 50 + _sview.x, 0 * -1 - 50 + _sview.y, 100, 100);
    SDL_SetRenderDrawColor(_base, 0, 0, 255, 255);
    SDL_RenderFillRect(_base, &r2);

    _put_starg();
}
