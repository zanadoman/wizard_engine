#include "../include/WZE/input.hpp" // IWYU pragma: keep

std::array<uint8_t, wze::KEY_COUNT> wze::input::_keys;
int32_t                             wze::input::_mouse_x_abs = 0;
int32_t                             wze::input::_mouse_y_abs = 0;
float                               wze::input::_mouse_x_rel = 0;
float                               wze::input::_mouse_y_rel = 0;
float                               wze::input::_mouse_sens  = 1;

auto wze::input::key(keys key) -> int8_t {
    return input::_keys[key];
}

auto wze::input::mouse_x_abs() -> int32_t {
    return input::_mouse_x_abs;
}

auto wze::input::mouse_y_abs() -> int32_t {
    return input::_mouse_y_abs;
}

auto wze::input::mouse_x_rel() -> float {
    return input::_mouse_x_rel;
}

auto wze::input::mouse_y_rel() -> float {
    return input::_mouse_y_rel;
}

auto wze::input::mouse_sens() -> float {
    return input::_mouse_sens;
}

void wze::input::set_mouse_sens(float sens) {
    input::_mouse_sens = sens;
}

void wze::input::update() {
    int32_t tmp_x;
    int32_t tmp_y;
    uint8_t mouse_state;

    (void)memcpy(input::_keys.data(), SDL_GetKeyboardState(nullptr),
                 KEY_COUNT * sizeof(int8_t));

    mouse_state = SDL_GetMouseState(nullptr, nullptr);
    input::_keys[KEY_MOUSE_LMB]   = mouse_state & 1;
    input::_keys[KEY_MOUSE_MMB]   = mouse_state & 2;
    input::_keys[KEY_MOUSE_RMB]   = mouse_state & 3;
    input::_keys[KEY_MOUSE_WHEEL] = 0;

    for (auto event : engine::events()) {
        if (event.type == SDL_MOUSEWHEEL) {
            input::_keys[KEY_MOUSE_WHEEL] = event.wheel.y;
            break;
        }
    }

    (void)SDL_GetMouseState(&input::_mouse_x_abs, &input::_mouse_x_abs);
    (void)SDL_GetRelativeMouseState(&tmp_x, &tmp_y);
    input::_mouse_x_rel = tmp_x * input::_mouse_sens;
    input::_mouse_y_rel = tmp_y * input::_mouse_sens;
}
