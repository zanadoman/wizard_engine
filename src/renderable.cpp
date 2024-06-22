/**
 * zlib License
 *
 * Copyright (C) 2023-2024 Zana Domán
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

#include "WZE/renderable.hpp"

std::deque<wze::renderable*> wze::renderable::_instances = {};

std::deque<wze::renderable*> const& wze::renderable::__instances() {
    return _instances;
}

SDL_FRect const& wze::renderable::__screen_area() const {
    return _screen_area;
}

void wze::renderable::__set_screen_area(SDL_FRect const& screen_area) {
    _screen_area = screen_area;
}

float_t wze::renderable::__screen_angle() const {
    return _screen_angle;
}

void wze::renderable::__set_screen_angle(float_t screen_angle) {
    _screen_angle = screen_angle;
}

wze::renderable::renderable() {
    _screen_area = {0.f, 0.f, 0.f, 0.f};
    _screen_angle = 0.f;
    _instances.push_back(this);
}

wze::renderable::~renderable() {
    _instances.erase(std::ranges::find(_instances, this));
}
