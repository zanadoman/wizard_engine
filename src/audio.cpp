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

std::vector<int32_t> wze::audio::_channels;
int32_t wze::audio::_maximum_channel;

int32_t wze::audio::request_channel() {
    int32_t channel;

    for (channel = 0; channel != std::numeric_limits<int32_t>::max();
         ++channel) {
        if (std::ranges::find(_channels, channel) == _channels.end()) {
            _channels.push_back(channel);
            if (_maximum_channel < channel) {
                _maximum_channel = channel;
                Mix_AllocateChannels(_maximum_channel + 1);
            }
            return channel;
        }
    }

    throw std::runtime_error("Channel allocation failed");
}

void wze::audio::drop_channel(int32_t channel) {
    if (!Mix_UnregisterAllEffects(channel) || Mix_HaltChannel(channel)) {
        throw std::runtime_error(Mix_GetError());
    }

    _channels.erase(std::ranges::find(_channels, channel));
    if (channel == _maximum_channel) {
        _maximum_channel = _channels.size() ? std::ranges::max(_channels) : -1;
        Mix_AllocateChannels(_maximum_channel + 1);
    }
}

float wze::audio::volume() {
    return (float)Mix_MasterVolume(-1) / MIX_MAX_VOLUME;
}

void wze::audio::set_volume(float volume) {
    Mix_MasterVolume(round(MIX_MAX_VOLUME * volume));
}

void wze::audio::initialize() {
    _channels = {};
    _maximum_channel = -1;
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
