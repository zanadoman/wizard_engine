#include "../include/WZE/math.hpp" // IWYU pragma: keep

auto wze::math::distance(double init_x, double init_y, double term_x, double term_y)
    -> double {
    auto diff_x = term_x - init_x;
    auto diff_y = term_y - init_y;

    return std::sqrt(diff_x * diff_x + diff_y * diff_y);
}

auto wze::math::angle(double init_x, double init_y, double term_x, double term_y)
    -> double {
    auto result = double();

    if (init_x == term_x && init_y == term_y) {
        return 0.0;
    }

    result = std::acos(term_x / distance(init_x, init_y, term_x, term_y));

    return term_y < 0.0 ? -result : result;
}

auto wze::math::move_x(double distance, double angle) -> double {
    return distance * std::cos(angle);
}

auto wze::math::move_y(double distance, double angle) -> double {
    return distance * std::sin(angle);
}
