#include "WZE/render.hpp"
#include "WZE/camera.hpp"
#include "WZE/window.hpp"

SDL_Renderer* wze::render::_base = nullptr;
float_t wze::render::_ox = 0.f;
float_t wze::render::_oy = 0.f;
std::vector<wze::renderable*> wze::render::_projqueue = {};
std::vector<wze::renderable*> wze::render::_origqueue = {};

void wze::render::_open_frame() {
    if (SDL_SetRenderDrawColor(_base, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_RenderClear(_base)) {
        throw std::runtime_error(SDL_GetError());
    }
}

bool wze::render::_invisible(renderable const& item) {
    return (item.projectable() && item.z() - camera::z() <= 0.f) ||
           item.width() == 0.f || item.height() == 0.f || item.color_a() == 0 ||
           !item.visible();
}

bool wze::render::_offscreen(renderable& item) {
    return item.__rect().x + item.__rect().w < 0 ||
           window::width() <= item.__rect().x ||
           item.__rect().y + item.__rect().h < 0 ||
           window::height() <= item.__rect().y;
}

void wze::render::_render(renderable& item) {
    if (item.texture().get()) {
        if (SDL_SetTextureColorMod(item.texture().get(), item.color_r(),
                                   item.color_g(), item.color_b())) {
            throw std::runtime_error(SDL_GetError());
        }

        if (SDL_SetTextureAlphaMod(item.texture().get(), item.color_a())) {
            throw std::runtime_error(SDL_GetError());
        }

        if (SDL_RenderCopyExF(_base, item.texture().get(), nullptr,
                              &item.__rect(), (double)item.__recta(), nullptr,
                              (SDL_RendererFlip)item.flip())) {
            throw std::runtime_error(SDL_GetError());
        }
    } else {
        if (SDL_SetRenderDrawColor(_base, item.color_r(), item.color_g(),
                                   item.color_b(), item.color_a())) {
            throw std::runtime_error(SDL_GetError());
        }

        if (SDL_RenderFillRectF(_base, &item.__rect())) {
            throw std::runtime_error(SDL_GetError());
        }
    }
}

void wze::render::_close_frame() {
    SDL_RenderPresent(_base);
}

SDL_Renderer* wze::render::__base() {
    return _base;
}

void wze::render::__init() {
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

    _ox = window::width() / 2.f;
    _oy = window::height() / 2.f;
}

void wze::render::__update() {
    _open_frame();

    _projqueue.clear();
    _origqueue.clear();

    for (renderable* item : renderable::__insts()) {
        if (_invisible(*item)) {
            continue;
        }

        if (item->projectable()) {
            camera::__project(*item);
        } else {
            item->__rect().x = item->x();
            item->__rect().y = item->y();
            item->__rect().w = item->width();
            item->__rect().h = item->height();
            item->__set_recta(item->angle());
        }

        item->__rect().x += _ox - item->__rect().w / 2.f;
        item->__rect().y += _oy - item->__rect().h / 2.f;
        item->__set_recta(item->__recta() * deg);

        if (_offscreen(*item)) {
            continue;
        }

        if (item->projectable()) {
            _projqueue.push_back(item);
        } else {
            _origqueue.push_back(item);
        }
    }

    std::sort(_projqueue.begin(), _projqueue.end(),
              [](renderable const* r1, renderable const* r2) {
                  if (r1->z() != r2->z()) {
                      return r2->z() < r1->z();
                  } else {
                      return r1->priority() < r2->priority();
                  }
              });

    std::sort(_origqueue.begin(), _origqueue.end(),
              [](renderable const* r1, renderable const* r2) {
                  return r1->priority() < r2->priority();
              });

    for (renderable* item : _projqueue) {
        _render(*item);
    }

    for (renderable* item : _origqueue) {
        _render(*item);
    }

    _close_frame();
}
