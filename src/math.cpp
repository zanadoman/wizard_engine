#include "../include/WZE/math.hpp" // IWYU pragma: keep

float wze::math::dist(float ix, float iy, float tx, float ty) {
    tx -= ix;
    ty -= iy;

    return std::sqrtf(tx * tx + ty * ty);
}

float wze::math::angle(float ix, float iy, float tx, float ty) {
    float res;

    if (ix == tx && iy == ty) {
        return 0.0f;
    }

    res = std::acosf(tx / dist(ix, iy, tx, ty));

    return ty < 0.0f ? -res : res;
}

float wze::math::mov_x(float dist, float angle) {
    return dist * std::cosf(angle);
}

float wze::math::mov_y(float dist, float angle) {
    return dist * std::sinf(angle);
}
