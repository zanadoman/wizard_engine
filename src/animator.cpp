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

#include <wizard_engine/animator.hpp>
#include <wizard_engine/timer.hpp>

wze::animator::animator(
    std::vector<std::pair<std::shared_ptr<texture>, uint16_t>> const& frames,
    std::vector<std::weak_ptr<animatable>> const& targets) {
    this->frames() = frames;
    this->targets() = targets;
    set_current_frame(0);
    _remaining_time = 0;
}

std::vector<std::pair<std::shared_ptr<wze::texture>, uint16_t>> const&
wze::animator::frames() const {
    return _frames;
}

std::vector<std::pair<std::shared_ptr<wze::texture>, uint16_t>>&
wze::animator::frames() {
    return _frames;
}

std::vector<std::weak_ptr<wze::animatable>> const&
wze::animator::targets() const {
    return _targets;
}

std::vector<std::weak_ptr<wze::animatable>>& wze::animator::targets() {
    return _targets;
}

size_t wze::animator::current_frame() const {
    return _current_frame;
}

void wze::animator::set_current_frame(size_t current_frame) {
    _current_frame = current_frame;
}

bool wze::animator::play() {
    uint32_t elapsed_time;
    bool looped;

    if (frames().empty()) {
        return false;
    }

    if ((bool)frames().at(current_frame()).second) {
        elapsed_time = (uint32_t)timer::delta_time() + _remaining_time;
        set_current_frame(current_frame() +
                          elapsed_time / frames().at(current_frame()).second);
        _remaining_time = elapsed_time % frames().at(current_frame()).second;
    } else {
        set_current_frame(current_frame() + 1);
        _remaining_time = 0;
    }

    looped = frames().size() <= current_frame();
    if (looped) {
        set_current_frame(current_frame() % frames().size());
    }

    targets().erase(
        std::remove_if(targets().begin(), targets().end(),
                       [&](std::weak_ptr<animatable> const& target) -> bool {
                           std::shared_ptr<animatable> locked;

                           locked = target.lock();
                           if (locked) {
                               if (locked->animated()) {
                                   locked->set_texture(
                                       frames().at(current_frame()).first);
                               }
                               return false;
                           }

                           return true;
                       }),
        targets().end());

    return looped;
}

void wze::animator::reset() {
    set_current_frame(0);
    _remaining_time = 0;
}
