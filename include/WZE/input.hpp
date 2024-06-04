#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep
#include "key.hpp"    // IWYU pragma: keep

namespace wze {
    class input final {
        private:
        static std::array<bool, KEY_COUNT> _keys;
        static int16_t _cursor_x;
        static int16_t _cursor_y;
        static float_t _cursor_dx;
        static float_t _cursor_dy;
        static float_t _mouse_sens;
        static wze::cursor _cursor;
        static void _update_keys();
        static void _update_cursor();

        public:
        static bool keys(key key);
        static int16_t cursor_x();
        static int16_t cursor_y();
        static float_t cursor_dx();
        static float_t cursor_dy();
        static float_t mouse_sens();
        static void set_mouse_sens(float_t sens);
        static bool cursor_visible();
        static void hide_cursor();
        static void show_cursor();
        static wze::cursor const& cursor();
        static void set_cursor(wze::cursor const& cursor);
        static void __update();
        static std::pair<float_t, float_t> unproject_cursor(float_t z);
    };
} // namespace wze
