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

#ifndef WIZARD_ENGINE_CAMERA_HPP
#define WIZARD_ENGINE_CAMERA_HPP

#include <wizard_engine/export.hpp>
#include <wizard_engine/renderable.hpp>

namespace wze {
/**
 * @file camera.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle transformations and spatial projections.
 */
class camera final {
  private:
    static float _x;
    static float _y;
    static float _z;
    static float _angle;
    static std::array<float, 4> _transformation_matrix;
    static float _focus;

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
    static float x();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the x position of the camera.
     * @param x X position of the camera.
     */
    static void set_x(float x);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the y position of the camera.
     * @return Y position of the camera.
     */
    static float y();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the y position of the camera.
     * @param y Y position of the camera.
     */
    static void set_y(float y);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the z position of the camera.
     * @return Z position of the camera.
     */
    static float z();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the z position of the camera.
     * @param z Z position of the camera.
     */
    static void set_z(float z);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the angle of the camera.
     * @return Angle of the camera.
     */
    static float angle();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the angle of the camera.
     * @param angle Angle of the camera.
     */
    static void set_angle(float angle);

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the transformation matrix of the camera.
     * @return Transformation matrix of the camera.
     */
    static std::array<float, 4> const& transformation_matrix();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Returns the focus of the camera.
     * @return Focus of the camera.
     */
    static float focus();

    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Sets the focus of the camera.
     * @param focus Focus of the camera.
     */
    static void set_focus(float focus);

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file camera.hpp
     * @author Zana Domán
     * @brief Initializes the camera subsystem.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file camera.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms and projects a renderable instance.
     * @param instance Renderable instance.
     */
    static void project(renderable& instance);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file camera.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms and projects a spatial coordinate.
     * @param x X component of the spatial coordinate.
     * @param y Y component of the spatial coordinate.
     * @param z Z component of the spatial coordinate.
     * @return Plane coordinate.
     */
    static std::pair<float, float> project(float x, float y, float z);

    /**
     * @file camera.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Detransforms and unprojects a plane coordinate.
     * @param x X component of the plane coordinate.
     * @param y Y component of the plane coordinate.
     * @param z Z component of the spatial coordinate.
     * @return Spatial coordinate.
     */
    static std::pair<float, float> unproject(float x, float y, float z);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_CAMERA_HPP */
