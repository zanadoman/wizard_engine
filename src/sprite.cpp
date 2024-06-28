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

#include <wizard_engine/sprite.hpp>

wze::sprite::sprite(float_t x, float_t y, float_t z, float_t angle,
                    float_t width, float_t height, bool spatial,
                    std::shared_ptr<wze::texture> const& texture,
                    uint8_t color_r, uint8_t color_g, uint8_t color_b,
                    uint8_t color_a, enum flip flip, bool visible,
                    uint8_t priority, bool active, float_t x_offset,
                    float_t y_offset, float_t angle_offset, bool attach_x,
                    bool attach_y, bool attach_angle, bool x_angle_lock,
                    bool y_angle_lock) {
    _x = x;
    _y = y;
    _z = z;
    _angle = angle;
    _width = width;
    _height = height;
    _spatial = spatial;
    _texture = texture;
    _color_r = color_r;
    _color_g = color_g;
    _color_b = color_b;
    _color_a = color_a;
    _flip = flip;
    _visible = visible;
    _priority = priority;
    _active = active;
    _x_offset = x_offset;
    _y_offset = y_offset;
    _angle_offset = angle_offset;
    _attach_x = attach_x;
    _attach_y = attach_y;
    _attach_angle = attach_angle;
    _x_angle_lock = x_angle_lock;
    _y_angle_lock = y_angle_lock;
}

float_t wze::sprite::x() const {
    return _x;
}

void wze::sprite::set_x(float_t x) {
    _x = x;
}

float_t wze::sprite::y() const {
    return _y;
}

void wze::sprite::set_y(float_t y) {
    _y = y;
}

float_t wze::sprite::z() const {
    return _z;
}

void wze::sprite::set_z(float_t z) {
    _z = z;
}

float_t wze::sprite::angle() const {
    return _angle;
}

void wze::sprite::set_angle(float_t angle) {
    _angle = angle;
}

float_t wze::sprite::width() const {
    return _width;
}

void wze::sprite::set_width(float_t width) {
    _width = width;
}

float_t wze::sprite::height() const {
    return _height;
}

void wze::sprite::set_height(float_t height) {
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

bool wze::sprite::active() const {
    return _active;
}

void wze::sprite::set_active(bool active) {
    _active = active;
}

float_t wze::sprite::x_offset() const {
    return _x_offset;
}

void wze::sprite::set_x_offset(float_t x_offset) {
    _x_offset = x_offset;
}

float_t wze::sprite::y_offset() const {
    return _y_offset;
}

void wze::sprite::set_y_offset(float_t y_offset) {
    _y_offset = y_offset;
}

float_t wze::sprite::angle_offset() const {
    return _angle_offset;
}

void wze::sprite::set_angle_offset(float_t angle_offset) {
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

std::unique_ptr<wze::sprite> wze::sprite::create(
    float_t x, float_t y, float_t z, float_t angle, float_t width,
    float_t height, bool spatial, std::shared_ptr<wze::texture> const& texture,
    uint8_t color_r, uint8_t color_g, uint8_t color_b, uint8_t color_a,
    enum flip flip, bool visible, uint8_t priority, bool active,
    float_t x_offset, float_t y_offset, float_t angle_offset, bool attach_x,
    bool attach_y, bool attach_angle, bool x_angle_lock, bool y_angle_lock) {
    return std::unique_ptr<sprite>(
        new sprite(x, y, z, angle, width, height, spatial, texture, color_r,
                   color_g, color_b, color_a, flip, visible, priority, active,
                   x_offset, y_offset, angle_offset, attach_x, attach_y,
                   attach_angle, x_angle_lock, y_angle_lock));
}
