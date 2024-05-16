#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class math final {
        public:
        static auto distance(double init_x, double init_y, double term_x,
                             double term_y) -> double;

        public:
        static auto angle(double init_x, double init_y, double term_x,
                          double term_y) -> double;

        public:
        static auto move_x(double distance, double angle) -> double;

        public:
        static auto move_y(double distance, double angle) -> double;
    };
} // namespace wze
