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
#include <wizard_engine/speaker.hpp>

std::vector<int32_t> wze::audio::_channels = {};
float wze::audio::_volume = 1;

int32_t wze::audio::request_channel() {
    int32_t channel;

    for (channel = 0; channel != std::numeric_limits<int32_t>::max();
         ++channel) {
        if (std::ranges::find(_channels, channel) == _channels.end()) {
            _channels.push_back(channel);
            Mix_AllocateChannels(
                std::max(MIX_CHANNELS, std::ranges::max(_channels) + 1));
            return channel;
        }
    }

    throw std::runtime_error("out of channels");
}

void wze::audio::drop_channel(int32_t channel) {
    if (!Mix_UnregisterAllEffects(channel)) {
        throw std::runtime_error(Mix_GetError());
    }
    if (Mix_HaltChannel(channel)) {
        throw std::runtime_error(Mix_GetError());
    }
    _channels.erase(std::ranges::find(_channels, channel));
    Mix_AllocateChannels(std::max(
        MIX_CHANNELS, _channels.size() ? std::ranges::max(_channels) + 1 : 0));
}

float wze::audio::volume() {
    return _volume;
}

void wze::audio::set_volume(float volume) {
    _volume = std::clamp(volume, 0.f, 1.f);
    Mix_MasterVolume(round(MIX_MAX_VOLUME * _volume));
}

void wze::audio::update() {
    std::ranges::for_each(speaker::instances(),
                          [](speaker* instance) { instance->align_panning(); });
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
