#pragma once

#include "camera.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static void open_frame();
        static void close_frame();

        public:
        static auto abs_projection(const double vertex[3], double screen[2])
            -> bool;
        static auto rel_projection(const double vertex[3], double screen[2])
            -> bool;
        static void update();
    };
} // namespace wze
