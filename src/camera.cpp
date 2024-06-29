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
std::array<float, 4> wze::camera::_rotation_matrix = math::rotation_matrix(0);
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
    _rotation_matrix = math::rotation_matrix(_angle);
}

float wze::camera::focus() {
    return _focus;
}

void wze::camera::set_focus(float focus) {
    _focus = focus;
}

void wze::camera::project(renderable& instance) {
    SDL_FRect screen_area;
    float screen_angle;
    float scale;
    float x;
    float y;

    if (instance.spatial()) {
        if (instance.z() == _z || _focus == 0) {
            screen_area = {0, 0, 0, 0};
        } else {
            scale = _focus / (instance.z() - _z);
            x = (instance.x() - _x) * scale;
            y = (instance.y() - _y) * scale;
            screen_area.x = math::rotate_x(x, y, _rotation_matrix);
            screen_area.y = math::rotate_y(x, y, _rotation_matrix);
            screen_area.w = instance.width() * scale;
            screen_area.h = instance.height() * scale;
        }
        screen_angle = instance.angle() - _angle;
    } else {
        screen_area.x = instance.x();
        screen_area.y = instance.y();
        screen_area.w = instance.width();
        screen_area.h = instance.height();
        screen_angle = instance.angle();
    }

    instance.set_screen_area(screen_area);
    instance.set_screen_angle(screen_angle);
}

std::pair<float, float> wze::camera::unproject(float x, float y, float z) {
    std::pair<float, float> plane_coordinate;
    float determinant;
    float scale;

    if (z == _z || _focus == 0) {
        plane_coordinate = {0, 0};
    } else {
        determinant = _rotation_matrix.at(0) * _rotation_matrix.at(3) -
                      _rotation_matrix.at(1) * _rotation_matrix.at(2);
        scale = (z - _z) / _focus;
        plane_coordinate.first =
            _x + (x * _rotation_matrix.at(3) - y * _rotation_matrix.at(1)) /
                     determinant * scale;
        plane_coordinate.second =
            _y + (y * _rotation_matrix.at(0) - x * _rotation_matrix.at(2)) /
                     determinant * scale;
    }

    return plane_coordinate;
}
