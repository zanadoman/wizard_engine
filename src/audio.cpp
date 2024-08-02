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

#include <wizard_engine/audio.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/speaker.hpp>

std::vector<int32_t> wze::audio::_channels;
int32_t wze::audio::_maximum_channel;

int8_t wze::audio::volume() {
    return (int8_t)Mix_MasterVolume(-1);
}

void wze::audio::set_volume(int8_t volume) {
    Mix_MasterVolume(volume);
}

void wze::audio::initialize() {
    _channels = {};
    _maximum_channel = -1;
}

void wze::audio::update() {
    std::for_each(speaker::instances().begin(), speaker::instances().end(),
                  [](speaker* instance) -> void {
                      if (instance->auto_panning()) {
                          instance->align_panning();
                      }
                  });
}

int32_t wze::audio::request_channel() {
    int32_t channel;

    for (channel = 0;
         channel != std::numeric_limits<int32_t>::max() - MIX_CHANNELS;
         ++channel) {
        if (std::find(_channels.begin(), _channels.end(), channel) ==
            _channels.end()) {
            _channels.push_back(channel);
            if (_maximum_channel < channel) {
                _maximum_channel = channel;
                Mix_AllocateChannels(MIX_CHANNELS + _maximum_channel + 1);
            }
            return MIX_CHANNELS + channel;
        }
    }

    throw exception("Channel allocation failed");
}

void wze::audio::drop_channel(int32_t channel) {
    if (!(bool)Mix_UnregisterAllEffects(channel) ||
        (bool)Mix_HaltChannel(channel)) {
        throw exception(Mix_GetError());
    }

    _channels.erase(
        std::find(_channels.begin(), _channels.end(), channel -= MIX_CHANNELS));
    if (channel == _maximum_channel) {
        _maximum_channel =
            _channels.empty()
                ? -1
                : *std::max_element(_channels.begin(), _channels.end());
        Mix_AllocateChannels(MIX_CHANNELS + _maximum_channel + 1);
    }
}

void wze::audio::pause() {
    Mix_Pause(-1);
}

void wze::audio::resume() {
    Mix_Resume(-1);
}

void wze::audio::stop() {
    if ((bool)Mix_HaltChannel(-1)) {
        throw exception(Mix_GetError());
    }
}
