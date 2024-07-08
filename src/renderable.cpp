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

#define __WIZARD_ENGINE_INTERNAL

#include <wizard_engine/renderable.hpp>

std::vector<wze::renderable*> wze::renderable::_instances = {};

std::vector<wze::renderable*> const& wze::renderable::instances() {
    return _instances;
}

SDL_FRect const& wze::renderable::screen_area() const {
    return _screen_area;
}

void wze::renderable::set_screen_area(SDL_FRect const& screen_area) {
    _screen_area = screen_area;
}

float wze::renderable::screen_angle() const {
    return _screen_angle;
}

void wze::renderable::set_screen_angle(float screen_angle) {
    _screen_angle = screen_angle;
}

wze::renderable::renderable() {
    set_screen_area({0, 0, 0, 0});
    set_screen_angle(0);
    _instances.push_back(this);
}

wze::renderable::renderable(renderable const& other) {
    *this = other;
    _instances.push_back(this);
}

wze::renderable::~renderable() {
    _instances.erase(std::ranges::find(_instances, this));
}

wze::renderable& wze::renderable::operator=(renderable const& other) {
    set_screen_area(other._screen_area);
    set_screen_angle(other._screen_angle);
    return *this;
}
