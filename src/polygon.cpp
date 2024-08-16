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

#include <wizard_engine/polygon.hpp>

void wze::polygon::update_x() {
    size_t i;

    for (i = 0; i != shape().size(); ++i) {
        _points.at(i).first =
            x() + math::transform_x(shape().at(i).first, shape().at(i).second,
                                    transformation_matrix());
    }
}

void wze::polygon::update_y() {
    size_t i;

    for (i = 0; i != shape().size(); ++i) {
        _points.at(i).second =
            y() + math::transform_y(shape().at(i).first, shape().at(i).second,
                                    transformation_matrix());
    }
}

float wze::polygon::circumradius() const {
    float circumradius;
    float temporary;

    circumradius = 0;
    std::for_each(shape().begin(), shape().end(),
                  [&](std::pair<float, float> const& vertex) -> void {
                      temporary = apply(math::length, vertex);
                      if (circumradius < temporary) {
                          circumradius = temporary;
                      }
                  });

    return circumradius;
}

std::pair<float, float>
wze::polygon::project(std::pair<float, float> const& vector) const {
    std::pair<float, float> projection;

    projection.first = std::numeric_limits<float>::max();
    projection.second = -std::numeric_limits<float>::max();
    std::for_each(points().begin(), points().end(),
                  [&](std::pair<float, float> const& point) -> void {
                      float scalar;

                      scalar = point.first * vector.first +
                               point.second * vector.second;
                      projection.first = std::min(projection.first, scalar);
                      projection.second = std::max(projection.second, scalar);
                  });

    return projection;
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
    _transformation_matrix =
        math::transformation_matrix(this->angle(), scale());
    update_x();
    update_y();
}

float wze::polygon::scale() const {
    return _scale;
}

void wze::polygon::set_scale(float scale) {
    _scale = scale;
    _points_radius = shape_radius() * this->scale();
    _transformation_matrix =
        math::transformation_matrix(angle(), this->scale());
    update_x();
    update_y();
}

std::array<float, 4> const& wze::polygon::transformation_matrix() const {
    return _transformation_matrix;
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
    _points.resize(this->shape().size());
    set_x(x);
    set_y(y);
    set_angle(angle);
    set_scale(scale);
    set_x_offset(x_offset);
    set_y_offset(y_offset);
    set_angle_offset(angle_offset);
    set_attach_x(attach_x);
    set_attach_y(attach_y);
    set_attach_angle(attach_angle);
    set_x_angle_lock(x_angle_lock);
    set_y_angle_lock(y_angle_lock);
}

bool wze::polygon::inside(float x, float y) const {
    std::vector<std::pair<float, float>>::const_iterator point1;
    std::vector<std::pair<float, float>>::const_iterator point2;
    float determinant;
    float temporary;

    if (points_radius() < math::length(x - this->x(), y - this->y())) {
        return false;
    }

    determinant = 0;
    for (point1 = points().begin(), point2 = points().begin() + 1;
         point1 != points().end(); ++point1, ++point2) {
        if (point2 == points().end()) {
            point2 = points().begin();
        }

        temporary = (point2->first - point1->first) * (y - point1->second) -
                    (x - point1->first) * (point2->second - point1->second);

        if ((0 < determinant && temporary < 0) ||
            (determinant < 0 && 0 < temporary)) {
            return false;
        }

        determinant = temporary;
    }

    return true;
}
