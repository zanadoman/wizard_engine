#include "../include/WZE/math.hpp" // IWYU pragma: keep

auto wze::math::distance(double init_x, double init_y, double term_x, double term_y)
    -> double {
    term_x -= init_x;
    term_y -= init_y;

    return sqrt(term_x * term_x + term_y * term_y);
}

auto wze::math::angle(double init_x, double init_y, double term_x, double term_y)
    -> double {
    double result = 0;

    if (init_x == term_x && init_y == term_y) {
        return 0;
    }

    term_x -= init_x;
    term_y -= init_y;

    result = acos(term_x / sqrt(term_x * term_x + term_y * term_y));

    return term_y < 0 ? -result : result;
}

auto wze::math::move_x(double distance, double angle) -> double {
    return distance * cos(angle);
}

auto wze::math::move_y(double distance, double angle) -> double {
    return distance * sin(angle);
}
