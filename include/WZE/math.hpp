#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class math final {
        public:
        static constexpr auto dist(double ix, double iy, double tx, double ty)
            -> double;
        static constexpr auto angle(double ix, double iy, double tx, double ty)
            -> double;
        static constexpr auto mov_x(double dist, double angle) -> double;
        static constexpr auto mov_y(double dist, double angle) -> double;
    };
} // namespace wze
