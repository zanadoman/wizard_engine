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

#include <wizard_engine/audio.hpp>
#include <wizard_engine/camera.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/math.hpp>
#include <wizard_engine/speaker.hpp>

std::vector<wze::speaker*> wze::speaker::_instances = {};

void wze::speaker::set_angle([[maybe_unused]] float _) {}

float wze::speaker::angle_offset() const {
    return 0;
}

bool wze::speaker::attach_angle() const {
    return false;
}

std::vector<wze::speaker*> const& wze::speaker::instances() {
    return _instances;
}

std::shared_ptr<wze::sound> const& wze::speaker::sound() const {
    return _sound;
}

void wze::speaker::set_sound(std::shared_ptr<wze::sound> const& sound) {
    _sound = sound;
}

int8_t wze::speaker::volume() const {
    return (int8_t)Mix_Volume(_channel, -1);
}

// NOLINTNEXTLINE(readability-make-member-function-const)
void wze::speaker::set_volume(int8_t volume) {
    Mix_Volume(_channel, volume);
}

float wze::speaker::range() const {
    return _range;
}

void wze::speaker::set_range(float range) {
    _range = range;
}

bool wze::speaker::auto_panning() const {
    return _auto_panning;
}

void wze::speaker::set_auto_panning(bool auto_panning) {
    _auto_panning = auto_panning;
}

float wze::speaker::x() const {
    return _x;
}

void wze::speaker::set_x(float x) {
    _x = x;
}

float wze::speaker::y() const {
    return _y;
}

void wze::speaker::set_y(float y) {
    _y = y;
}

float wze::speaker::z() const {
    return _z;
}

void wze::speaker::set_z(float z) {
    _z = z;
}

bool wze::speaker::spatial() const {
    return _spatial;
}

void wze::speaker::set_spatial(bool spatial) {
    _spatial = spatial;
}

float wze::speaker::x_offset() const {
    return _x_offset;
}

void wze::speaker::set_x_offset(float x_offset) {
    _x_offset = x_offset;
}

float wze::speaker::y_offset() const {
    return _y_offset;
}

void wze::speaker::set_y_offset(float y_offset) {
    _y_offset = y_offset;
}

bool wze::speaker::attach_x() const {
    return _attach_x;
}

void wze::speaker::set_attach_x(bool attach_x) {
    _attach_x = attach_x;
}

bool wze::speaker::attach_y() const {
    return _attach_y;
}

void wze::speaker::set_attach_y(bool attach_y) {
    _attach_y = attach_y;
}

bool wze::speaker::x_angle_lock() const {
    return _x_angle_lock;
}

void wze::speaker::set_x_angle_lock(bool x_angle_lock) {
    _x_angle_lock = x_angle_lock;
}

bool wze::speaker::y_angle_lock() const {
    return _y_angle_lock;
}

void wze::speaker::set_y_angle_lock(bool y_angle_lock) {
    _y_angle_lock = y_angle_lock;
}

bool wze::speaker::playing() const {
    return (bool)Mix_Playing(_channel);
}

bool wze::speaker::paused() const {
    return (bool)Mix_Paused(_channel);
}

wze::speaker::speaker(std::shared_ptr<wze::sound> const& sound, int8_t volume,
                      float range, bool auto_panning, float x, float y, float z,
                      bool spatial, float x_offset, float y_offset,
                      bool attach_x, bool attach_y, bool x_angle_lock,
                      bool y_angle_lock) {
    _channel = audio::request_channel();
    set_sound(sound);
    set_volume(volume);
    set_range(range);
    set_auto_panning(auto_panning);
    set_x(x);
    set_y(y);
    set_z(z);
    set_spatial(spatial);
    set_x_offset(x_offset);
    set_y_offset(y_offset);
    set_attach_x(attach_x);
    set_attach_y(attach_y);
    set_x_angle_lock(x_angle_lock);
    set_y_angle_lock(y_angle_lock);
    _instances.push_back(this);
}

wze::speaker::speaker(speaker const& other) {
    _channel = audio::request_channel();
    *this = other;
    _instances.push_back(this);
}

wze::speaker::speaker(speaker&& other) noexcept(false) {
    _channel = audio::request_channel();
    *this = std::move(other);
    _instances.push_back(this);
}

wze::speaker::~speaker() {
    _instances.erase(std::find(instances().begin(), instances().end(), this));
    audio::drop_channel(_channel);
}

wze::speaker& wze::speaker::operator=(speaker const& other) {
    if (&other != this) {
        set_sound(other.sound());
        set_volume(other.volume());
        set_range(other.range());
        set_auto_panning(other.auto_panning());
        set_x(other.x());
        set_y(other.y());
        set_z(other.z());
        set_spatial(other.spatial());
        set_x_offset(other.x_offset());
        set_y_offset(other.y_offset());
        set_attach_x(other.attach_x());
        set_attach_y(other.attach_y());
        set_x_angle_lock(other.x_angle_lock());
        set_y_angle_lock(other.y_angle_lock());
    }

    return *this;
}

wze::speaker& wze::speaker::operator=(speaker&& other) noexcept(false) {
    if (&other != this) {
        *this = other;
        std::swap(_channel, other._channel);
    }

    return *this;
}

// NOLINTNEXTLINE(readability-make-member-function-const)
void wze::speaker::play(uint16_t fade_in, uint16_t loops) {
    if (Mix_FadeInChannel(_channel, sound().get(), loops, fade_in) == -1) {
        throw exception(Mix_GetError());
    }
}

// NOLINTNEXTLINE(readability-make-member-function-const)
void wze::speaker::pause() {
    Mix_Pause(_channel);
}

// NOLINTNEXTLINE(readability-make-member-function-const)
void wze::speaker::resume() {
    Mix_Resume(_channel);
}

// NOLINTNEXTLINE(readability-make-member-function-const)
void wze::speaker::stop(uint16_t fade_out) {
    Mix_FadeOutChannel(_channel, fade_out);
}

// NOLINTNEXTLINE(readability-make-member-function-const)
void wze::speaker::align_panning() {
    constexpr uint16_t circle = 360;
    constexpr uint16_t top = 270;
    constexpr uint16_t bottom = 90;

    float x_distance;
    float y_distance;
    float z_ratio;
    float distance;
    int32_t angle;
    float left;
    float right;

    x_distance = x() - camera::x();
    y_distance = y() - camera::y();
    z_ratio = spatial() ? 1 - abs(z() - camera::z()) / range() : 1;
    distance = math::length(x_distance, y_distance);
    angle = (int32_t)roundf(math::to_degrees(
                math::angle(x_distance, y_distance) - camera::angle())) %
            circle;
    if (angle < 0) {
        angle += circle;
    }

    if (range() <= distance || z_ratio <= 0) {
        left = 0;
        right = 0;
    } else if (bottom < angle && angle < top) {
        left = 1 - distance / range();
        right = powf(left, 2);
        if (spatial()) {
            left *= z_ratio;
            right *= z_ratio;
        }
    } else if (top < angle || angle < bottom) {
        right = 1 - distance / range();
        left = powf(right, 2);
        if (spatial()) {
            right *= z_ratio;
            left *= z_ratio;
        }
    } else {
        left = z_ratio;
        right = z_ratio;
    }

    if (!(bool)Mix_SetPanning(
            _channel,
            (uint8_t)roundf(std::numeric_limits<uint8_t>::max() * left),
            (uint8_t)roundf(std::numeric_limits<uint8_t>::max() * right))) {
        throw exception(Mix_GetError());
    }
}
