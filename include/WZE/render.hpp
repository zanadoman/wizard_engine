#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep
#include "camera.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static void open_frame();
        static void close_frame();

        public:
        static auto project_absolute(const double vertex[3], double screen[2])
            -> GLint;
        static auto project_relative(const double vertex[3], double screen[2])
            -> GLint;
        static void update();
    };
} // namespace wze
