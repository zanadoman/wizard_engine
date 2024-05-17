#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class camera final {
        private:
        static GLdouble _x;
        static GLdouble _y;
        static GLdouble _z;
        static GLdouble _angle;

        public:
        static auto x() -> GLdouble;
        static void set_x(GLdouble x);
        static auto y() -> GLdouble;
        static void set_y(GLdouble y);
        static auto z() -> GLdouble;
        static void set_z(GLdouble z);
        static auto angle() -> GLdouble;
        static void set_angle(GLdouble angle);
    };
} // namespace wze
