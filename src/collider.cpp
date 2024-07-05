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

#include <wizard_engine/collider.hpp>

std::array<std::vector<wze::collider*>, std::numeric_limits<uint8_t>::max()>
    wze::collider::_worlds = {};

void wze::collider::push_x(float force) {
    std::vector<collider*> contacts;

    contacts = collider::contacts();
    force -= contacts_mass(contacts);

    if (0 < force) {
        std::ranges::for_each(
            contacts, [this, force](collider* contact) -> void {
                if (resolve_x(*contact, contact->_mass + force)) {
                    contact->push_x(force);
                    resolve_x(*contact);
                }
            });
    } else {
        std::ranges::for_each(
            contacts,
            [this](collider const* contact) -> void { resolve_x(*contact); });
    }
}

void wze::collider::push_y(float force) {
    std::vector<collider*> contacts;

    contacts = collider::contacts();
    force -= contacts_mass(contacts);

    if (0 < force) {
        std::ranges::for_each(
            contacts, [this, force](collider* contact) -> void {
                if (resolve_y(*contact, contact->_mass + force)) {
                    contact->push_y(force);
                    resolve_y(*contact);
                }
            });
    } else {
        std::ranges::for_each(
            contacts,
            [this](collider const* contact) -> void { resolve_y(*contact); });
    }
}

void wze::collider::push_xy(float force) {
    std::vector<collider*> contacts;

    contacts = collider::contacts();
    force -= contacts_mass(contacts);

    if (0 < force) {
        std::ranges::for_each(
            contacts, [this, force](collider* contact) -> void {
                if (resolve_xy(*contact, contact->_mass + force)) {
                    contact->push_xy(force);
                    resolve_xy(*contact);
                }
            });
    } else {
        std::ranges::for_each(
            contacts,
            [this](collider const* contact) -> void { resolve_xy(*contact); });
    }
}

std::vector<wze::collider*> wze::collider::contacts() const {
    std::vector<collider*> contacts;

    std::ranges::for_each(
        _worlds.at(_world), [this, &contacts](collider* contact) -> void {
            if (contact != this && _body.overlap(contact->_body)) {
                contacts.push_back(contact);
            }
        });

    return contacts;
}

float wze::collider::contacts_mass(
    std::vector<collider*> const& contacts) const {
    float mass;

    mass = 0;
    std::ranges::for_each(contacts, [&mass](collider const* contact) -> void {
        mass += contact->_mass;
    });

    return mass;
}

void wze::collider::resolve_x(collider const& other) {
    float collision;

    if (!(collision = _body.collision(other._body))) {
        return;
    }

    _body.set_x(_body.x() +
                (_body.x() < other._body.x() ? -collision : collision));
}

bool wze::collider::resolve_x(collider& other, float force) {
    float collision;
    float movement;
    float other_movement;

    if (!(collision = _body.collision(other._body))) {
        return false;
    }

    other_movement = collision * force / (force + other._mass);
    movement = collision - other_movement;

    if (_body.x() < other._body.x()) {
        _body.set_x(_body.x() - movement);
        other._body.set_x(other._body.x() + other_movement);
    } else {
        _body.set_x(_body.x() + movement);
        other._body.set_x(other._body.x() - other_movement);
    }

    return true;
}

void wze::collider::resolve_y(collider const& other) {
    float collision;

    if (!(collision = _body.collision(other._body))) {
        return;
    }

    _body.set_y(_body.y() +
                (_body.y() < other._body.y() ? -collision : collision));
}

bool wze::collider::resolve_y(collider& other, float force) {
    float collision;
    float movement;
    float other_movement;

    if (!(collision = _body.collision(other._body))) {
        return false;
    }

    other_movement = collision * force / (force + other._mass);
    movement = collision - other_movement;

    if (_body.y() < other._body.y()) {
        _body.set_y(_body.y() - movement);
        other._body.set_y(other._body.y() + other_movement);
    } else {
        _body.set_y(_body.y() + movement);
        other._body.set_y(other._body.y() - other_movement);
    }

    return true;
}

void wze::collider::resolve_xy(collider const& other) {
    float difference_x;
    float difference_y;
    float collision;
    float normalization;

    difference_x = other._body.x() - _body.x();
    difference_y = other._body.y() - _body.y();
    if (!difference_x && !difference_y) {
        return;
    }

    if (!(collision = _body.collision(other._body))) {
        return;
    }

    normalization = sqrtf(powf(difference_x, 2) + powf(difference_y, 2));
    difference_x /= normalization;
    difference_y /= normalization;

    _body.set_x(_body.x() - difference_x * collision);
    _body.set_y(_body.y() - difference_y * collision);
}

bool wze::collider::resolve_xy(collider& other, float force) {
    float difference_x;
    float difference_y;
    float collision;
    float normalization;
    float other_movement;
    float movement;

    difference_x = other._body.x() - _body.x();
    difference_y = other._body.y() - _body.y();
    if (!difference_x && !difference_y) {
        return false;
    }

    if (!(collision = _body.collision(other._body))) {
        return false;
    }

    normalization = sqrtf(powf(difference_x, 2) + powf(difference_y, 2));
    difference_x /= normalization;
    difference_y /= normalization;

    other_movement = collision * force / (force + other._mass);
    movement = collision - other_movement;

    _body.set_x(_body.x() - difference_x * movement);
    _body.set_y(_body.y() - difference_y * movement);
    other._body.set_x(other._body.x() + difference_x * other_movement);
    other._body.set_y(other._body.y() + difference_y * other_movement);

    return true;
}

void wze::collider::update_entities() {
    std::ranges::for_each(_worlds.at(_world), [](collider* instance) -> void {
        if (instance->x() != instance->_body.x()) {
            instance->entity::set_x(instance->_body.x());
        }
        if (instance->y() != instance->_body.y()) {
            instance->entity::set_y(instance->_body.y());
        }
        if (instance->angle() != instance->_body.angle()) {
            instance->entity::set_angle(instance->_body.angle());
        }
        if (instance->scale() != instance->_body.scale()) {
            instance->entity::set_scale(instance->_body.scale());
        }
    });
}

wze::collider::collider(polygon const& body, float force, float mass,
                        uint8_t world,
                        std::vector<std::weak_ptr<component>> const& components,
                        float x_offset, float y_offset, float angle_offset,
                        bool attach_x, bool attach_y, bool attach_angle,
                        bool x_angle_lock, bool y_angle_lock)
    : entity(components, body.x(), body.y(), body.angle(), body.scale(),
             x_offset, y_offset, angle_offset, attach_x, attach_y, attach_angle,
             x_angle_lock, y_angle_lock),
      _body(body) {
    _force = force;
    _mass = mass;
    _world = world;
    if (_world != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(_world).push_back(this);
    }
}

wze::polygon const& wze::collider::body() const {
    return _body;
}

void wze::collider::set_body(polygon const& body) {
    _body = body;
    entity::set_x(_body.x());
    entity::set_y(_body.y());
    entity::set_angle(_body.angle());
    entity::set_scale(_body.scale());
}

float wze::collider::force() const {
    return _force;
}

void wze::collider::set_force(float force) {
    _force = force;
}

float wze::collider::mass() const {
    return _mass;
}

void wze::collider::set_mass(float mass) {
    _mass = mass;
}

uint8_t wze::collider::world() const {
    return _world;
}

void wze::collider::set_world(uint8_t world) {
    if (_world != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(_world).erase(std::ranges::find(_worlds.at(_world), this));
    }
    _world = world;
    if (_world != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(_world).push_back(this);
    }
}

float wze::collider::x() const {
    return entity::x();
}

void wze::collider::set_x(float x) {
    _body.set_x(x);

    if (_world == std::numeric_limits<uint8_t>::max()) {
        entity::set_x(_body.x());
        return;
    }

    push_x(_force);
    update_entities();
}

float wze::collider::y() const {
    return entity::y();
}

void wze::collider::set_y(float y) {
    _body.set_y(y);

    if (_world == std::numeric_limits<uint8_t>::max()) {
        entity::set_y(_body.y());
        return;
    }

    push_y(_force);
    update_entities();
}

float wze::collider::angle() const {
    return entity::angle();
}

void wze::collider::set_angle(float angle) {
    _body.set_angle(angle);

    if (_world == std::numeric_limits<uint8_t>::max()) {
        entity::set_angle(_body.angle());
        return;
    }

    push_xy(_force);
    update_entities();
}

float wze::collider::scale() const {
    return entity::scale();
}

void wze::collider::set_scale(float scale) {
    _body.set_angle(scale);

    if (_world == std::numeric_limits<uint8_t>::max()) {
        entity::set_scale(_body.scale());
        return;
    }

    push_xy(_force);
    update_entities();
}

std::unique_ptr<wze::collider> wze::collider::create(
    polygon const& body, float force, float mass, uint8_t world,
    std::vector<std::weak_ptr<component>> const& components, float x_offset,
    float y_offset, float angle_offset, bool attach_x, bool attach_y,
    bool attach_angle, bool x_angle_lock, bool y_angle_lock) {
    return std::unique_ptr<collider>(new collider(
        body, force, mass, world, components, x_offset, y_offset, angle_offset,
        attach_x, attach_y, attach_angle, x_angle_lock, y_angle_lock));
}

wze::collider::~collider() {
    if (_world != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(_world).erase(std::ranges::find(_worlds.at(_world), this));
    }
}
