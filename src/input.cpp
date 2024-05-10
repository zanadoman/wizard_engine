#include "../include/WZE/input.hpp" // IWYU pragma: keep

std::array<uint8_t, wze::KEY_COUNT> wze::input::state;
int32_t wze::input::mouse_x    = 0;
int32_t wze::input::mouse_y    = 0;
float   wze::input::mouse_sens = 1;

auto wze::input::get_key(keys key) -> int8_t {
    return input::state[key];
}

auto wze::input::get_mouse_x() -> int32_t {
    return input::mouse_x;
}

auto wze::input::get_mouse_y() -> int32_t {
    return input::mouse_y;
}

auto wze::input::get_mouse_sens() -> float {
    return input::mouse_sens;
}

void wze::input::set_mouse_sens(float sens) {
    input::mouse_sens = sens;
}

void wze::input::_update() {
    int32_t mouse_x     = 0;
    int32_t mouse_y     = 0;
    uint8_t mouse_state = SDL_GetMouseState(&mouse_x, &mouse_y);

    (void)memcpy(input::state.data(), SDL_GetKeyboardState(nullptr),
                 KEY_COUNT * sizeof(int8_t));

    input::state[KEY_MOUSE_LMB] = mouse_state & 1;
    input::state[KEY_MOUSE_MMB] = mouse_state & 2;
    input::state[KEY_MOUSE_RMB] = mouse_state & 3;

    for (auto event : engine::get_events()) {
        if (event.type == SDL_MOUSEWHEEL) {
            input::state[KEY_MOUSE_WHEEL] = event.wheel.y;
            break;
        }
    }

    input::mouse_x = mouse_x;
    input::mouse_y = mouse_y;
}
