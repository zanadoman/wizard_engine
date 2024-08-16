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

// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE_INTERNAL__

#include <wizard_engine/camera.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/math.hpp>
#include <wizard_engine/renderer.hpp>
#include <wizard_engine/window.hpp>

float wze::renderer::_origo_x = {};
float wze::renderer::_origo_y = {};
SDL_Renderer* wze::renderer::_base = {};
uint8_t wze::renderer::_background_color_r = {};
uint8_t wze::renderer::_background_color_g = {};
uint8_t wze::renderer::_background_color_b = {};
std::shared_ptr<wze::texture> wze::renderer::_background_texture = {};
std::shared_ptr<wze::texture> wze::renderer::_space = {};
uint8_t wze::renderer::_space_color_r = {};
uint8_t wze::renderer::_space_color_g = {};
uint8_t wze::renderer::_space_color_b = {};
uint8_t wze::renderer::_space_color_a = {};
std::shared_ptr<wze::texture> wze::renderer::_space_texture = {};
SDL_FRect wze::renderer::_space_area = {};
std::shared_ptr<wze::texture> wze::renderer::_plane = {};
uint8_t wze::renderer::_plane_color_r = {};
uint8_t wze::renderer::_plane_color_g = {};
uint8_t wze::renderer::_plane_color_b = {};
uint8_t wze::renderer::_plane_color_a = {};

void wze::renderer::open_frame() {
    if ((bool)SDL_SetRenderTarget(base(), nullptr) ||
        (bool)SDL_SetRenderDrawColor(base(), background_color_r(),
                                     background_color_g(), background_color_b(),
                                     std::numeric_limits<uint8_t>::max()) ||
        (bool)SDL_RenderClear(base()) ||
        (background_texture() &&
         ((bool)SDL_SetTextureColorMod(
              background_texture().get(), background_color_r(),
              background_color_g(), background_color_b()) ||
          (bool)SDL_RenderCopy(base(), background_texture().get(), nullptr,
                               nullptr)))) {
        throw exception(SDL_GetError());
    }
}

void wze::renderer::open_space() {
    if ((bool)SDL_SetRenderTarget(base(), _space.get()) ||
        (bool)SDL_SetRenderDrawColor(base(), 0, 0, 0, 0) ||
        (bool)SDL_RenderClear(base()) ||
        (space_texture() &&
         ((bool)SDL_SetTextureColorMod(space_texture().get(), space_color_r(),
                                       space_color_g(), space_color_b()) ||
          (bool)SDL_SetTextureAlphaMod(space_texture().get(),
                                       space_color_a()) ||
          (bool)SDL_RenderCopyExF(base(), space_texture().get(), nullptr,
                                  &_space_area,
                                  (double)math::to_degrees(-camera::angle()),
                                  nullptr, SDL_FLIP_NONE)))) {
        throw exception(SDL_GetError());
    }
}

void wze::renderer::open_plane() {
    if ((bool)SDL_SetRenderTarget(base(), _plane.get()) ||
        (bool)SDL_SetRenderDrawColor(base(), 0, 0, 0, 0) ||
        (bool)SDL_RenderClear(base())) {
        throw exception(SDL_GetError());
    }
}

bool wze::renderer::invisible(renderable const& instance) {
    return !instance.visible() ||
           (instance.spatial() && instance.z() <= camera::z()) ||
           !(bool)instance.color_a() || !instance.texture() ||
           !(bool)instance.width() || !(bool)instance.height();
}

void wze::renderer::transform(renderable& instance) {
    instance.set_screen_area(
        {origo_x() + instance.screen_area().x - instance.screen_area().w / 2,
         origo_y() + instance.screen_area().y - instance.screen_area().h / 2,
         instance.screen_area().w, instance.screen_area().h});
}

bool wze::renderer::offscreen(renderable const& instance) {
    return instance.screen_area().x + instance.screen_area().w < 0 ||
           (float)window::width() <= instance.screen_area().x ||
           instance.screen_area().y + instance.screen_area().h < 0 ||
           (float)window::height() <= instance.screen_area().y;
}

void wze::renderer::render(renderable const& instance) {
    if ((bool)SDL_SetTextureColorMod(instance.texture().get(),
                                     instance.color_r(), instance.color_g(),
                                     instance.color_b()) ||
        (bool)SDL_SetTextureAlphaMod(instance.texture().get(),
                                     instance.color_a()) ||
        (bool)SDL_RenderCopyExF(
            base(), instance.texture().get(), nullptr, &instance.screen_area(),
            (double)math::to_degrees(instance.screen_angle()), nullptr,
            (SDL_RendererFlip)instance.flip())) {
        throw exception(SDL_GetError());
    }
}

void wze::renderer::close_frame() {
    if ((bool)SDL_SetRenderTarget(base(), nullptr) ||
        (bool)SDL_SetTextureColorMod(_space.get(), space_color_r(),
                                     space_color_g(), space_color_b()) ||
        (bool)SDL_SetTextureAlphaMod(_space.get(), space_color_a()) ||
        (bool)SDL_RenderCopy(base(), _space.get(), nullptr, nullptr) ||
        (bool)SDL_SetTextureColorMod(_plane.get(), plane_color_r(),
                                     plane_color_g(), plane_color_b()) ||
        (bool)SDL_SetTextureAlphaMod(_plane.get(), plane_color_a()) ||
        (bool)SDL_RenderCopy(base(), _plane.get(), nullptr, nullptr)) {
        throw exception(SDL_GetError());
    }
    SDL_RenderPresent(base());
}

float wze::renderer::origo_x() {
    return _origo_x;
}

void wze::renderer::set_origo_x(float origo_x) {
    _origo_x = origo_x;
}

float wze::renderer::origo_y() {
    return _origo_y;
}

void wze::renderer::set_origo_y(float origo_y) {
    _origo_y = origo_y;
}

SDL_Renderer* wze::renderer::base() {
    return _base;
}

uint8_t wze::renderer::background_color_r() {
    return _background_color_r;
}

void wze::renderer::set_background_color_r(uint8_t background_color_r) {
    _background_color_r = background_color_r;
}

uint8_t wze::renderer::background_color_g() {
    return _background_color_g;
}

void wze::renderer::set_background_color_g(uint8_t background_color_g) {
    _background_color_g = background_color_g;
}

uint8_t wze::renderer::background_color_b() {
    return _background_color_b;
}

void wze::renderer::set_background_color_b(uint8_t background_color_b) {
    _background_color_b = background_color_b;
}

std::shared_ptr<wze::texture> const& wze::renderer::background_texture() {
    return _background_texture;
}

void wze::renderer::set_background_texture(
    std::shared_ptr<texture> const& background_texture) {
    _background_texture = background_texture;
}

uint8_t wze::renderer::space_color_r() {
    return _space_color_r;
}

void wze::renderer::set_space_color_r(uint8_t space_color_r) {
    _space_color_r = space_color_r;
}

uint8_t wze::renderer::space_color_g() {
    return _space_color_g;
}

void wze::renderer::set_space_color_g(uint8_t space_color_g) {
    _space_color_g = space_color_g;
}

uint8_t wze::renderer::space_color_b() {
    return _space_color_b;
}

void wze::renderer::set_space_color_b(uint8_t space_color_b) {
    _space_color_b = space_color_b;
}

uint8_t wze::renderer::space_color_a() {
    return _space_color_a;
}

void wze::renderer::set_space_color_a(uint8_t space_color_a) {
    _space_color_a = space_color_a;
}

std::shared_ptr<wze::texture> const& wze::renderer::space_texture() {
    return _space_texture;
}

void wze::renderer::set_space_texture(
    std::shared_ptr<texture> const& space_texture) {
    _space_texture = space_texture;
}

uint8_t wze::renderer::plane_color_r() {
    return _plane_color_r;
}

void wze::renderer::set_plane_color_r(uint8_t plane_color_r) {
    _plane_color_r = plane_color_r;
}

uint8_t wze::renderer::plane_color_g() {
    return _plane_color_g;
}

void wze::renderer::set_plane_color_g(uint8_t plane_color_g) {
    _plane_color_g = plane_color_g;
}

uint8_t wze::renderer::plane_color_b() {
    return _plane_color_b;
}

void wze::renderer::set_plane_color_b(uint8_t plane_color_b) {
    _plane_color_b = plane_color_b;
}

uint8_t wze::renderer::plane_color_a() {
    return _plane_color_a;
}

void wze::renderer::set_plane_color_a(uint8_t plane_color_a) {
    _plane_color_a = plane_color_a;
}

void wze::renderer::initialize() {
    set_origo_x((float)window::width() / 2);
    set_origo_y((float)window::height() / 2);
    _base = SDL_CreateRenderer(window::base(), -1, SDL_RENDERER_ACCELERATED);
    if (!(bool)base() || (bool)SDL_RenderSetLogicalSize(base(), window::width(),
                                                        window::height())) {
        throw exception(SDL_GetError());
    }
    set_background_color_r(0);
    set_background_color_g(0);
    set_background_color_b(0);
    set_background_texture({});
    _space = {SDL_CreateTexture(base(), SDL_PIXELFORMAT_RGBA8888,
                                SDL_TEXTUREACCESS_TARGET, window::width(),
                                window::height()),
              SDL_DestroyTexture};
    if (!_space ||
        (bool)SDL_SetTextureBlendMode(_space.get(), SDL_BLENDMODE_BLEND)) {
        throw exception(SDL_GetError());
    }
    set_space_color_r(std::numeric_limits<uint8_t>::max());
    set_space_color_g(std::numeric_limits<uint8_t>::max());
    set_space_color_b(std::numeric_limits<uint8_t>::max());
    set_space_color_a(std::numeric_limits<uint8_t>::max());
    set_space_texture({});
    _space_area.w = _space_area.h =
        math::length(window::width(), window::height());
    _space_area.x = origo_x() - _space_area.w / 2;
    _space_area.y = origo_y() - _space_area.h / 2;
    _plane = {SDL_CreateTexture(base(), SDL_PIXELFORMAT_RGBA8888,
                                SDL_TEXTUREACCESS_TARGET, window::width(),
                                window::height()),
              SDL_DestroyTexture};
    if (!_plane ||
        (bool)SDL_SetTextureBlendMode(_plane.get(), SDL_BLENDMODE_BLEND)) {
        throw exception(SDL_GetError());
    }
    set_plane_color_r(std::numeric_limits<uint8_t>::max());
    set_plane_color_g(std::numeric_limits<uint8_t>::max());
    set_plane_color_b(std::numeric_limits<uint8_t>::max());
    set_plane_color_a(std::numeric_limits<uint8_t>::max());
}

void wze::renderer::update() {
    std::vector<renderable const*> space;
    std::vector<renderable const*> plane;

    std::for_each(renderable::instances().begin(),
                  renderable::instances().end(),
                  [&](renderable* instance) -> void {
                      if (invisible(*instance)) {
                          return;
                      }
                      camera::project(*instance);
                      transform(*instance);
                      if (offscreen(*instance)) {
                          return;
                      }
                      if (instance->spatial()) {
                          space.push_back(instance);
                      } else {
                          plane.push_back(instance);
                      }
                  });

    std::stable_sort(
        space.begin(), space.end(),
        [](renderable const* instance1, renderable const* instance2) -> bool {
            return instance1->z() != instance2->z()
                       ? instance2->z() < instance1->z()
                       : instance1->priority() < instance2->priority();
        });
    std::stable_sort(
        plane.begin(), plane.end(),
        [](renderable const* instance1, renderable const* instance2) -> bool {
            return instance1->priority() < instance2->priority();
        });

    open_frame();
    open_space();
    std::for_each(space.begin(), space.end(),
                  [](renderable const* instance) -> void {
                      render(*instance);
                  });
    open_plane();
    std::for_each(plane.begin(), plane.end(),
                  [](renderable const* instance) -> void {
                      render(*instance);
                  });
    close_frame();
}

std::pair<float, float> wze::renderer::detransform(float x, float y) {
    return {x - origo_x(), y - origo_y()};
}
