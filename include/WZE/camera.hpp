#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class camera final {
        private:
        static float _x;
        static float _y;

        public:
        static auto x() -> float;
        static void set_x(float x);
        static auto y() -> float;
        static void set_y(float y);
    };
}
