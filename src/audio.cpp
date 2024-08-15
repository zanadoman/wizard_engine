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
#include <wizard_engine/exception.hpp>

void wze::audio::initialize() {
    speakers() = {};
    channels_ = {};
    maximum_channel_ = -1;
}

int8_t wze::audio::volume() {
    return (int8_t)Mix_MasterVolume(-1);
}

void wze::audio::set_volume(int8_t volume) {
    Mix_MasterVolume(volume);
}

std::vector<std::shared_ptr<wze::speaker>>& wze::audio::speakers() {
    return speakers_;
}

void wze::audio::update() {
    std::vector<std::shared_ptr<wze::speaker>>::iterator speaker;

    for (speaker = speakers().begin(); speaker != speakers().end(); ++speaker) {
        if (!*speaker || !(*speaker)->playing()) {
            speakers().erase(speaker--);
        }
    }

    std::for_each(speaker::instances().begin(), speaker::instances().end(),
                  [](class speaker* instance) -> void {
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
        if (std::find(channels_.begin(), channels_.end(), channel) ==
            channels_.end()) {
            channels_.push_back(channel);
            if (maximum_channel_ < channel) {
                maximum_channel_ = channel;
                Mix_AllocateChannels(MIX_CHANNELS + maximum_channel_ + 1);
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

    channels_.erase(
        std::find(channels_.begin(), channels_.end(), channel -= MIX_CHANNELS));
    if (channel == maximum_channel_) {
        maximum_channel_ =
            channels_.empty()
                ? -1
                : *std::max_element(channels_.begin(), channels_.end());
        Mix_AllocateChannels(MIX_CHANNELS + maximum_channel_ + 1);
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

std::vector<std::shared_ptr<wze::speaker>> wze::audio::speakers_ = {};
std::vector<int32_t> wze::audio::channels_ = {};
int32_t wze::audio::maximum_channel_ = {};
