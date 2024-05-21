#include "../include/WZE/input.hpp" // IWYU pragma: keep
#include <SDL2/SDL_keyboard.h>

std::array<bool, wze::KEY_COUNT> wze::input::_keys({});
double wze::input::_cursor_x = 0.0;
double wze::input::_cursor_y = 0.0;
double wze::input::_mouse_sens = 1.0;

void wze::input::_update_keys(void) {
    static_assert((size_t)KEY_COUNT <= (size_t)SDL_NUM_SCANCODES);

    const uint8_t *keys;
    uint32_t mouse;

    keys = SDL_GetKeyboardState(nullptr);

    for (size_t i = 0; i < KEY_COUNT; i++) {
        _keys.at(i) = keys[i];
    }

    mouse = SDL_GetMouseState(nullptr, nullptr);
    _keys.at(KEY_MOUSE_LMB) = mouse & SDL_BUTTON_LEFT;
    _keys.at(KEY_MOUSE_MMB) = mouse & SDL_BUTTON_MIDDLE;
    _keys.at(KEY_MOUSE_RMB) = mouse & SDL_BUTTON_RIGHT;
    _keys.at(KEY_MOUSE_MWU) = false;
    _keys.at(KEY_MOUSE_MWD) = false;

    for (SDL_Event const &event : engine::events()) {
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

void wze::input::_update_cursor(void) {
    int32_t x;
    int32_t y;

    if (SDL_GetRelativeMouseMode()) {
        (void)SDL_GetRelativeMouseState(&x, &y);
        _cursor_x = x * _mouse_sens;
        _cursor_y = -y * _mouse_sens;
    } else {
        (void)SDL_GetMouseState(&x, &y);
        _cursor_x = x;
        _cursor_y = -y + window::height();
    }
}

auto wze::input::keys(key key) -> bool {
    return _keys.at(key);
}

auto wze::input::cursor_x(void) -> double {
    return _cursor_x;
}

auto wze::input::cursor_y(void) -> double {
    return _cursor_y;
}

auto wze::input::mouse_sens(void) -> double {
    return _mouse_sens;
}

void wze::input::set_mouse_sens(double sens) {
    _mouse_sens = sens;
}

auto wze::input::cursor_visible(void) -> bool {
    return !SDL_GetRelativeMouseMode();
}

void wze::input::hide_cursor(void) {
    SDL_SetRelativeMouseMode(SDL_TRUE);
}

void wze::input::show_cursor(void) {
    SDL_SetRelativeMouseMode(SDL_FALSE);
}

void wze::input::__update(void) {
    _update_keys();
    _update_cursor();
}
