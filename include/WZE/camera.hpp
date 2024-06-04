#pragma once

#include "common.hpp"     // IWYU pragma: keep
#include "renderable.hpp" // IWYU pragma: keep

namespace wze {
    class camera final {
        private:
        static float_t _x;
        static float_t _y;
        static float_t _z;
        static float_t _angle;
        static float_t _focus;
        static std::array<float_t, 4> _rotation_matrix;

        public:
        static float_t x();
        static void set_x(float_t x);
        static float_t y();
        static void set_y(float_t y);
        static float_t z();
        static void set_z(float_t z);
        static float_t angle();
        static void set_angle(float_t angle);
        static float_t focus();
        static void set_focus(float_t focus);
        static void __project(renderable& instance);
        static void __unproject(float_t& x, float_t& y, float_t z);
    };
} // namespace wze
