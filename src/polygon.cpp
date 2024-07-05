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

void wze::polygon::update_x() {
    for (size_t i = 0; i < _shape.size(); ++i) {
        _points.at(i).first =
            _x + math::transform_x(_shape.at(i).first, _shape.at(i).second,
                                   _transformation_matrix);
    }
}

void wze::polygon::update_y() {
    for (size_t i = 0; i < _shape.size(); ++i) {
        _points.at(i).second =
            _y + math::transform_y(_shape.at(i).first, _shape.at(i).second,
                                   _transformation_matrix);
    }
}

float wze::polygon::circumradius() const {
    float circumradius;
    float temporary;

    circumradius = 0;
    std::ranges::for_each(_shape,
                          [&circumradius, &temporary](
                              std::pair<float, float> const& vertex) -> void {
                              temporary = std::apply(math::length, vertex);
                              if (circumradius < temporary) {
                                  circumradius = temporary;
                              }
                          });

    return circumradius;
}

std::vector<std::pair<float, float>> const& wze::polygon::shape() const {
    return _shape;
}

float wze::polygon::shape_radius() const {
    return _shape_radius;
}

std::vector<std::pair<float, float>> const& wze::polygon::points() const {
    return _points;
}

float wze::polygon::points_radius() const {
    return _points_radius;
}

float wze::polygon::x() const {
    return _x;
}

void wze::polygon::set_x(float x) {
    _x = x;
    update_x();
}

float wze::polygon::y() const {
    return _y;
}

void wze::polygon::set_y(float y) {
    _y = y;
    update_y();
}

float wze::polygon::angle() const {
    return _angle;
}

void wze::polygon::set_angle(float angle) {
    _angle = angle;
    _transformation_matrix = math::transformation_matrix(_angle, _scale);
    update_x();
    update_y();
}

float wze::polygon::scale() const {
    return _scale;
}

void wze::polygon::set_scale(float scale) {
    _points_radius = _shape_radius * scale;
    _scale = scale;
    _transformation_matrix = math::transformation_matrix(_angle, _scale);
    update_x();
    update_y();
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

wze::polygon::polygon(std::vector<std::pair<float, float>> const& shape,
                      float x, float y, float angle, float scale,
                      float x_offset, float y_offset, float angle_offset,
                      bool attach_x, bool attach_y, bool attach_angle,
                      bool x_angle_lock, bool y_angle_lock) {
    _shape = shape;
    _shape_radius = circumradius();
    _points = _shape;
    _points_radius = _shape_radius * scale;
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
    update_x();
    update_y();
}

bool wze::polygon::inside(float x, float y) const {
    float determinant;
    float temporary;

    if (_points_radius < math::length(x - _x, y - _y)) {
        return false;
    }

    determinant = 0;
    for (size_t i1 = 0, i2 = 1; i1 < _points.size(); ++i1, ++i2) {
        if (i2 == _points.size()) {
            i2 = 0;
        }

        temporary = (_points.at(i2).first - _points.at(i1).first) *
                        (y - _points.at(i1).second) -
                    (x - _points.at(i1).first) *
                        (_points.at(i2).second - _points.at(i1).second);

        if ((0 < determinant && temporary < 0) ||
            (determinant < 0 && 0 < temporary)) {
            return false;
        } else {
            determinant = temporary;
        }
    }

    return true;
}

bool wze::polygon::overlap(polygon const& other) const {
    polygon const* polygon1;
    polygon const* polygon2;
    float normal_x;
    float normal_y;
    float projection;
    float minimum1;
    float maximum1;
    float minimum2;
    float maximum2;

    if (_points_radius + other._points_radius <
        math::length(other._x - _x, other._y - _y)) {
        return false;
    }

    polygon1 = this;
    polygon2 = &other;

    for (size_t i = 0; i < 2; ++i) {
        for (size_t j1 = 0, j2 = 1; j1 < polygon1->_points.size(); ++j1, ++j2) {
            if (j2 == polygon1->_points.size()) {
                j2 = 0;
            }

            normal_x = -(polygon1->_points.at(j1).second -
                         polygon1->_points.at(j2).second);
            normal_y =
                polygon1->_points.at(j1).first - polygon1->_points.at(j2).first;

            minimum1 = std::numeric_limits<float>::infinity();
            maximum1 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < polygon1->_points.size(); ++k) {
                projection = polygon1->_points.at(k).first * normal_x +
                             polygon1->_points.at(k).second * normal_y;
                minimum1 = std::min(minimum1, projection);
                maximum1 = std::max(maximum1, projection);
            }

            minimum2 = std::numeric_limits<float>::infinity();
            maximum2 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < polygon2->_points.size(); ++k) {
                projection = polygon2->_points.at(k).first * normal_x +
                             polygon2->_points.at(k).second * normal_y;
                minimum2 = std::min(minimum2, projection);
                maximum2 = std::max(maximum2, projection);
            }

            if (maximum2 < minimum1 || maximum1 < minimum2) {
                return false;
            }
        }

        polygon1 = &other;
        polygon2 = this;
    }

    return true;
}

float wze::polygon::collision(polygon const& other) const {
    polygon const* polygon1;
    polygon const* polygon2;
    float normal_x;
    float normal_y;
    float normalization;
    float projection;
    float minimum1;
    float maximum1;
    float minimum2;
    float maximum2;
    float collision;

    if (_points_radius + other._points_radius <
        math::length(other._x - _x, other._y - _y)) {
        return 0;
    }

    polygon1 = this;
    polygon2 = &other;
    collision = std::numeric_limits<float>::infinity();

    for (size_t i = 0; i < 2; ++i) {
        for (size_t j1 = 0, j2 = 1; j1 < polygon1->_points.size(); ++j1, ++j2) {
            if (j2 == polygon1->_points.size()) {
                j2 = 0;
            }

            normal_x = -(polygon1->_points.at(j1).second -
                         polygon1->_points.at(j2).second);
            normal_y =
                polygon1->_points.at(j1).first - polygon1->_points.at(j2).first;
            normalization = sqrtf(powf(normal_x, 2) + powf(normal_y, 2));
            normal_x = normalization ? normal_x / normalization : 0;
            normal_y = normalization ? normal_y / normalization : 0;

            minimum1 = std::numeric_limits<float>::infinity();
            maximum1 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < polygon1->_points.size(); ++k) {
                projection = polygon1->_points.at(k).first * normal_x +
                             polygon1->_points.at(k).second * normal_y;
                minimum1 = std::min(minimum1, projection);
                maximum1 = std::max(maximum1, projection);
            }

            minimum2 = std::numeric_limits<float>::infinity();
            maximum2 = -std::numeric_limits<float>::infinity();
            for (size_t k = 0; k < polygon2->_points.size(); ++k) {
                projection = polygon2->_points.at(k).first * normal_x +
                             polygon2->_points.at(k).second * normal_y;
                minimum2 = std::min(minimum2, projection);
                maximum2 = std::max(maximum2, projection);
            }

            if (maximum2 < minimum1 || maximum1 < minimum2) {
                return 0;
            }

            collision = std::min(std::min(maximum1, maximum2) -
                                     std::max(minimum1, minimum2),
                                 collision);
        }

        polygon1 = &other;
        polygon2 = this;
    }

    return collision;
}
