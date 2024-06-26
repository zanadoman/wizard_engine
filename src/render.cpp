/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

#define WZE_INTERNAL

#include <WZE/camera.hpp>
#include <WZE/math.hpp>
#include <WZE/render.hpp>
#include <WZE/window.hpp>

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
    return (instance.spatial() && instance.z() <= camera::z()) ||
           instance.width() == 0.f || instance.height() == 0.f ||
           instance.color_a() == 0 || !instance.visible() ||
           !instance.texture().get();
}

void wze::render::_transform(renderable& instance) {
    SDL_FRect const& area = instance.__screen_area();
    instance.__set_screen_area({area.x + _origo_x - area.w / 2.f,
                                area.y + _origo_y - area.h / 2.f, area.w,
                                area.h});
}

bool wze::render::_offscreen(renderable const& instance) {
    SDL_FRect const& area = instance.__screen_area();
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
                          &instance.__screen_area(),
                          (double)math::to_degrees(instance.__screen_angle()),
                          nullptr, (SDL_RendererFlip)instance.flip())) {
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
    _renderer = SDL_CreateRenderer(window::__window(), -1,
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

        camera::__project(*instance);
        _transform(*instance);

        if (_offscreen(*instance)) {
            return;
        }

        if (instance->spatial()) {
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

std::pair<float_t, float_t> wze::render::__detransform(float_t x, float_t y) {
    return {x - _origo_x, y - _origo_y};
}
