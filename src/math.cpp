#include "WZE/math.hpp"

float_t wze::math::dist(float_t ix, float_t iy, float_t tx, float_t ty) {
    tx -= ix;
    ty -= iy;

    return sqrtf(tx * tx + ty * ty);
}

float_t wze::math::angle(float_t ix, float_t iy, float_t tx, float_t ty) {
    float_t res;

    if (ix == tx && iy == ty) {
        return 0.0f;
    }

    res = acosf(tx / dist(ix, iy, tx, ty));

    return ty < 0.0f ? -res : res;
}

float_t wze::math::mov_x(float_t dist, float_t angle) {
    return dist * cosf(angle);
}

float_t wze::math::mov_y(float_t dist, float_t angle) {
    return dist * sinf(angle);
}
