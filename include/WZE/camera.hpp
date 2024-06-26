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

#pragma once

#include <WZE/common.hpp>
#include <WZE/renderable.hpp>

namespace wze {
/**
 * @file camera.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle transformations and spatial projections.
 */
class camera final {
    static float_t _x;
    static float_t _y;
    static float_t _z;
    static float_t _angle;
    static float_t _focus;
    static std::array<float_t, 4> _rotation_matrix;

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    camera() = default;

  public:
    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the x position of the camera.
     * @return X position of the camera.
     */
    static float_t x();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the x position of the camera.
     * @param x X position of the camera.
     */
    static void set_x(float_t x);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the y position of the camera.
     * @return Y position of the camera.
     */
    static float_t y();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the y position of the camera.
     * @param y Y position of the camera.
     */
    static void set_y(float_t y);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the z position of the camera.
     * @return Z position of the camera.
     */
    static float_t z();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the z position of the camera.
     * @param z Z position of the camera.
     */
    static void set_z(float_t z);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the angle of the camera.
     * @return Angle of the camera.
     */
    static float_t angle();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the angle of the camera.
     * @param angle Angle of the camera.
     */
    static void set_angle(float_t angle);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the focus of the camera.
     * @return Focus of the camera.
     */
    static float_t focus();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the focus of the camera.
     * @param focus Focus of the camera.
     */
    static void set_focus(float_t focus);

#ifdef WZE_INTERNAL
    /**
     * @file camera.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms and projects a renderable instance.
     * @param instance Renderable instance.
     */
    static void project(renderable& instance);
#endif

#ifdef WZE_INTERNAL
    /**
     * @file camera.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Detransforms and unprojects a spatial coordinate.
     * @param x X component of the spatial coordinate.
     * @param y Y component of the spatial coordinate.
     * @param z Z component of the spatial coordinate.
     * @return Plane coordinate.
     */
    static std::pair<float_t, float_t> unproject(float_t x, float_t y,
                                                 float_t z);
#endif
};
} // namespace wze
