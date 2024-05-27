#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class math final {
        public:
        static float_t dist(float_t ix, float_t iy, float_t tx, float_t ty);
        static float_t angle(float_t ix, float_t iy, float_t tx, float_t ty);
        static float_t mov_x(float_t dist, float_t angle);
        static float_t mov_y(float_t dist, float_t angle);
    };
} // namespace wze
