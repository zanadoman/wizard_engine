#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class math final {
        public:
        static float dist(float ix, float iy, float tx, float ty);
        static float angle(float ix, float iy, float tx, float ty);
        static float mov_x(float dist, float angle);
        static float mov_y(float dist, float angle);
    };
} // namespace wze
