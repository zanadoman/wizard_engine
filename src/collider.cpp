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
#define __WIZARD_ENGINE_INTERNAL

#include <wizard_engine/collider.hpp>
#include <wizard_engine/math.hpp>

std::array<std::vector<wze::collider*>, std::numeric_limits<uint8_t>::max()>
    wze::collider::_worlds = {};

void wze::collider::push_x(float force) {
    std::vector<collider*> contacts;

    contacts = collider::contacts();
    if (!(bool)contacts.size()) {
        return;
    }

    force -= contacts_mass(contacts);
    if (0 < force) {
        std::ranges::for_each(
            contacts, [this, force](collider* contact) -> void {
                if (resolve_x(*contact, contact->mass() + force)) {
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
    if (!(bool)contacts.size()) {
        return;
    }

    force -= contacts_mass(contacts);
    if (0 < force) {
        std::ranges::for_each(
            contacts, [this, force](collider* contact) -> void {
                if (resolve_y(*contact, contact->mass() + force)) {
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
    if (!(bool)contacts.size()) {
        return;
    }

    force -= contacts_mass(contacts);
    if (0 < force) {
        std::ranges::for_each(
            contacts, [this, force](collider* contact) -> void {
                if (resolve_xy(*contact, contact->mass() + force)) {
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
        _worlds.at(world()), [this, &contacts](collider* contact) -> void {
            if (contact != this && body().overlap(contact->body())) {
                contacts.push_back(contact);
            }
        });

    return contacts;
}

float wze::collider::contacts_mass(std::vector<collider*> const& contacts) {
    float mass;

    mass = 0;
    std::ranges::for_each(contacts, [&mass](collider const* contact) -> void {
        mass += contact->mass();
    });

    return mass;
}

void wze::collider::resolve_x(collider const& other) {
    float collision;

    collision = body().collision(other.body());
    if (!(bool)collision) {
        return;
    }

    collision += math::epsilon;
    _body.set_x(body().x() +
                (body().x() < other.body().x() ? -collision : collision));
}

bool wze::collider::resolve_x(collider& other, float force) {
    float collision;
    float other_movement;
    float movement;

    collision = body().collision(other.body());
    if (!(bool)collision) {
        return false;
    }

    collision += math::epsilon;
    other_movement = collision * force / (force + other.mass());
    movement = collision - other_movement;

    if (body().x() < other.body().x()) {
        _body.set_x(body().x() - movement);
        other._body.set_x(other.body().x() + other_movement);
    } else {
        _body.set_x(body().x() + movement);
        other._body.set_x(other.body().x() - other_movement);
    }

    return true;
}

void wze::collider::resolve_y(collider const& other) {
    float collision;

    collision = body().collision(other.body());
    if (!(bool)collision) {
        return;
    }

    collision += math::epsilon;
    _body.set_y(body().y() +
                (body().y() < other.body().y() ? -collision : collision));
}

bool wze::collider::resolve_y(collider& other, float force) {
    float collision;
    float other_movement;
    float movement;

    collision = body().collision(other.body());
    if (!(bool)collision) {
        return false;
    }

    collision += math::epsilon;
    other_movement = collision * force / (force + other.mass());
    movement = collision - other_movement;

    if (body().y() < other.body().y()) {
        _body.set_y(body().y() - movement);
        other._body.set_y(other.body().y() + other_movement);
    } else {
        _body.set_y(body().y() + movement);
        other._body.set_y(other.body().y() - other_movement);
    }

    return true;
}

void wze::collider::resolve_xy(collider const& other) {
    float difference_x;
    float difference_y;
    float collision;
    float normalization;

    difference_x = other.body().x() - body().x();
    difference_y = other.body().y() - body().y();
    if (!(bool)difference_x && !(bool)difference_y) {
        return;
    }

    collision = body().collision(other.body());
    if (!(bool)collision) {
        return;
    }

    normalization = sqrtf(powf(difference_x, 2) + powf(difference_y, 2));
    difference_x /= normalization;
    difference_y /= normalization;

    collision += math::epsilon;
    _body.set_x(body().x() - difference_x * collision);
    _body.set_y(body().y() - difference_y * collision);
}

bool wze::collider::resolve_xy(collider& other, float force) {
    float difference_x;
    float difference_y;
    float collision;
    float normalization;
    float other_movement;
    float movement;

    difference_x = other.body().x() - body().x();
    difference_y = other.body().y() - body().y();
    if (!(bool)difference_x && !(bool)difference_y) {
        return false;
    }

    collision = body().collision(other.body());
    if (!(bool)collision) {
        return false;
    }

    normalization = sqrtf(powf(difference_x, 2) + powf(difference_y, 2));
    difference_x /= normalization;
    difference_y /= normalization;

    collision += math::epsilon;
    other_movement = collision * force / (force + other.mass());
    movement = collision - other_movement;

    _body.set_x(body().x() - difference_x * movement);
    _body.set_y(body().y() - difference_y * movement);
    other._body.set_x(other.body().x() + difference_x * other_movement);
    other._body.set_y(other.body().y() + difference_y * other_movement);

    return true;
}

void wze::collider::align_entities() const {
    std::ranges::for_each(_worlds.at(world()), [](collider* instance) -> void {
        if (instance->entity::x() != instance->body().x()) {
            instance->entity::set_x(instance->body().x());
        }
        if (instance->entity::y() != instance->body().y()) {
            instance->entity::set_y(instance->body().y());
        }
        if (instance->entity::angle() != instance->body().angle()) {
            instance->entity::set_angle(instance->body().angle());
        }
    });
}

wze::polygon const& wze::collider::body() const {
    return _body;
}

void wze::collider::set_body(polygon const& body) {
    _body = body;
    entity::set_x(this->body().x());
    entity::set_y(this->body().y());
    entity::set_angle(this->body().angle());
    entity::set_x_offset(this->body().x_offset());
    entity::set_y_offset(this->body().y_offset());
    entity::set_angle_offset(this->body().angle_offset());
    entity::set_attach_x(this->body().attach_x());
    entity::set_attach_y(this->body().attach_y());
    entity::set_attach_angle(this->body().attach_angle());
    entity::set_x_angle_lock(this->body().x_angle_lock());
    entity::set_y_angle_lock(this->body().y_angle_lock());
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
    if (this->world() != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(this->world())
            .erase(std::ranges::find(_worlds.at(this->world()), this));
    }
    _world = world;
    if (this->world() != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(this->world()).push_back(this);
    }
}

float wze::collider::x() const {
    return _body.x();
}

void wze::collider::set_x(float x) {
    _body.set_x(x);

    if (world() == std::numeric_limits<uint8_t>::max()) {
        entity::set_x(body().x());
        return;
    }

    push_x(force());
    align_entities();
}

float wze::collider::y() const {
    return body().y();
}

void wze::collider::set_y(float y) {
    _body.set_y(y);

    if (world() == std::numeric_limits<uint8_t>::max()) {
        entity::set_y(body().y());
        return;
    }

    push_y(force());
    align_entities();
}

float wze::collider::angle() const {
    return _body.angle();
}

void wze::collider::set_angle(float angle) {
    _body.set_angle(angle);

    if (world() == std::numeric_limits<uint8_t>::max()) {
        entity::set_angle(body().angle());
        return;
    }

    push_xy(force());
    align_entities();
}

float wze::collider::scale() const {
    return body().scale();
}

void wze::collider::set_scale(float scale) {
    _body.set_scale(scale);

    if (world() == std::numeric_limits<uint8_t>::max()) {
        return;
    }

    push_xy(force());
    align_entities();
}

float wze::collider::x_offset() const {
    return _body.x_offset();
}

void wze::collider::set_x_offset(float x_offset) {
    _body.set_x_offset(x_offset);
    entity::set_x_offset(body().x_offset());
}

float wze::collider::y_offset() const {
    return body().y_offset();
}

void wze::collider::set_y_offset(float y_offset) {
    _body.set_y_offset(y_offset);
    entity::set_y_offset(body().y_offset());
}

float wze::collider::angle_offset() const {
    return body().angle_offset();
}

void wze::collider::set_angle_offset(float angle_offset) {
    _body.set_angle_offset(angle_offset);
    entity::set_angle_offset(body().angle_offset());
}

bool wze::collider::attach_x() const {
    return body().attach_x();
}

void wze::collider::set_attach_x(bool attach_x) {
    _body.set_attach_x(attach_x);
    entity::set_attach_x(body().attach_x());
}

bool wze::collider::attach_y() const {
    return body().attach_y();
}

void wze::collider::set_attach_y(bool attach_y) {
    _body.set_attach_y(attach_y);
    entity::set_attach_y(body().attach_y());
}

bool wze::collider::attach_angle() const {
    return body().attach_angle();
}

void wze::collider::set_attach_angle(bool attach_angle) {
    _body.set_attach_angle(attach_angle);
    entity::set_attach_angle(attach_angle);
}

bool wze::collider::x_angle_lock() const {
    return body().x_angle_lock();
}

void wze::collider::set_x_angle_lock(bool x_angle_lock) {
    _body.set_x_angle_lock(x_angle_lock);
    entity::set_x_angle_lock(body().x_angle_lock());
}

bool wze::collider::y_angle_lock() const {
    return body().y_angle_lock();
}

void wze::collider::set_y_angle_lock(bool y_angle_lock) {
    _body.set_y_angle_lock(y_angle_lock);
    entity::set_y_angle_lock(body().y_angle_lock());
}

wze::collider::collider(polygon const& body, float force, float mass,
                        uint8_t world,
                        std::vector<std::weak_ptr<component>> const& components)
    : entity(components), _world(std::numeric_limits<uint8_t>::max()) {
    set_body(body);
    set_force(force);
    set_mass(mass);
    set_world(world);
}

wze::collider::collider(collider const& other)
    : entity(other), _world(std::numeric_limits<uint8_t>::max()) {
    *this = other;
}

wze::collider::~collider() {
    if (world() != std::numeric_limits<uint8_t>::max()) {
        _worlds.at(world()).erase(std::ranges::find(_worlds.at(world()), this));
    }
}

wze::collider& wze::collider::operator=(collider const& other) {
    if (&other != this) {
        entity::operator=(other);
        set_body(other.body());
        set_force(other.force());
        set_mass(other.mass());
        set_world(other.world());
    }

    return *this;
}
