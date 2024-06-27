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

#ifndef WIZARD_ENGINE_MATH_HPP
#define WIZARD_ENGINE_MATH_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file math.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle vector math and unit conversions.
 */
class math final {
    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    math() = default;

  public:
    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns the length of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @return Length of the vector.
     */
    static float_t distance(float_t x, float_t y);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Returns the angle of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @return Angle of the vector.
     */
    static float_t angle(float_t x, float_t y);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Moves the x component of a vector.
     * @param distance Length of the movement.
     * @param angle Angle of the movement.
     * @return Moved x component of the vector.
     */
    static float_t move_x(float_t distance, float_t angle);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Moves the y component of a vector.
     * @param distance Length of the movement.
     * @param angle Angle of the movement
     * @return Moved y component of the vector.
     */
    static float_t move_y(float_t distance, float_t angle);

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Creates a rotation matrix.
     * @param angle Angle of the rotation matrix.
     * @return Created rotation matrix.
     */
    static std::array<float_t, 4> rotation_matrix(float_t angle);

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Rotates the x component of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @param rotation_matrix Matrix of the rotation.
     * @return Rotated x component of the vector.
     */
    static float_t rotate_x(float_t x, float_t y,
                            std::array<float_t, 4> const& rotation_matrix);

    /**
     * @file math.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Rotates the y component of a vector.
     * @param x X component of the vector.
     * @param y Y component of the vector.
     * @param rotation_matrix Matrix of the rotation.
     * @return Rotated y component of the vector.
     */
    static float_t rotate_y(float_t x, float_t y,
                            std::array<float_t, 4> const& rotation_matrix);

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Converts degrees to radians.
     * @param degrees Angle in degrees.
     * @return Angle in radians.
     */
    static constexpr float_t to_radians(float_t degrees) {
        return degrees * std::numbers::pi_v<float_t> / 180.f;
    }

    /**
     * @file math.hpp
     * @author Zana Domán
     * @brief Converts radians to degrees.
     * @param radians Angle in radians.
     * @return Angle in degrees.
     */
    static constexpr float_t to_degrees(float_t radians) {
        return radians * 180.f / std::numbers::pi_v<float_t>;
    }
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_MATH_HPP */
