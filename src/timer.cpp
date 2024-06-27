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

#include <wizard_engine/timer.hpp>

uint8_t wze::timer::_frame_time = 0;
uint8_t wze::timer::_delta_time = 0;

uint8_t wze::timer::frame_time() {
    return _frame_time;
}

void wze::timer::set_frame_time(uint8_t frame_time) {
    _frame_time = frame_time;
}

uint8_t wze::timer::delta_time() {
    return _delta_time;
}

void wze::timer::set_delta_time(uint8_t delta_time) {
    _delta_time = delta_time;
}

void wze::timer::update() {
    static uint64_t last_time = 0;

    uint64_t now;
    uint64_t end;

    end = last_time + _frame_time;
    now = current_time();

    if (now < end) {
        SDL_Delay(end - now);
        now = end;
    }

    _delta_time = now - last_time;
    last_time = now;
}

uint64_t wze::timer::current_time() {
    return SDL_GetTicks64();
}
