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

#include <wizard_engine/audio.hpp>
#include <wizard_engine/camera.hpp>
#include <wizard_engine/math.hpp>

wze::speaker::speaker(std::shared_ptr<wze::sound> const& sound, float volume,
                      float range, float x, float y, float angle,
                      float x_offset, float y_offset, float angle_offset,
                      bool attach_x, bool attach_y, bool attach_angle,
                      bool x_angle_lock, bool y_angle_lock) {
    _channel = audio::request_channel();
    _sound = sound;
    set_volume(volume);
    _range = range;
    _x = x;
    _y = y;
    _angle = angle;
    _x_offset = x_offset;
    _y_offset = y_offset;
    _angle_offset = angle_offset;
    _attach_x = attach_x;
    _attach_y = attach_y;
    _attach_angle = attach_angle;
    _x_angle_lock = x_angle_lock;
    _y_angle_lock = y_angle_lock;
}

std::shared_ptr<wze::sound> const& wze::speaker::sound() const {
    return _sound;
}

void wze::speaker::set_sound(std::shared_ptr<wze::sound> const& sound) {
    _sound = sound;
}

float wze::speaker::volume() const {
    return _volume;
}

void wze::speaker::set_volume(float volume) {
    _volume = std::clamp(volume, 0.f, 1.f);
    Mix_Volume(_channel, round(MIX_MAX_VOLUME * _volume));
}

float wze::speaker::range() const {
    return _range;
}

void wze::speaker::set_range(float range) {
    _range = range;
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

float wze::speaker::angle() const {
    return _angle;
}

void wze::speaker::set_angle(float angle) {
    _angle = angle;
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

float wze::speaker::angle_offset() const {
    return _angle_offset;
}

void wze::speaker::set_angle_offset(float angle_offset) {
    _angle_offset = angle_offset;
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

bool wze::speaker::attach_angle() const {
    return _attach_angle;
}

void wze::speaker::set_attach_angle(bool attach_angle) {
    _attach_angle = attach_angle;
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

std::unique_ptr<wze::speaker>
wze::speaker::create(std::shared_ptr<wze::sound> const& sound, float volume,
                     float range, float x, float y, float angle, float x_offset,
                     float y_offset, float angle_offset, bool attach_x,
                     bool attach_y, bool attach_angle, bool x_angle_lock,
                     bool y_angle_lock) {
    return std::unique_ptr<speaker>(new speaker(
        sound, volume, range, x, y, angle, x_offset, y_offset, angle_offset,
        attach_x, attach_y, attach_angle, x_angle_lock, y_angle_lock));
}

wze::speaker::~speaker() {
    audio::drop_channel(_channel);
}

void wze::speaker::play(uint16_t fade_in, uint16_t loops) {
    if (!_sound) {
        return;
    }
    if (Mix_FadeInChannel(_channel, _sound.get(), loops, fade_in) == -1) {
        throw std::runtime_error(Mix_GetError());
    }
}

void wze::speaker::pause() {
    Mix_Pause(_channel);
}

void wze::speaker::resume() {
    Mix_Resume(_channel);
}

void wze::speaker::stop(uint16_t fade_out) {
    if (!Mix_FadeOutChannel(_channel, fade_out)) {
        throw std::runtime_error(Mix_GetError());
    }
}

bool wze::speaker::playing() const {
    return Mix_Playing(_channel);
}

bool wze::speaker::paused() const {
    return Mix_Paused(_channel);
}

void wze::speaker::update_panning() {
    float distance;
    float left;
    float right;

    distance = math::length(camera::x() - _x, camera::y() - _y);
    if (_range <= distance) {
        left = 0;
        right = 0;
    } else if (_x < camera::x()) {
        left = 1 - distance / _range;
        right = powf(left, 2);
    } else if (camera::x() < _x) {
        right = 1 - distance / _range;
        left = powf(right, 2);
    } else {
        left = 1;
        right = 1;
    }

    if (!Mix_SetPanning(_channel,
                        round(std::numeric_limits<uint8_t>::max() * left),
                        round(std::numeric_limits<uint8_t>::max() * right))) {
        throw std::runtime_error(Mix_GetError());
    }
}

std::vector<uint16_t> wze::audio::_channels = {};
float wze::audio::_volume = 1;
std::vector<std::weak_ptr<wze::speaker>> wze::audio::_auto_panning = {};

uint16_t wze::audio::request_channel() {
    uint16_t channel;

    for (channel = 0; channel != std::numeric_limits<uint16_t>::max();
         ++channel) {
        if (std::ranges::find(_channels, channel) == _channels.end()) {
            _channels.push_back(channel);
            Mix_AllocateChannels(std::ranges::max(_channels) + 1);
            return channel;
        }
    }

    throw std::runtime_error("out of channels");
}

void wze::audio::drop_channel(uint16_t channel) {
    if (Mix_HaltChannel(channel)) {
        throw std::runtime_error(Mix_GetError());
    }
    Mix_AllocateChannels(std::ranges::max(_channels) + 1);
    _channels.erase(std::ranges::find(_channels, channel));
}

float wze::audio::volume() {
    return _volume;
}

void wze::audio::set_volume(float volume) {
    _volume = std::clamp(volume, 0.f, 1.f);
    Mix_MasterVolume(round(MIX_MAX_VOLUME * _volume));
}

std::vector<std::weak_ptr<wze::speaker>>& wze::audio::auto_panning() {
    return _auto_panning;
}

void wze::audio::initialize() {
    Mix_AllocateChannels(0);
}

void wze::audio::update() {
    std::vector<std::weak_ptr<speaker>>::iterator iterator;
    std::shared_ptr<speaker> instance;

    for (iterator = _auto_panning.begin(); iterator != _auto_panning.end();
         ++iterator) {
        if ((instance = iterator->lock())) {
            instance->update_panning();
        } else {
            _auto_panning.erase(iterator--);
        }
    }
}

void wze::audio::pause() {
    Mix_Pause(-1);
}

void wze::audio::resume() {
    Mix_Resume(-1);
}

void wze::audio::stop() {
    if (Mix_HaltChannel(-1)) {
        throw std::runtime_error(Mix_GetError());
    }
}
