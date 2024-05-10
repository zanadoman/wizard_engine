#include "../include/WZE/input.hpp" // IWYU pragma: keep

uint8_t wze::input::state[KEY_COUNT];

auto wze::input::get_key(keys key) -> bool {
    return input::state[key];
}

void wze::input::_update() {
    uint8_t mouse = SDL_GetMouseState(nullptr, nullptr);

    (void)memcpy(input::state, SDL_GetKeyboardState(nullptr), KEY_COUNT * sizeof(uint8_t));

    input::state[KEY_MOUSE_LMB] = mouse & 1; 
    input::state[KEY_MOUSE_MMB] = mouse & 2;
    input::state[KEY_MOUSE_RMB] = mouse & 3;
}
