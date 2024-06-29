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

uint8_t wze::audio::_volume = 255;
bool wze::audio::_paused = false;
std::unordered_map<uint16_t, std::weak_ptr<wze::audiable>>
    wze::audio::_speakers = {};

std::unordered_map<uint16_t, std::weak_ptr<wze::audiable>>
wze::audio::speakers() {
    return _speakers;
}

void wze::audio::update() {
    std::unordered_map<uint16_t, std::weak_ptr<audiable>>::iterator iterator;
    uint16_t channel_count;
    std::shared_ptr<audiable> instance;

    channel_count = 0;
    for (iterator = _speakers.begin(); iterator != _speakers.end();
         ++iterator) {
        if (iterator->second.expired()) {
            _speakers.erase(iterator);
        } else if (channel_count < iterator->first) {
            channel_count = iterator->first;
        }
    }

    if (Mix_AllocateChannels(-1) != channel_count) {
        if (Mix_AllocateChannels(channel_count) != channel_count) {
            throw std::runtime_error(Mix_GetError());
        }
    }

    for (iterator = _speakers.begin(); iterator != _speakers.end();
         ++iterator) {
        if ((instance = iterator->second.lock())) {

        } else {
            _speakers.erase(iterator);
        }
    }
}
