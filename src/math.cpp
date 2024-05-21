#include "../include/WZE/math.hpp" // IWYU pragma: keep

constexpr auto wze::math::dist(double ix, double iy, double tx, double ty)
    -> double {
    tx -= ix;
    ty -= iy;

    return std::sqrt(tx * tx + ty * ty);
}

constexpr auto wze::math::angle(double ix, double iy, double tx, double ty)
    -> double {
    double res;

    if (ix == tx && iy == ty) {
        return 0.0;
    }

    res = std::acos(tx / dist(ix, iy, tx, ty));

    return ty < 0.0 ? -res : res;
}

constexpr auto wze::math::mov_x(double dist, double angle) -> double {
    return dist * std::cos(angle);
}

constexpr auto wze::math::mov_y(double dist, double angle) -> double {
    return dist * std::sin(angle);
}
