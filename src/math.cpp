/**
 * zlib License
 *
 * (C) 2023 Zana Domán
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

#include "WZE/math.hpp"

inline float_t wze::math::distance(float_t x1, float_t y1, float_t x2,
                                   float_t y2) {
    return sqrtf(powf(x2 - x1, 2.f) + powf(y2 - y1, 2.f));
}

float_t wze::math::angle(float_t x1, float_t y1, float_t x2, float_t y2) {
    float_t angle;

    if (x1 == x2 && y1 == y2) {
        return 0.f;
    }

    angle = acosf(x2 / distance(x1, y1, x2, y2));

    return y2 < 0.f ? -angle : angle;
}

float_t wze::math::move_x(float_t distance, float_t angle) {
    return distance * cosf(angle);
}

float_t wze::math::move_y(float_t distance, float_t angle) {
    return distance * sinf(angle);
}
