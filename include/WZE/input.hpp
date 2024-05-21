#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep
#include "key.hpp"    // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class input final {
        private:
        static std::array<bool, KEY_COUNT> _keys;
        static float _cursor_x;
        static float _cursor_y;
        static float _mouse_sens;
        static void _update_keys();
        static void _update_cursor();

        public:
        static bool keys(key key);
        static float cursor_x();
        static float cursor_y();
        static float mouse_sens();
        static void set_mouse_sens(float sens);
        static bool cursor_visible();
        static void hide_cursor();
        static void show_cursor();
        static void __update();
    };
} // namespace wze
