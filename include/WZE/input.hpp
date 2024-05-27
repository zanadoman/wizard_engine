#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "key.hpp"    // IWYU pragma: keep

namespace wze {
    class input final {
        private:
        static std::array<bool, KEY_COUNT> _keys;
        static int16_t _cursor_x;
        static int16_t _cursor_y;
        static float _cursor_dx;
        static float _cursor_dy;
        static float _mouse_sens;
        static void _update_keys();
        static void _update_cursor();

        public:
        static bool keys(key key);
        static int16_t cursor_x();
        static int16_t cursor_y();
        static float cursor_dx();
        static float cursor_dy();
        static float mouse_sens();
        static void set_mouse_sens(float sens);
        static bool cursor_visible();
        static void hide_cursor();
        static void show_cursor();
        static void __update();
    };
} // namespace wze
