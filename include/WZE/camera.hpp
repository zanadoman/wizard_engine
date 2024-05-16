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

        public:
        static auto x() -> double;
        static void set_x(double x);
        static auto y() -> double;
        static void set_y(double y);
        static auto z() -> double;
        static void set_z(double z);
        static auto angle() -> double;
        static void set_angle(double angle);
    };
}
