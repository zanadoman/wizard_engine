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

#include <wizard_engine/animation.hpp>
#include <wizard_engine/timer.hpp>

wze::animator::animator(std::vector<std::weak_ptr<animatable>> const& instances,
                        std::vector<std::shared_ptr<texture>> const& frames,
                        uint16_t frame_time) {
    _instances = instances;
    _frames = frames;
    _frame_time = frame_time;
    _current_frame = 0;
    _remaining_time = 0;
}

std::vector<std::weak_ptr<wze::animatable>>& wze::animator::instances() {
    return _instances;
}

std::vector<std::shared_ptr<wze::texture>> const&
wze::animator::frames() const {
    return _frames;
}

uint16_t wze::animator::frame_time() const {
    return _frame_time;
}

void wze::animator::set_frame_time(uint16_t frame_time) {
    _frame_time = frame_time;
}

size_t wze::animator::current_frame() const {
    return _current_frame;
}

void wze::animator::set_current_frame(size_t current_frame) {
    _current_frame = current_frame;
}

std::unique_ptr<wze::animator>
wze::animator::create(std::vector<std::weak_ptr<animatable>> const& instances,
                      std::vector<std::shared_ptr<texture>> const& frames,
                      uint16_t frame_time) {
    return std::unique_ptr<animator>(
        new animator(instances, frames, frame_time));
}

bool wze::animator::update() {
    uint64_t elapsed_time;
    bool looped;
    std::vector<std::weak_ptr<animatable>>::iterator iterator;
    std::shared_ptr<animatable> instance;

    if (!_frames.size() || !_frame_time) {
        return false;
    }

    elapsed_time = timer::delta_time() + _remaining_time;
    _current_frame += elapsed_time / _frame_time;
    _remaining_time = elapsed_time % _frame_time;

    if ((looped = _frames.size() <= _current_frame)) {
        _current_frame %= _frames.size();
    }

    for (iterator = _instances.begin(); iterator != _instances.end();) {
        if ((instance = iterator->lock())) {
            ++iterator;
            if (instance->active()) {
                instance->set_texture(_frames.at(_current_frame));
            }
        } else {
            _instances.erase(iterator);
        }
    }

    return looped;
}

void wze::animator::reset() {
    _current_frame = 0;
    _remaining_time = 0;
}
