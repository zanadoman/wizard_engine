/**
 * This file is part of Wizard Engine
 * (https://github.com/zanadoman/Wizard-Engine). Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Wizard Engine. If not, see
 * https://www.gnu.org/licenses/licenses.html.
 */

#include "WZE/timer.hpp"

uint8_t wze::timer::_frame_time = 0;
uint8_t wze::timer::_delta_time = 0;
uint64_t wze::timer::_last_time = 0;

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

uint64_t wze::timer::current_time() {
    return SDL_GetTicks64();
}

void wze::timer::__update() {
    uint64_t now;
    uint64_t end;

    now = current_time();
    end = _last_time + _frame_time;

    if (now < end) {
        SDL_Delay(end - now);
    }

    now = current_time();
    _delta_time = now - _last_time;
    _last_time = now;
}
