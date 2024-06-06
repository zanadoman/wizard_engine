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

#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class math final {
        public:
        /**
         * @file math.hpp
         * @author Zana Domán
         * @brief Calculates the length of the vector formed by points.
         * @param x1 Initial point x.
         * @param y1 Initial point y.
         * @param x2 Terminal point x.
         * @param y2 Terminal point y.
         * @return Length of the formed vector.
         */
        static float_t distance(float_t x1, float_t y1, float_t x2, float_t y2);

        /**
         * @file math.hpp
         * @author Zana Domán
         * @brief Calculates the angle of the vector formed by points.
         * @param x1 Initial point x.
         * @param y1 Initial point y.
         * @param x2 Terminal point x.
         * @param y2 Terminal point y.
         * @return Angle of the formed vector.
         */
        static float_t angle(float_t x1, float_t y1, float_t x2, float_t y2);

        /**
         * @file math.hpp
         * @author Zana Domán
         * @brief Returns the x component of the vector formed by distance and
         * angle.
         * @param distance Length of the vector.
         * @param angle Angle of the vector.
         * @return X component of the formed vector.
         */
        static float_t move_x(float_t distance, float_t angle);

        /**
         * @file math.hpp
         * @author Zana Domán
         * @brief Returns the y component of the vector formed by distance and
         * angle.
         * @param distance Length of the vector.
         * @param angle Angle of the vector.
         * @return Y component of the formed vector.
         */
        static float_t move_y(float_t distance, float_t angle);

        /**
         * @file math.hpp
         * @author Zana Domán
         * @brief Converts degrees to radians.
         * @param degrees Angle in degrees.
         * @return Angle in radians.
         * @note This function can be inlined and evaluated at compile time.
         */
        static inline constexpr float_t to_radians(float_t degrees) {
            constexpr float_t radian = std::numbers::pi_v<float_t> / 180.f;
            return degrees * radian;
        }

        /**
         * @file math.hpp
         * @author Zana Domán
         * @brief Converts radians to degrees.
         * @param radians Angle in radians.
         * @return Angle in degrees.
         * @note This function can be inlined and evaluated at compile time.
         */
        static inline constexpr float_t to_degrees(float_t radians) {
            constexpr float_t degree = 180.f / std::numbers::pi_v<float_t>;
            return radians * degree;
        }
    };
} // namespace wze
