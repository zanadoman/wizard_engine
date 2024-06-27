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

#include <wizard_engine/camera.hpp>
#include <wizard_engine/math.hpp>

float_t wze::camera::_x = 0.f;
float_t wze::camera::_y = 0.f;
float_t wze::camera::_z = 0.f;
float_t wze::camera::_angle = 0.f;
float_t wze::camera::_focus = 512.f;
std::array<float_t, 4> wze::camera::_rotation_matrix =
    math::rotation_matrix(0.f);

float_t wze::camera::x() {
    return _x;
}

void wze::camera::set_x(float_t x) {
    _x = x;
}

float_t wze::camera::y() {
    return _y;
}

void wze::camera::set_y(float_t y) {
    _y = y;
}

float_t wze::camera::z() {
    return _z;
}

void wze::camera::set_z(float_t z) {
    _z = z;
}

float_t wze::camera::angle() {
    return _angle;
}

void wze::camera::set_angle(float_t angle) {
    _angle = angle;
    _rotation_matrix = math::rotation_matrix(_angle);
}

float_t wze::camera::focus() {
    return _focus;
}

void wze::camera::set_focus(float_t focus) {
    _focus = focus;
}

void wze::camera::project(renderable& instance) {
    float_t scale;
    float_t x;
    float_t y;

    if (!instance.spatial()) {
        instance.set_screen_area(
            {instance.x(), instance.y(), instance.width(), instance.height()});
        instance.set_screen_angle(instance.angle());
        return;
    }

    if (instance.z() == _z || _focus == 0.f) {
        instance.set_screen_area({0.f, 0.f, 0.f, 0.f});
        instance.set_screen_angle(instance.angle() - _angle);
        return;
    }

    scale = _focus / (instance.z() - _z);
    x = (instance.x() - _x) * scale;
    y = (instance.y() - _y) * scale;
    instance.set_screen_area({math::rotate_x(x, y, _rotation_matrix),
                              math::rotate_y(x, y, _rotation_matrix),
                              instance.width() * scale,
                              instance.height() * scale});
    instance.set_screen_angle(instance.angle() - _angle);
}

std::pair<float_t, float_t> wze::camera::unproject(float_t x, float_t y,
                                                   float_t z) {
    float_t determinant;
    float_t scale;

    if (z == _z || _focus == 0.f) {
        return {0.f, 0.f};
    }

    determinant = _rotation_matrix.at(0) * _rotation_matrix.at(3) -
                  _rotation_matrix.at(1) * _rotation_matrix.at(2);
    scale = (z - _z) / _focus;
    return {_x + (x * _rotation_matrix.at(3) - y * _rotation_matrix.at(1)) /
                     determinant * scale,
            _y + (y * _rotation_matrix.at(0) - x * _rotation_matrix.at(2)) /
                     determinant * scale};
}
