#include "../include/WZE/input.hpp" // IWYU pragma: keep

std::array<bool, wze::KEY_COUNT> wze::input::_keys({});
float wze::input::_cursor_x = 0.0f;
float wze::input::_cursor_y = 0.0f;
float wze::input::_mouse_sens = 1.0f;

void wze::input::_update_keys() {
    static_assert((size_t)KEY_COUNT <= (size_t)SDL_NUM_SCANCODES);

    uint8_t const *keys;
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

void wze::input::_update_cursor() {
    int32_t x;
    int32_t y;

    if (SDL_GetRelativeMouseMode()) {
        SDL_GetRelativeMouseState(&x, &y);
        _cursor_x = x * _mouse_sens;
        _cursor_y = -y * _mouse_sens;
    } else {
        SDL_GetMouseState(&x, &y);
        _cursor_x = x + (window::width() >> 1);
        _cursor_y = -y + (window::height() >> 1);
    }
}

bool wze::input::keys(key key) {
    return _keys.at(key);
}

float wze::input::cursor_x() {
    return _cursor_x;
}

float wze::input::cursor_y() {
    return _cursor_y;
}

float wze::input::mouse_sens() {
    return _mouse_sens;
}

void wze::input::set_mouse_sens(float sens) {
    _mouse_sens = sens;
}

bool wze::input::cursor_visible() {
    return !SDL_GetRelativeMouseMode();
}

void wze::input::hide_cursor() {
    SDL_SetRelativeMouseMode(SDL_TRUE);
}

void wze::input::show_cursor() {
    SDL_SetRelativeMouseMode(SDL_FALSE);
}

void wze::input::__update() {
    _update_keys();
    _update_cursor();
}
