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

float wze::camera::_x = 0;
float wze::camera::_y = 0;
float wze::camera::_z = 0;
float wze::camera::_angle = 0;
std::array<float, 4> wze::camera::_transformation_matrix =
    math::transformation_matrix(0, 1);
float wze::camera::_focus = 512;

float wze::camera::x() {
    return _x;
}

void wze::camera::set_x(float x) {
    _x = x;
}

float wze::camera::y() {
    return _y;
}

void wze::camera::set_y(float y) {
    _y = y;
}

float wze::camera::z() {
    return _z;
}

void wze::camera::set_z(float z) {
    _z = z;
}

float wze::camera::angle() {
    return _angle;
}

void wze::camera::set_angle(float angle) {
    _angle = angle;
    _transformation_matrix = math::transformation_matrix(_angle, 1);
}

float wze::camera::focus() {
    return _focus;
}

void wze::camera::set_focus(float focus) {
    _focus = focus;
}

void wze::camera::project(renderable& instance) {
    float scale;
    float x;
    float y;

    if (!instance.spatial()) {
        instance.set_screen_area(
            {instance.x(), instance.y(), instance.width(), instance.height()});
        instance.set_screen_angle(instance.angle());
        return;
    }

    instance.set_screen_angle(instance.angle() - _angle);

    if (instance.z() == _z || !_focus) {
        instance.set_screen_area({0, 0, 0, 0});
        return;
    }

    scale = _focus / (instance.z() - _z);
    x = (instance.x() - _x) * scale;
    y = (instance.y() - _y) * scale;
    instance.set_screen_area({math::transform_x(x, y, _transformation_matrix),
                              math::transform_y(x, y, _transformation_matrix),
                              instance.width() * scale,
                              instance.height() * scale});
}

std::pair<float, float> wze::camera::unproject(float x, float y, float z) {
    float determinant;
    float scale;

    if (z == _z || !_focus) {
        return {0, 0};
    }

    determinant = _transformation_matrix.at(0) * _transformation_matrix.at(3) -
                  _transformation_matrix.at(1) * _transformation_matrix.at(2);
    scale = (z - _z) / _focus;
    return {_x + (x * _transformation_matrix.at(3) -
                  y * _transformation_matrix.at(1)) /
                     determinant * scale,
            _y + (y * _transformation_matrix.at(0) -
                  x * _transformation_matrix.at(2)) /
                     determinant * scale};
}
