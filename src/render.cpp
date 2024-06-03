#include "WZE/render.hpp"
#include "WZE/camera.hpp"
#include "WZE/window.hpp"

SDL_Renderer* wze::render::_base = nullptr;
float_t wze::render::_origo_x = 0.f;
float_t wze::render::_origo_y = 0.f;
std::vector<wze::renderable*> wze::render::_projectables = {};
std::vector<wze::renderable*> wze::render::_inprojectables = {};

void wze::render::_open_frame() {
    if (SDL_SetRenderDrawColor(_base, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }
    if (SDL_RenderClear(_base)) {
        throw std::runtime_error(SDL_GetError());
    }
}

bool wze::render::_invisible(renderable const& r) {
    return (r.projectable() && r.z() - camera::z() <= 0.f) ||
           r.width() == 0.f || r.height() == 0.f || r.color_a() == 0 ||
           !r.visible();
}

void wze::render::_transform(renderable& r) {
    r.__rect().x += _origo_x - r.__rect().w / 2.f;
    r.__rect().y += _origo_y - r.__rect().h / 2.f;
    r.__set_recta(r.__recta() * deg);
}

bool wze::render::_offscreen(renderable& r) {
    return r.__rect().x + r.__rect().w < 0 || window::width() <= r.__rect().x ||
           r.__rect().y + r.__rect().h < 0 || window::height() <= r.__rect().y;
}

void wze::render::_render(renderable& r) {
    if (r.texture().get()) {
        if (SDL_SetTextureColorMod(r.texture().get(), r.color_r(), r.color_g(),
                                   r.color_b())) {
            throw std::runtime_error(SDL_GetError());
        }
        if (SDL_SetTextureAlphaMod(r.texture().get(), r.color_a())) {
            throw std::runtime_error(SDL_GetError());
        }
        if (SDL_RenderCopyExF(_base, r.texture().get(), nullptr, &r.__rect(),
                              (double)r.__recta(), nullptr,
                              (SDL_RendererFlip)r.flip())) {
            throw std::runtime_error(SDL_GetError());
        }
    } else {
        if (SDL_SetRenderDrawColor(_base, r.color_r(), r.color_g(), r.color_b(),
                                   r.color_a())) {
            throw std::runtime_error(SDL_GetError());
        }
        if (SDL_RenderFillRectF(_base, &r.__rect())) {
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

float_t wze::render::origo_x() {
    return _origo_x;
}

void wze::render::set_origo_x(float_t origo_x) {
    _origo_x = origo_x;
}

float_t wze::render::origo_y() {
    return _origo_y;
}

void wze::render::set_origo_y(float_t origo_y) {
    _origo_y = origo_y;
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

    _origo_x = window::width() / 2.f;
    _origo_y = window::height() / 2.f;
}

void wze::render::__update() {
    _open_frame();

    _projectables.clear();
    _inprojectables.clear();

    for (renderable* r : renderable::__insts()) {
        if (_invisible(*r)) {
            continue;
        }

        camera::__project(*r);
        _transform(*r);

        if (_offscreen(*r)) {
            continue;
        }

        if (r->projectable()) {
            _projectables.push_back(r);
        } else {
            _inprojectables.push_back(r);
        }
    }

    std::sort(_projectables.begin(), _projectables.end(),
              [](renderable const* r1, renderable const* r2) {
                  if (r1->z() != r2->z()) {
                      return r2->z() < r1->z();
                  } else {
                      return r1->priority() < r2->priority();
                  }
              });

    std::sort(_inprojectables.begin(), _inprojectables.end(),
              [](renderable const* r1, renderable const* r2) {
                  return r1->priority() < r2->priority();
              });

    for (renderable* r : _projectables) {
        _render(*r);
    }
    for (renderable* r : _inprojectables) {
        _render(*r);
    }

    _close_frame();
}

void wze::render::__itransform(float_t& x, float_t& y) {
    x -= _origo_x;
    y -= _origo_y;
}
