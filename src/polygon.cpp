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

#include <wizard_engine/math.hpp>
#include <wizard_engine/polygon.hpp>

wze::polygon::polygon(std::vector<std::pair<float, float>> const& shape,
                      float x, float y, float angle, float scale,
                      float x_offset, float y_offset, float angle_offset,
                      bool attach_x, bool attach_y, bool attach_angle,
                      bool x_angle_lock, bool y_angle_lock) {
    _shape = shape;
    _points = _shape;
    _x = x;
    _y = y;
    _angle = angle;
    _scale = scale;
    _transformation_matrix = math::transformation_matrix(_angle, _scale);
    _x_offset = x_offset;
    _y_offset = y_offset;
    _angle_offset = angle_offset;
    _attach_x = attach_x;
    _attach_y = attach_y;
    _attach_angle = attach_angle;
    _x_angle_lock = x_angle_lock;
    _y_angle_lock = y_angle_lock;
    update();
}

void wze::polygon::update() {
    for (size_t i = 0; i < _shape.size(); ++i) {
        _points.at(i).first =
            _x + math::transform_x(_shape.at(i).first, _shape.at(i).second,
                                   _transformation_matrix);
        _points.at(i).second =
            _y + math::transform_y(_shape.at(i).first, _shape.at(i).second,
                                   _transformation_matrix);
    }
}

std::vector<std::pair<float, float>> const& wze::polygon::shape() const {
    return _shape;
}

std::vector<std::pair<float, float>> const& wze::polygon::points() const {
    return _points;
}

float wze::polygon::x() const {
    return _x;
}

void wze::polygon::set_x(float x) {
    _x = x;
    update();
}

float wze::polygon::y() const {
    return _y;
}

void wze::polygon::set_y(float y) {
    _y = y;
    update();
}

float wze::polygon::angle() const {
    return _angle;
}

void wze::polygon::set_angle(float angle) {
    _angle = angle;
    _transformation_matrix = math::transformation_matrix(_angle, _scale);
    update();
}

float wze::polygon::scale() const {
    return _scale;
}

void wze::polygon::set_scale(float scale) {
    _scale = scale;
    _transformation_matrix = math::transformation_matrix(_angle, _scale);
    update();
}

float wze::polygon::x_offset() const {
    return _x_offset;
}

void wze::polygon::set_x_offset(float x_offset) {
    _x_offset = x_offset;
}

float wze::polygon::y_offset() const {
    return _y_offset;
}

void wze::polygon::set_y_offset(float y_offset) {
    _y_offset = y_offset;
}

float wze::polygon::angle_offset() const {
    return _angle_offset;
}

void wze::polygon::set_angle_offset(float angle_offset) {
    _angle_offset = angle_offset;
}

bool wze::polygon::attach_x() const {
    return _attach_x;
}

void wze::polygon::set_attach_x(bool attach_x) {
    _attach_x = attach_x;
}

bool wze::polygon::attach_y() const {
    return _attach_y;
}

void wze::polygon::set_attach_y(bool attach_y) {
    _attach_y = attach_y;
}

bool wze::polygon::attach_angle() const {
    return _attach_angle;
}

void wze::polygon::set_attach_angle(bool attach_angle) {
    _attach_angle = attach_angle;
}

bool wze::polygon::x_angle_lock() const {
    return _x_angle_lock;
}

void wze::polygon::set_x_angle_lock(bool x_angle_lock) {
    _x_angle_lock = x_angle_lock;
}

bool wze::polygon::y_angle_lock() const {
    return _y_angle_lock;
}

void wze::polygon::set_y_angle_lock(bool y_angle_lock) {
    _y_angle_lock = y_angle_lock;
}

std::unique_ptr<wze::polygon>
wze::polygon::create(std::vector<std::pair<float, float>> const& shape, float x,
                     float y, float angle, float scale, float x_offset,
                     float y_offset, float angle_offset, bool attach_x,
                     bool attach_y, bool attach_angle, bool x_angle_lock,
                     bool y_angle_lock) {
    return std::unique_ptr<polygon>(new polygon(
        shape, x, y, angle, scale, x_offset, y_offset, angle_offset, attach_x,
        attach_y, attach_angle, x_angle_lock, y_angle_lock));
}

bool wze::polygon::overlap(polygon const& other) const {
    polygon const* p1;
    polygon const* p2;
    float normal_x;
    float normal_y;
    float projection;
    float min1;
    float max1;
    float min2;
    float max2;

    p1 = this;
    p2 = &other;

    for (size_t i = 0; i < 2; ++i) {
        for (size_t j1 = 0, j2 = 1; j1 < p1->_points.size(); ++j1, ++j2) {
            if (j2 == p1->_points.size()) {
                j2 = 0;
            }

            normal_x = -(p1->_points.at(j1).second - p1->_points.at(j2).second);
            normal_y = p1->_points.at(j1).first - p1->_points.at(j2).first;

            min1 = std::numeric_limits<float>::infinity();
            max1 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < p1->_points.size(); ++k) {
                projection = p1->_points.at(k).first * normal_x +
                             p1->_points.at(k).second * normal_y;
                min1 = std::min(min1, projection);
                max1 = std::max(max1, projection);
            }

            min2 = std::numeric_limits<float>::infinity();
            max2 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < p2->_points.size(); ++k) {
                projection = p2->_points.at(k).first * normal_x +
                             p2->_points.at(k).second * normal_y;
                min2 = std::min(min2, projection);
                max2 = std::max(max2, projection);
            }

            if (max2 < min1 || max1 < min2) {
                return false;
            }
        }

        p1 = &other;
        p2 = this;
    }

    return true;
}

float wze::polygon::collision(polygon const& other) const {
    polygon const* p1;
    polygon const* p2;
    float normal_x;
    float normal_y;
    float normalization;
    float projection;
    float min1;
    float max1;
    float min2;
    float max2;
    float collision;

    p1 = this;
    p2 = &other;
    collision = std::numeric_limits<float>::infinity();

    for (size_t i = 0; i < 2; ++i) {
        for (size_t j1 = 0, j2 = 1; j1 < p1->_points.size(); ++j1, ++j2) {
            if (j2 == p1->_points.size()) {
                j2 = 0;
            }

            normal_x = -(p1->_points.at(j1).second - p1->_points.at(j2).second);
            normal_y = p1->_points.at(j1).first - p1->_points.at(j2).first;
            normalization = sqrtf(powf(normal_x, 2) + powf(normal_y, 2));
            normal_x = normalization ? normal_x / normalization : 0;
            normal_y = normalization ? normal_y / normalization : 0;

            min1 = std::numeric_limits<float>::infinity();
            max1 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < p1->_points.size(); ++k) {
                projection = p1->_points.at(k).first * normal_x +
                             p1->_points.at(k).second * normal_y;
                min1 = std::min(min1, projection);
                max1 = std::max(max1, projection);
            }

            min2 = std::numeric_limits<float>::infinity();
            max2 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < p2->_points.size(); ++k) {
                projection = p2->_points.at(k).first * normal_x +
                             p2->_points.at(k).second * normal_y;
                min2 = std::min(min2, projection);
                max2 = std::max(max2, projection);
            }

            if (max2 < min1 || max1 < min2) {
                return 0;
            }

            collision = std::min(std::min(max1, max2) - std::max(min1, min2),
                                 collision);
        }

        p1 = &other;
        p2 = this;
    }

    return collision;
}
