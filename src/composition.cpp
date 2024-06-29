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

#include <wizard_engine/composition.hpp>
#include <wizard_engine/math.hpp>

wze::entity::entity(float x, float y, float angle,
                    std::vector<std::weak_ptr<component>> const& components) {
    _x = x;
    _y = y;
    _components = components;
    set_angle(angle);
}

void wze::entity::update_x(component& instance) {
    if (!instance.attach_x()) {
        return;
    }
    if (instance.x_angle_lock()) {
        instance.set_x(_x + math::rotate_x(instance.x_offset(),
                                           instance.y_offset(),
                                           _rotation_matrix));
    } else {
        instance.set_x(_x + instance.x_offset());
    }
}

void wze::entity::update_y(component& instance) {
    if (!instance.attach_y()) {
        return;
    }
    if (instance.y_angle_lock()) {
        instance.set_y(_y + math::rotate_y(instance.x_offset(),
                                           instance.y_offset(),
                                           _rotation_matrix));
    } else {
        instance.set_y(_y + instance.y_offset());
    }
}

void wze::entity::update_angle(component& instance) {
    if (instance.attach_angle()) {
        instance.set_angle(_angle + instance.angle_offset());
    }
}

float wze::entity::x() const {
    return _x;
}

void wze::entity::set_x(float x) {
    std::vector<std::weak_ptr<component>>::iterator iterator;
    std::shared_ptr<component> instance;

    _x = x;
    for (iterator = _components.begin(); iterator != _components.end();) {
        if ((instance = iterator->lock())) {
            ++iterator;
            update_x(*instance);
        } else {
            _components.erase(iterator);
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
    for (iterator = _components.begin(); iterator != _components.end();) {
        if ((instance = iterator->lock())) {
            ++iterator;
            update_y(*instance);
        } else {
            _components.erase(iterator);
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
    _rotation_matrix = math::rotation_matrix(-_angle);
    for (iterator = _components.begin(); iterator != _components.end();) {
        if ((instance = iterator->lock())) {
            ++iterator;
            update_x(*instance);
            update_y(*instance);
            update_angle(*instance);
        } else {
            _components.erase(iterator);
        }
    }
}

std::vector<std::weak_ptr<wze::component>>& wze::entity::components() {
    return _components;
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

std::unique_ptr<wze::entity>
wze::entity::create(float x, float y, float angle,
                    std::vector<std::weak_ptr<component>> const& components) {
    return std::unique_ptr<entity>(new entity(x, y, angle, components));
}
