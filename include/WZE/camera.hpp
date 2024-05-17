#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class camera final {
        private:
        static double _x;
        static double _y;
        static double _z;
        static double _angle;
        static double _fov;
        static double _aspect;
        static void _update(void);

        public:
        static auto x(void) -> double;
        static void set_x(double x);
        static auto y(void) -> double;
        static void set_y(double y);
        static auto z(void) -> double;
        static void set_z(double z);
        static auto angle(void) -> double;
        static void set_angle(double angle);
        static auto fov(void) -> double;
        static void set_fov(double fov);
        static void __init(double aspect);
    };
} // namespace wze
