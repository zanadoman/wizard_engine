#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class math final {
        public: static float distance(float init_x, float init_y, float term_x, float term_y);
        public: static float angle(float init_x, float init_y, float term_x, float term_y);

        public: static float move_x(float distance, float angle);
        public: static float move_y(float distance, float angle);
    };
}
