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

#include <wizard_engine/camera.hpp>
#include <wizard_engine/engine.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/input.hpp>
#include <wizard_engine/renderer.hpp>
#include <wizard_engine/window.hpp>

SDL_Keycode wze::input::_key = {};
std::array<bool, wze::KEY_COUNT> wze::input::_keys = {};
float wze::input::_cursor_absolute_x = {};
float wze::input::_cursor_absolute_y = {};
float wze::input::_cursor_relative_x = {};
float wze::input::_cursor_relative_y = {};
float wze::input::_mouse_sensitivity = {};

void wze::input::update_key() {
    std::vector<SDL_Event>::const_reverse_iterator iterator;

    _key = SDLK_UNKNOWN;
    for (iterator = engine::events().rbegin();
         iterator != engine::events().rend(); ++iterator) {
        if (iterator->type == SDL_KEYDOWN) {
            _key = iterator->key.keysym.sym;
            break;
        }
    }
}

void wze::input::update_keys() {
    uint8_t const* keyboard_keys;
    uint32_t mouse_keys;
    std::vector<SDL_Event>::const_reverse_iterator iterator;

    static_assert((size_t)KEY_COUNT <= (size_t)SDL_NUM_SCANCODES);
    keyboard_keys = SDL_GetKeyboardState(nullptr);
    // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-pointer-arithmetic)
    std::copy(keyboard_keys, keyboard_keys + KEY_COUNT, _keys.data());

    mouse_keys = SDL_GetMouseState(nullptr, nullptr);
    _keys.at(KEY_MOUSE_LEFT) = (bool)(mouse_keys & SDL_BUTTON_LMASK);
    _keys.at(KEY_MOUSE_MIDDLE) = (bool)(mouse_keys & SDL_BUTTON_MMASK);
    _keys.at(KEY_MOUSE_RIGHT) = (bool)(mouse_keys & SDL_BUTTON_RMASK);
    _keys.at(KEY_MOUSE_X1) = (bool)(mouse_keys & SDL_BUTTON_X1MASK);
    _keys.at(KEY_MOUSE_X2) = (bool)(mouse_keys & SDL_BUTTON_X2MASK);

    _keys.at(KEY_MOUSE_WHEEL_UP) = false;
    _keys.at(KEY_MOUSE_WHEEL_DOWN) = false;
    for (iterator = engine::events().rbegin();
         iterator != engine::events().rend(); ++iterator) {
        if (iterator->type == SDL_MOUSEWHEEL) {
            if (0 < iterator->wheel.y) {
                _keys.at(KEY_MOUSE_WHEEL_UP) = true;
            } else if (iterator->wheel.y < 0) {
                _keys.at(KEY_MOUSE_WHEEL_DOWN) = true;
            }
            break;
        }
    }
}

void wze::input::update_cursor() {
    std::vector<SDL_Event>::const_reverse_iterator iterator;
    int32_t x;
    int32_t y;

    for (iterator = engine::events().rbegin();
         iterator != engine::events().rend(); ++iterator) {
        if (iterator->type == SDL_MOUSEMOTION) {
            _cursor_absolute_x =
                (float)std::clamp(iterator->motion.x, 0, window::width() - 1);
            _cursor_absolute_y =
                (float)std::clamp(iterator->motion.y, 0, window::height() - 1);
            std::tie(_cursor_absolute_x, _cursor_absolute_y) =
                renderer::detransform(cursor_absolute_x(), cursor_absolute_y());
            break;
        }
    }

    SDL_GetRelativeMouseState(&x, &y);
    _cursor_relative_x = (float)x * mouse_sensitivity();
    _cursor_relative_y = (float)y * mouse_sensitivity();
}

uint32_t wze::input::key() {
    return _key;
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
    return (bool)SDL_GetRelativeMouseMode();
}

void wze::input::set_cursor_visible(bool cursor_visible) {
    if ((bool)SDL_SetRelativeMouseMode((SDL_bool)!cursor_visible)) {
        throw exception(SDL_GetError());
    }
}

void wze::input::set_cursor_appearance(
    std::unique_ptr<cursor, std::function<void(cursor*)>> cursor_appearance) {
    SDL_SetCursor(cursor_appearance.release());
}

void wze::input::initialize() {
    _key = SDLK_UNKNOWN;
    _keys = {};
    _cursor_absolute_x = 0;
    _cursor_absolute_y = 0;
    _cursor_relative_x = 0;
    _cursor_relative_y = 0;
    set_mouse_sensitivity(1);
}

void wze::input::update() {
    update_key();
    update_keys();
    update_cursor();
}

bool wze::input::key(enum key key) {
    return _keys.at(key);
}

std::pair<float, float> wze::input::cursor_spatial(float z) {
    return camera::unproject(cursor_absolute_x(), cursor_absolute_y(), z);
}
