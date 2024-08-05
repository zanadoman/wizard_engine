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

#include <wizard_engine/sprite.hpp>

float wze::sprite::x() const {
    return _x;
}

void wze::sprite::set_x(float x) {
    _x = x;
}

float wze::sprite::y() const {
    return _y;
}

void wze::sprite::set_y(float y) {
    _y = y;
}

float wze::sprite::z() const {
    return _z;
}

void wze::sprite::set_z(float z) {
    _z = z;
}

float wze::sprite::angle() const {
    return _angle;
}

void wze::sprite::set_angle(float angle) {
    _angle = angle;
}

float wze::sprite::width() const {
    return _width;
}

void wze::sprite::set_width(float width) {
    _width = width;
}

float wze::sprite::height() const {
    return _height;
}

void wze::sprite::set_height(float height) {
    _height = height;
}

bool wze::sprite::spatial() const {
    return _spatial;
}

void wze::sprite::set_spatial(bool spatial) {
    _spatial = spatial;
}

std::shared_ptr<wze::texture> const& wze::sprite::texture() const {
    return _texture;
}

void wze::sprite::set_texture(std::shared_ptr<wze::texture> const& texture) {
    _texture = texture;
}

uint8_t wze::sprite::color_r() const {
    return _color_r;
}

void wze::sprite::set_color_r(uint8_t color_r) {
    _color_r = color_r;
}

uint8_t wze::sprite::color_g() const {
    return _color_g;
}

void wze::sprite::set_color_g(uint8_t color_g) {
    _color_g = color_g;
}

uint8_t wze::sprite::color_b() const {
    return _color_b;
}

void wze::sprite::set_color_b(uint8_t color_b) {
    _color_b = color_b;
}

uint8_t wze::sprite::color_a() const {
    return _color_a;
}

void wze::sprite::set_color_a(uint8_t color_a) {
    _color_a = color_a;
}

wze::flip wze::sprite::flip() const {
    return _flip;
}

void wze::sprite::set_flip(enum flip flip) {
    _flip = flip;
}

bool wze::sprite::visible() const {
    return _visible;
}

void wze::sprite::set_visible(bool visible) {
    _visible = visible;
}

uint8_t wze::sprite::priority() const {
    return _priority;
}

void wze::sprite::set_priority(uint8_t priority) {
    _priority = priority;
}

bool wze::sprite::animated() const {
    return _animated;
}

void wze::sprite::set_animated(bool animated) {
    _animated = animated;
}

float wze::sprite::x_offset() const {
    return _x_offset;
}

void wze::sprite::set_x_offset(float x_offset) {
    _x_offset = x_offset;
}

float wze::sprite::y_offset() const {
    return _y_offset;
}

void wze::sprite::set_y_offset(float y_offset) {
    _y_offset = y_offset;
}

float wze::sprite::angle_offset() const {
    return _angle_offset;
}

void wze::sprite::set_angle_offset(float angle_offset) {
    _angle_offset = angle_offset;
}

bool wze::sprite::attach_x() const {
    return _attach_x;
}

void wze::sprite::set_attach_x(bool attach_x) {
    _attach_x = attach_x;
}

bool wze::sprite::attach_y() const {
    return _attach_y;
}

void wze::sprite::set_attach_y(bool attach_y) {
    _attach_y = attach_y;
}

bool wze::sprite::attach_angle() const {
    return _attach_angle;
}

void wze::sprite::set_attach_angle(bool attach_angle) {
    _attach_angle = attach_angle;
}

bool wze::sprite::x_angle_lock() const {
    return _x_angle_lock;
}

void wze::sprite::set_x_angle_lock(bool x_angle_lock) {
    _x_angle_lock = x_angle_lock;
}

bool wze::sprite::y_angle_lock() const {
    return _y_angle_lock;
}

void wze::sprite::set_y_angle_lock(bool y_angle_lock) {
    _y_angle_lock = y_angle_lock;
}

wze::sprite::sprite(float x, float y, float z, float angle, float width,
                    float height, bool spatial,
                    std::shared_ptr<wze::texture> const& texture,
                    uint8_t color_r, uint8_t color_g, uint8_t color_b,
                    uint8_t color_a, enum flip flip, bool visible,
                    uint8_t priority, bool animated, float x_offset,
                    float y_offset, float angle_offset, bool attach_x,
                    bool attach_y, bool attach_angle, bool x_angle_lock,
                    bool y_angle_lock) {
    set_x(x);
    set_y(y);
    set_z(z);
    set_angle(angle);
    set_width(width);
    set_height(height);
    set_spatial(spatial);
    set_texture(texture);
    set_color_r(color_r);
    set_color_g(color_g);
    set_color_b(color_b);
    set_color_a(color_a);
    set_flip(flip);
    set_visible(visible);
    set_priority(priority);
    set_animated(animated);
    set_x_offset(x_offset);
    set_y_offset(y_offset);
    set_angle_offset(angle_offset);
    set_attach_x(attach_x);
    set_attach_y(attach_y);
    set_attach_angle(attach_angle);
    set_x_angle_lock(x_angle_lock);
    set_y_angle_lock(y_angle_lock);
}
