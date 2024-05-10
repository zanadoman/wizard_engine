#include "../include/WZE/math.hpp" // IWYU pragma: keep

float wze::math::distance(float init_x, float init_y, float term_x,
                          float term_y) {
    term_x -= init_x;
    term_y -= init_y;

    return sqrtf(term_x * term_x + term_y * term_y);
}

float wze::math::angle(float init_x, float init_y, float term_x, float term_y) {
    float result;

    if (init_x == term_x && init_y == term_y) {
        return 0;
    }

    term_x -= init_x;
    term_y -= init_y;

    result = acosf(term_x / sqrtf(term_x * term_x + term_y * term_y));

    return term_y < 0 ? -result : result;
}

float wze::math::move_x(float distance, float angle) {
    return distance * cosf(angle);
}

float wze::math::move_y(float distance, float angle) {
    return distance * sinf(angle);
}
