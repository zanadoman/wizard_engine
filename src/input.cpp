/*
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

#include "WZE/input.hpp"
#include "WZE/camera.hpp"
#include "WZE/engine.hpp"
#include "WZE/render.hpp"
#include "WZE/window.hpp"

std::array<bool, wze::KEY_COUNT> wze::input::_keys = {};
float_t wze::input::_cursor_absolute_x = 0.f;
float_t wze::input::_cursor_absolute_y = 0.f;
float_t wze::input::_cursor_relative_x = 0.f;
float_t wze::input::_cursor_relative_y = 0.f;
float_t wze::input::_mouse_sensitivity = 1.f;
bool wze::input::_cursor_visible = true;
wze::cursor wze::input::_cursor = nullptr;

void wze::input::_update_keys() {
    static_assert((size_t)KEY_COUNT <= (size_t)SDL_NUM_SCANCODES);

    uint8_t const* keys;
    uint32_t mouse;

    keys = SDL_GetKeyboardState(nullptr);
    for (size_t i = 0; i < KEY_COUNT; i++) {
        _keys.at(i) = keys[i];
    }

    mouse = SDL_GetMouseState(nullptr, nullptr);
    _keys.at(KEY_MOUSE_LMB) = SDL_BUTTON(mouse) & SDL_BUTTON_LEFT;
    _keys.at(KEY_MOUSE_MMB) = SDL_BUTTON(mouse) & SDL_BUTTON_MIDDLE;
    _keys.at(KEY_MOUSE_RMB) = SDL_BUTTON(mouse) & SDL_BUTTON_RIGHT;
    _keys.at(KEY_MOUSE_MWU) = false;
    _keys.at(KEY_MOUSE_MWD) = false;

    for (SDL_Event const& event : engine::__events()) {
        if (event.type == SDL_MOUSEWHEEL) {
            if (0 < event.wheel.y) {
                _keys.at(KEY_MOUSE_MWU) = true;
            } else if (event.wheel.y < 0) {
                _keys.at(KEY_MOUSE_MWD) = true;
            }
            break;
        }
    }
}

void wze::input::_update_cursor() {
    int32_t x;
    int32_t y;

    for (SDL_Event const& event : engine::__events()) {
        if (event.type == SDL_MOUSEMOTION) {
            _cursor_absolute_x =
                std::clamp(event.motion.x, 0, window::width() - 1);
            _cursor_absolute_y =
                std::clamp(event.motion.y, 0, window::height() - 1);
            break;
        }
    }

    SDL_GetRelativeMouseState(&x, &y);
    _cursor_relative_x = x * _mouse_sensitivity;
    _cursor_relative_y = y * _mouse_sensitivity;
}

wze::input::input() {}

bool wze::input::keys(key key) {
    return _keys.at(key);
}

float_t wze::input::cursor_absolute_x() {
    return _cursor_absolute_x;
}

float_t wze::input::cursor_absolute_y() {
    return _cursor_absolute_y;
}

float_t wze::input::cursor_relative_x() {
    return _cursor_relative_x;
}

float_t wze::input::cursor_relative_y() {
    return _cursor_relative_y;
}

std::pair<float_t, float_t> wze::input::cursor_spatial_xy(float_t z) {
    if (z <= camera::z()) {
        throw std::invalid_argument("z is less than or equal to camera::z()");
    }

    return std::apply(
        [z](float_t x, float_t y) { return camera::__unproject(x, y, z); },
        render::__detransform(_cursor_absolute_x, _cursor_absolute_y));
}

float_t wze::input::mouse_sensitivity() {
    return _mouse_sensitivity;
}

void wze::input::set_mouse_sensitivity(float_t mouse_sensitivity) {
    _mouse_sensitivity = mouse_sensitivity;
}

bool wze::input::cursor_visible() {
    return _cursor_visible;
}

void wze::input::set_cursor_visibility(bool cursor_visibility) {
    SDL_SetRelativeMouseMode(cursor_visibility ? SDL_FALSE : SDL_TRUE);
    _cursor_visible = cursor_visibility;
}

wze::cursor const& wze::input::cursor() {
    return _cursor;
}

void wze::input::set_cursor(wze::cursor const& cursor) {
    if (!cursor.get()) {
        throw std::invalid_argument("null cursor");
    }

    SDL_SetCursor(cursor.get());
    _cursor = cursor;
};

void wze::input::__update() {
    _update_keys();
    _update_cursor();
}
