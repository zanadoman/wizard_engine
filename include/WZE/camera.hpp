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
        static float_t _focal;
        static std::array<float_t, 4> _rotmat;

        public:
        static float_t x();
        static void set_x(float_t x);
        static float_t y();
        static void set_y(float_t y);
        static float_t z();
        static void set_z(float_t z);
        static float_t angle();
        static void set_angle(float_t angle);
        static float_t focal();
        static void set_focal(float_t focal);
        static void __project(renderable& renderable);
    };
} // namespace wze
