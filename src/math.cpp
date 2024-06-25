/**
 * zlib License
 *
 * Copyright (C) 2023-2024 Zana Domán
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

#define WZE_INTERNAL

#include <WZE/math.hpp>

float_t wze::math::distance(float_t x, float_t y) {
    return sqrtf(powf(x, 2.f) + powf(y, 2.f));
}

float_t wze::math::angle(float_t x, float_t y) {
    float_t angle;

    if (x == 0.f && y == 0.f) {
        return 0.f;
    }

    angle = acosf(x / distance(x, y));
    return y < 0.f ? -angle : angle;
}

float_t wze::math::move_x(float_t distance, float_t angle) {
    return distance * cosf(angle);
}

float_t wze::math::move_y(float_t distance, float_t angle) {
    return distance * sinf(angle);
}

float_t wze::math::rotate_x(float_t x, float_t y,
                            std::array<float_t, 4> const& rotation_matrix) {
    return x * rotation_matrix.at(0) + y * rotation_matrix.at(1);
}

float_t wze::math::rotate_y(float_t x, float_t y,
                            std::array<float_t, 4> const& rotation_matrix) {
    return x * rotation_matrix.at(2) + y * rotation_matrix.at(3);
}

std::array<float_t, 4> wze::math::rotation_matrix(float_t angle) {
    std::array<float_t, 4> rotation_matrix;

    rotation_matrix.at(0) = cosf(angle);
    rotation_matrix.at(1) = sinf(angle);
    rotation_matrix.at(2) = -rotation_matrix.at(1);
    rotation_matrix.at(3) = rotation_matrix.at(0);

    return rotation_matrix;
}
