#include "../include/WZE/math.hpp" // IWYU pragma: keep

auto wze::math::distance(float init_x, float init_y, float term_x, float term_y)
    -> float {
    auto diff_x = term_x - init_x;
    auto diff_y = term_y - init_y;

    return sqrtf(diff_x * diff_x + diff_y * diff_y);
}

auto wze::math::angle(float init_x, float init_y, float term_x, float term_y)
    -> float {
    auto angle = float();

    if (init_x == term_x && init_y == term_y) {
        return 0;
    }

    angle = acosf(term_x / distance(init_x, init_y, term_x, term_y));

    return term_y < 0 ? -angle : angle;
}

auto wze::math::move_x(float distance, float angle) -> float {
    return distance * cosf(angle);
}

auto wze::math::move_y(float distance, float angle) -> float {
    return distance * sinf(angle);
}
