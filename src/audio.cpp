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

wze::mono_speaker::mono_speaker(std::shared_ptr<wze::sound> const& sound,
                                float volume) {
    _channel = audio::request_channel();
    _sound = sound;
    set_volume(volume);
}

std::shared_ptr<wze::sound> const& wze::mono_speaker::sound() const {
    return _sound;
}

void wze::mono_speaker::set_sound(std::shared_ptr<wze::sound> const& sound) {
    _sound = sound;
}

float wze::mono_speaker::volume() const {
    return Mix_Volume(_channel, -1) / (float)MIX_MAX_VOLUME;
}

void wze::mono_speaker::set_volume(float volume) {
    Mix_Volume(_channel, round(MIX_MAX_VOLUME * std::clamp(volume, 0.f, 1.f)));
}

bool wze::mono_speaker::paused() const {
    return Mix_Paused(_channel);
}

void wze::mono_speaker::set_paused(bool paused) {
    if (paused) {
        Mix_Pause(_channel);
    } else {
        Mix_Resume(_channel);
    }
}

std::unique_ptr<wze::mono_speaker>
wze::mono_speaker::create(std::shared_ptr<wze::sound> const& sound,
                          float volume) {
    return std::unique_ptr<mono_speaker>(new mono_speaker(sound, volume));
}

wze::mono_speaker::~mono_speaker() {
    audio::drop_channel(_channel);
}

void wze::mono_speaker::play(uint16_t fade_in, uint16_t loops) {
    if (!_sound) {
        return;
    }
    if (Mix_FadeInChannel(_channel, _sound.get(), loops, fade_in) == -1) {
        throw std::runtime_error(Mix_GetError());
    }
}

void wze::mono_speaker::stop(uint16_t fade_out) {
    Mix_FadeOutChannel(_channel, fade_out);
}

bool wze::mono_speaker::playing() const {
    return Mix_Playing(_channel);
}

std::vector<uint16_t> wze::audio::_channels = {};

uint16_t wze::audio::request_channel() {
    uint16_t channel;

    for (channel = 0; channel != std::numeric_limits<uint16_t>::max();
         ++channel) {
        if (std::ranges::find(_channels, channel) == _channels.end()) {
            _channels.push_back(channel);
            Mix_AllocateChannels(std::ranges::max(_channels));
            return channel;
        }
    }

    throw std::runtime_error("out of channels");
}

void wze::audio::drop_channel(uint16_t channel) {
    if (Mix_HaltChannel(channel)) {
        throw std::runtime_error(Mix_GetError());
    }
    Mix_AllocateChannels(std::ranges::max(_channels));
    _channels.erase(std::ranges::find(_channels, channel));
}

float wze::audio::volume() {
    return Mix_MasterVolume(-1) / (float)MIX_MAX_VOLUME;
}

void wze::audio::set_volume(float volume) {
    Mix_MasterVolume(round(MIX_MAX_VOLUME * std::clamp(volume, 0.f, 1.f)));
}

void wze::audio::initialize() {
    Mix_AllocateChannels(0);
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
