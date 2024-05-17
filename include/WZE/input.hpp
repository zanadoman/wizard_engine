#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep
#include "keys.hpp"   // IWYU pragma: keep

namespace wze {
    class input final {
        private:
        static bool _keys[KEY_COUNT];
        static float _cursor_x;
        static float _cursor_y;
        static float _mouse_sens;
        static void update_keys(void);
        static void update_cursor(void);

        public:
        static auto key(keys key) -> bool;
        static auto cursor_x(void) -> float;
        static auto cursor_y(void) -> float;
        static auto mouse_sens(void) -> float;
        static void set_mouse_sens(float sens);
        static auto cursor_visible(void) -> bool;
        static void hide_cursor(void);
        static void show_cursor(void);
        static void update(void);
    };
} // namespace wze
