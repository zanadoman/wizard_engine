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

#ifndef WIZARD_ENGINE_COMPONENT_HPP
#define WIZARD_ENGINE_COMPONENT_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file component.hpp
 * @author Zana Domán
 * @brief Interface to make an object composable.
 */
class component {
  public:
    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Sets the x position of the object.
     * @param x X position of the object.
     */
    virtual void set_x(float x) = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Sets the y position of the object.
     * @param y Y position of the object.
     */
    virtual void set_y(float y) = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Sets the angle of the object.
     * @param angle Angle of the object.
     */
    virtual void set_angle(float angle) = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns the x offset of the object.
     * @return X offset of the object.
     */
    virtual float x_offset() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns the y offset of the object.
     * @return Y offset of the object.
     */
    virtual float y_offset() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns the angle offset of the object.
     * @return Angle offset of the object.
     */
    virtual float angle_offset() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is attached to entities.
     * @return Whether the x position is attached to entities.
     */
    virtual bool attach_x() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is attached to entities.
     * @return Whether the y position is attached to entities.
     */
    virtual bool attach_y() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns whether the angle is attached to entities.
     * @return Whether the angle is attached to entities.
     */
    virtual bool attach_angle() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is affected by the angle.
     * @return Whether the x position is affected by the angle.
     */
    virtual bool x_angle_lock() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is affected by the angle.
     * @return Whether the y position is affected by the angle.
     */
    virtual bool y_angle_lock() const = 0;

    /**
     * @file component.hpp
     * @author Zana Domán
     * @brief Default virtual destructor.
     */
    virtual ~component() = default;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_COMPONENT_HPP */
