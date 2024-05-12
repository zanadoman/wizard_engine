#include "../include/WZE/input.hpp" // IWYU pragma: keep

std::array<int8_t, wze::KEY_COUNT> wze::input::_keys;           // NOLINT
float                              wze::input::_mouse_x    = 0; // NOLINT
float                              wze::input::_mouse_y    = 0; // NOLINT
float                              wze::input::_mouse_sens = 1; // NOLINT

auto wze::input::key(keys key) -> int8_t {
    return _keys.at(key);
}

auto wze::input::mouse_x() -> float {
    return _mouse_x;
}

auto wze::input::mouse_y() -> float {
    return _mouse_y;
}

auto wze::input::mouse_sens() -> float {
    return _mouse_sens;
}

void wze::input::set_mouse_sens(float sens) {
    _mouse_sens = sens;
}

void wze::input::show_cursor() {
    SDL_SetRelativeMouseMode(SDL_FALSE);
}

void wze::input::hide_cursor() {
    SDL_SetRelativeMouseMode(SDL_TRUE);
}

auto wze::input::cursor_shown() -> bool {
    return !SDL_GetRelativeMouseMode();
}

void wze::input::update() {
    int32_t        x           = 0;
    int32_t        y           = 0;
    uint32_t const mouse_state = SDL_GetMouseState(nullptr, nullptr);

    memcpy(_keys.data(), SDL_GetKeyboardState(nullptr), KEY_COUNT);

    _keys[KEY_MOUSE_LMB]   = (int8_t)(mouse_state == 1);
    _keys[KEY_MOUSE_MMB]   = (int8_t)(mouse_state == 2);
    _keys[KEY_MOUSE_RMB]   = (int8_t)(mouse_state == 3);
    _keys[KEY_MOUSE_WHEEL] = 0;

    for (auto event : engine::events()) {
        if (event.type == SDL_MOUSEWHEEL) {         // NOLINT
            _keys[KEY_MOUSE_WHEEL] = event.wheel.y; // NOLINT
            break;
        }
    }

    if (SDL_GetRelativeMouseMode()) {
        SDL_GetRelativeMouseState(&x, &y);
        _mouse_x = (float)x * _mouse_sens;
        _mouse_y = (float)x * _mouse_sens;
    } else {
        for (auto event : engine::events()) {
            if (event.type == SDL_MOUSEMOTION) { // NOLINT
                _mouse_x = (float)std::clamp(event.motion.x, 0,
                                             window::width() - 1); // NOLINT
                _mouse_y = (float)std::clamp(event.motion.y, 0,
                                             window::width() - 1); // NOLINT
                break;
            }
        }
    }
}
