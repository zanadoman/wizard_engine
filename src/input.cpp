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

#include <wizard_engine/camera.hpp>
#include <wizard_engine/engine.hpp>
#include <wizard_engine/input.hpp>
#include <wizard_engine/renderer.hpp>
#include <wizard_engine/window.hpp>

std::array<bool, wze::KEY_COUNT> wze::input::_keys = {};
float wze::input::_cursor_absolute_x = 0;
float wze::input::_cursor_absolute_y = 0;
float wze::input::_cursor_relative_x = 0;
float wze::input::_cursor_relative_y = 0;
float wze::input::_mouse_sensitivity = 1;
bool wze::input::_cursor_visible = true;
std::shared_ptr<wze::cursor> wze::input::_cursor_appearance = {};

void wze::input::update_keys() {
    uint8_t const* keyboard_keys;
    uint32_t mouse_keys;

    static_assert((size_t)KEY_COUNT <= (size_t)SDL_NUM_SCANCODES);
    keyboard_keys = SDL_GetKeyboardState(nullptr);
    std::copy(keyboard_keys, keyboard_keys + KEY_COUNT, _keys.data());

    mouse_keys = SDL_GetMouseState(nullptr, nullptr);
    _keys.at(KEY_MOUSE_LEFT) = mouse_keys & SDL_BUTTON_LMASK;
    _keys.at(KEY_MOUSE_MIDDLE) = mouse_keys & SDL_BUTTON_MMASK;
    _keys.at(KEY_MOUSE_RIGHT) = mouse_keys & SDL_BUTTON_RMASK;
    _keys.at(KEY_MOUSE_X1) = mouse_keys & SDL_BUTTON_X1MASK;
    _keys.at(KEY_MOUSE_X2) = mouse_keys & SDL_BUTTON_X2MASK;

    _keys.at(KEY_MOUSE_WHEEL_UP) = false;
    _keys.at(KEY_MOUSE_WHEEL_DOWN) = false;
    for (SDL_Event const& event : std::ranges::reverse_view(engine::events())) {
        if (event.type == SDL_MOUSEWHEEL) {
            if (0 < event.wheel.y) {
                _keys.at(KEY_MOUSE_WHEEL_UP) = true;
            } else if (event.wheel.y < 0) {
                _keys.at(KEY_MOUSE_WHEEL_DOWN) = true;
            }
            break;
        }
    }
}

void wze::input::update_cursor() {
    int32_t x;
    int32_t y;

    for (SDL_Event const& event : std::ranges::reverse_view(engine::events())) {
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

float wze::input::cursor_absolute_x() {
    return _cursor_absolute_x;
}

float wze::input::cursor_absolute_y() {
    return _cursor_absolute_y;
}

float wze::input::cursor_relative_x() {
    return _cursor_relative_x;
}

float wze::input::cursor_relative_y() {
    return _cursor_relative_y;
}

float wze::input::mouse_sensitivity() {
    return _mouse_sensitivity;
}

void wze::input::set_mouse_sensitivity(float mouse_sensitivity) {
    _mouse_sensitivity = mouse_sensitivity;
}

bool wze::input::cursor_visible() {
    return _cursor_visible;
}

void wze::input::set_cursor_visible(bool cursor_visible) {
    _cursor_visible = cursor_visible;
    SDL_SetRelativeMouseMode(_cursor_visible ? SDL_FALSE : SDL_TRUE);
}

std::shared_ptr<wze::cursor> const& wze::input::cursor_appearance() {
    return _cursor_appearance;
}

void wze::input::set_cursor_appearance(
    std::shared_ptr<cursor> const& cursor_appearance) {
    _cursor_appearance = cursor_appearance
                             ? cursor_appearance
                             : assets::create_cursor(SYSTEM_CURSOR_ARROW);
    SDL_SetCursor(_cursor_appearance.get());
};

void wze::input::initialize() {
    set_cursor_appearance({});
}

void wze::input::update() {
    update_keys();
    update_cursor();
}

bool wze::input::key(enum key key) {
    return _keys.at(key);
}

std::pair<float, float> wze::input::cursor_spatial(float z) {
    return apply(
        [z](float x, float y) -> std::pair<float, float> {
            return camera::unproject(x, y, z);
        },
        renderer::detransform(_cursor_absolute_x, _cursor_absolute_y));
}
