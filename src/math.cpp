/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

/**
 * @file math.cpp
 * @brief Math modul.
 * @sa math.hpp
 */

// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE_INTERNAL__

#include <wizard_engine/math.hpp>

float wze::math::length(float x, float y) {
    return sqrtf(powf(x, 2) + powf(y, 2));
}

float wze::math::angle(float x, float y) {
    return atan2f(y, x);
}

std::pair<float, float> wze::math::normalize(float x, float y) {
    if ((bool)x || (bool)y) {
        float length{math::length(x, y)};
        return {x / length, y / length};
    }
    return {0, 0};
}

float wze::math::move_x(float length, float angle) {
    return length * cosf(angle);
}

float wze::math::move_y(float length, float angle) {
    return length * sinf(angle);
}

std::array<float, 4> wze::math::transformation_matrix(float angle,
                                                      float scale) {
    float cosine_scale{cosf(angle) * scale};
    float sine_scale{sinf(angle) * scale};
    return {cosine_scale, -sine_scale, sine_scale, cosine_scale};
}

// NOLINTNEXTLINE(cert-err58-cpp)
std::mt19937_64 wze::math::_mt19937_64{std::random_device{}()};
