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

#include <wizard_engine/entity.hpp>
#include <wizard_engine/math.hpp>

void wze::entity::update_x(component& instance) const {
    if (!instance.attach_x()) {
        return;
    }
    if (instance.x_angle_lock()) {
        instance.set_x(x() + math::transform_x(instance.x_offset(),
                                               instance.y_offset(),
                                               transformation_matrix()));
    } else {
        instance.set_x(x() + instance.x_offset());
    }
}

void wze::entity::update_y(component& instance) const {
    if (!instance.attach_y()) {
        return;
    }
    if (instance.y_angle_lock()) {
        instance.set_y(y() + math::transform_y(instance.x_offset(),
                                               instance.y_offset(),
                                               transformation_matrix()));
    } else {
        instance.set_y(y() + instance.y_offset());
    }
}

void wze::entity::update_angle(component& instance) const {
    if (instance.attach_angle()) {
        instance.set_angle(angle() + instance.angle_offset());
    }
}

std::vector<std::weak_ptr<wze::component>> const&
wze::entity::components() const {
    return _components;
}

std::vector<std::weak_ptr<wze::component>>& wze::entity::components() {
    return _components;
}

float wze::entity::x() const {
    return _x;
}

void wze::entity::set_x(float x) {
    std::vector<std::weak_ptr<component>>::iterator iterator;
    std::shared_ptr<component> instance;

    _x = x;
    for (iterator = components().begin(); iterator != components().end();
         ++iterator) {
        instance = iterator->lock();
        if (instance) {
            update_x(*instance);
        } else {
            components().erase(iterator--);
        }
    }
}

float wze::entity::y() const {
    return _y;
}

void wze::entity::set_y(float y) {
    std::vector<std::weak_ptr<component>>::iterator iterator;
    std::shared_ptr<component> instance;

    _y = y;
    for (iterator = components().begin(); iterator != components().end();
         ++iterator) {
        instance = iterator->lock();
        if (instance) {
            update_y(*instance);
        } else {
            components().erase(iterator--);
        }
    }
}

float wze::entity::angle() const {
    return _angle;
}

void wze::entity::set_angle(float angle) {
    std::vector<std::weak_ptr<component>>::iterator iterator;
    std::shared_ptr<component> instance;

    _angle = angle;
    _transformation_matrix = math::transformation_matrix(this->angle(), 1);
    for (iterator = components().begin(); iterator != components().end();
         ++iterator) {
        instance = iterator->lock();
        if (instance) {
            update_x(*instance);
            update_y(*instance);
            update_angle(*instance);
        } else {
            components().erase(iterator--);
        }
    }
}

std::array<float, 4> const& wze::entity::transformation_matrix() const {
    return _transformation_matrix;
}

float wze::entity::x_offset() const {
    return _x_offset;
}

void wze::entity::set_x_offset(float x_offset) {
    _x_offset = x_offset;
}

float wze::entity::y_offset() const {
    return _y_offset;
}

void wze::entity::set_y_offset(float y_offset) {
    _y_offset = y_offset;
}

float wze::entity::angle_offset() const {
    return _angle_offset;
}

void wze::entity::set_angle_offset(float angle_offset) {
    _angle_offset = angle_offset;
}

bool wze::entity::attach_x() const {
    return _attach_x;
}

void wze::entity::set_attach_x(bool attach_x) {
    _attach_x = attach_x;
}

bool wze::entity::attach_y() const {
    return _attach_y;
}

void wze::entity::set_attach_y(bool attach_y) {
    _attach_y = attach_y;
}

bool wze::entity::attach_angle() const {
    return _attach_angle;
}

void wze::entity::set_attach_angle(bool attach_angle) {
    _attach_angle = attach_angle;
}

bool wze::entity::x_angle_lock() const {
    return _x_angle_lock;
}

void wze::entity::set_x_angle_lock(bool x_angle_lock) {
    _x_angle_lock = x_angle_lock;
}

bool wze::entity::y_angle_lock() const {
    return _y_angle_lock;
}

void wze::entity::set_y_angle_lock(bool y_angle_lock) {
    _y_angle_lock = y_angle_lock;
}

wze::entity::entity(std::vector<std::weak_ptr<component>> const& components,
                    float x, float y, float angle, float x_offset,
                    float y_offset, float angle_offset, bool attach_x,
                    bool attach_y, bool attach_angle, bool x_angle_lock,
                    bool y_angle_lock) {
    this->components() = components;
    set_x(x);
    set_y(y);
    set_angle(angle);
    set_x_offset(x_offset);
    set_y_offset(y_offset);
    set_angle_offset(angle_offset);
    set_attach_x(attach_x);
    set_attach_y(attach_y);
    set_attach_angle(attach_angle);
    set_x_angle_lock(x_angle_lock);
    set_y_angle_lock(y_angle_lock);
}

void wze::entity::recompose() {
    std::vector<std::weak_ptr<component>>::iterator iterator;
    std::shared_ptr<component> instance;

    for (iterator = components().begin(); iterator != components().end();
         ++iterator) {
        instance = iterator->lock();
        if (instance) {
            update_x(*instance);
            update_y(*instance);
            update_angle(*instance);
        } else {
            components().erase(iterator--);
        }
    }
}
