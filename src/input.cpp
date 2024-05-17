#include "../include/WZE/input.hpp" // IWYU pragma: keep

std::array<bool, wze::KEY_COUNT> wze::input::_keys({});
double wze::input::_cursor_x = double();
double wze::input::_cursor_y = double();
double wze::input::_mouse_sens = 1.0;

void wze::input::_update_keys(void) {
    auto mouse_state = SDL_GetMouseState(nullptr, nullptr);

    (void)memcpy(_keys.data(), SDL_GetKeyboardState(nullptr), KEY_COUNT);

    _keys.at(KEY_MOUSE_LMB) = mouse_state & SDL_BUTTON_LEFT;
    _keys.at(KEY_MOUSE_MMB) = mouse_state & SDL_BUTTON_MIDDLE;
    _keys.at(KEY_MOUSE_RMB) = mouse_state & SDL_BUTTON_RIGHT;
    _keys.at(KEY_MOUSE_MWU) = false;
    _keys.at(KEY_MOUSE_MWD) = false;

    for (auto event : engine::events()) {
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
    auto cursor_x = int32_t();
    auto cursor_y = int32_t();

    if (SDL_GetRelativeMouseMode()) {
        (void)SDL_GetRelativeMouseState(&cursor_x, &cursor_y);
        _cursor_x = cursor_x * _mouse_sens;
        _cursor_y = -cursor_y * _mouse_sens;
    } else {
        (void)SDL_GetMouseState(&cursor_x, &cursor_y);
        _cursor_x = cursor_x;
        _cursor_y = -cursor_y + window::height();
    }
}

auto wze::input::key(keys key) -> bool {
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

void wze::input::set_mouse_sens(double mouse_sens) {
    _mouse_sens = mouse_sens;
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
