#include "WZE/render.hpp"
#include "WZE/camera.hpp"
#include "WZE/window.hpp"

SDL_Renderer* wze::render::_renderer = nullptr;
float_t wze::render::_origo_x = 0.f;
float_t wze::render::_origo_y = 0.f;
std::vector<wze::renderable const*> wze::render::_projectables = {};
std::vector<wze::renderable const*> wze::render::_inprojectables = {};

void wze::render::_open_frame() {
    if (SDL_SetRenderDrawColor(_renderer, 0, 0, 0, 255)) {
        throw std::runtime_error(SDL_GetError());
    }
    if (SDL_RenderClear(_renderer)) {
        throw std::runtime_error(SDL_GetError());
    }
}

bool wze::render::_invisible(renderable const& instance) {
    return (instance.projectable() && instance.z() - camera::z() <= 0.f) ||
           instance.width() == 0.f || instance.height() == 0.f ||
           instance.color_a() == 0 || !instance.visible() ||
           !instance.texture().get();
}

void wze::render::_transform(renderable& instance) {
    SDL_FRect const& area = instance.__render_area();
    instance.__set_render_area({area.x + _origo_x - area.w / 2.f,
                                area.y + _origo_y - area.h / 2.f, area.w,
                                area.h});
    instance.__set_render_angle(instance.__render_angle() * TO_DEGF);
}

bool wze::render::_offscreen(renderable const& instance) {
    SDL_FRect const& area = instance.__render_area();
    return area.x + area.w < 0.f || window::width() <= area.x ||
           area.y + area.h < 0.f || window::height() <= area.y;
}

void wze::render::_render(renderable const& instance) {
    if (SDL_SetTextureColorMod(instance.texture().get(), instance.color_r(),
                               instance.color_g(), instance.color_b())) {
        throw std::runtime_error(SDL_GetError());
    }
    if (SDL_SetTextureAlphaMod(instance.texture().get(), instance.color_a())) {
        throw std::runtime_error(SDL_GetError());
    }
    if (SDL_RenderCopyExF(_renderer, instance.texture().get(), nullptr,
                          &instance.__render_area(),
                          (double)instance.__render_angle(), nullptr,
                          (SDL_RendererFlip)instance.flip())) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::render::_close_frame() {
    SDL_RenderPresent(_renderer);
}

SDL_Renderer* wze::render::__renderer() {
    return _renderer;
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

    _origo_x = window::width() / 2.f;
    _origo_y = window::height() / 2.f;
}

void wze::render::__update() {
    _open_frame();

    _projectables.clear();
    _inprojectables.clear();

    std::ranges::for_each(renderable::__instances(), [](renderable* instance) {
        if (_invisible(*instance)) {
            return;
        }

        camera::__project_renderable(*instance);
        _transform(*instance);

        if (_offscreen(*instance)) {
            return;
        }

        if (instance->projectable()) {
            _projectables.push_back(instance);
        } else {
            _inprojectables.push_back(instance);
        }
    });

    std::ranges::sort(_projectables, [](renderable const* projectable1,
                                        renderable const* projectable2) {
        if (projectable1->z() != projectable2->z()) {
            return projectable2->z() < projectable1->z();
        } else {
            return projectable1->priority() < projectable2->priority();
        }
    });

    std::ranges::sort(_inprojectables, [](renderable const* inprojectable1,
                                          renderable const* inprojectable2) {
        return inprojectable1->priority() < inprojectable2->priority();
    });

    std::ranges::for_each(_projectables, [](renderable const* projectable) {
        _render(*projectable);
    });

    std::ranges::for_each(_inprojectables, [](renderable const* inprojectable) {
        _render(*inprojectable);
    });

    _close_frame();
}

void wze::render::__itransform(float_t& x, float_t& y) {
    x -= _origo_x;
    y -= _origo_y;
}
