#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep
#include "key.hpp"    // IWYU pragma: keep

namespace wze {
    class input final {
        private:
        static std::array<bool, KEY_COUNT> _keys;
        static double _cursor_x;
        static double _cursor_y;
        static double _mouse_sens;
        static void _update_keys(void);
        static void _update_cursor(void);

        public:
        static auto keys(key key) -> bool;
        static auto cursor_x(void) -> double;
        static auto cursor_y(void) -> double;
        static auto mouse_sens(void) -> double;
        static void set_mouse_sens(double sens);
        static auto cursor_visible(void) -> bool;
        static void hide_cursor(void);
        static void show_cursor(void);
        static void __update(void);
    };
} // namespace wze
