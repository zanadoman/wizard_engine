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

#ifndef WIZARD_ENGINE_ENTITY_HPP
#define WIZARD_ENGINE_ENTITY_HPP

#include <wizard_engine/component.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file entity.hpp
 * @author Zana Domán
 * @brief Composes components together.
 */
class entity : public component {
  private:
    std::vector<std::weak_ptr<component>> _components;
    float _x;
    float _y;
    float _angle;
    std::array<float, 4> _transformation_matrix;
    float _x_offset;
    float _y_offset;
    float _angle_offset;
    bool _attach_x;
    bool _attach_y;
    bool _attach_angle;
    bool _x_angle_lock;
    bool _y_angle_lock;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Updates the x position of a component instance.
     */
    void update_x(component& instance);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Updates the y position of a component instance.
     */
    void update_y(component& instance);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Updates the angle of a component instance.
     */
    void update_angle(component& instance);

  public:
    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the components of the entity.
     * @return Components of the entity.
     */
    virtual std::vector<std::weak_ptr<component>>& components();

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the x position of the entity.
     * @return X position of the entity.
     */
    virtual float x() const;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets the x position of the entity.
     * @param x X position of the entity.
     */
    void set_x(float x) override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the y position of the entity.
     * @return Y position of the entity.
     */
    virtual float y() const;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets the y position of the entity.
     * @param y Y position of the entity.
     */
    void set_y(float y) override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the angle of the entity.
     * @return Angle of the entity.
     */
    virtual float angle() const;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets the angle of the entity.
     * @param angle Angle of the entity.
     */
    void set_angle(float angle) override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the x offset of the entity.
     * @return X offset of the entity.
     */
    float x_offset() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets the x offset of the entity.
     * @param x_offset X offset of the entity.
     */
    virtual void set_x_offset(float x_offset);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the y offset of the entity.
     * @return Y offset of the entity.
     */
    float y_offset() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets the y offset of the entity.
     * @param y_offset Y offset of the entity.
     */
    virtual void set_y_offset(float y_offset);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns the angle offset of the entity.
     * @return Angle offset of the entity.
     */
    float angle_offset() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets the angle offset of the entity.
     * @param angle_offset Angle offset of the entity.
     */
    virtual void set_angle_offset(float angle_offset);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is attached to entities.
     * @return Whether the x position is attached to entities.
     */
    bool attach_x() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets whether the x position is attached to entities.
     * @param attach_x Whether the x position is attached to entities.
     */
    virtual void set_attach_x(bool attach_x);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is attached to entities.
     * @return Whether the y position is attached to entities.
     */
    bool attach_y() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets whether the y position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     */
    virtual void set_attach_y(bool attach_y);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns whether the angle is attached to entities.
     * @return Whether the angle is attached to entities.
     */
    bool attach_angle() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets whether the angle is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     */
    virtual void set_attach_angle(bool attach_angle);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is affected by the angle.
     * @return Whether the x position is affected by the angle.
     */
    bool x_angle_lock() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets whether the x position is affected by the angle.
     * @param x_angle_lock Whether the x position is affected by the angle.
     */
    virtual void set_x_angle_lock(bool x_angle_lock);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is affected by the angle.
     * @return Whether the y position is affected by the angle.
     */
    bool y_angle_lock() const override;

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Sets whether the y position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     */
    virtual void set_y_angle_lock(bool y_angle_lock);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Constructs an entity instance.
     * @param components Components of the entity.
     * @param x X position of the entity.
     * @param y Y position of the entity.
     * @param angle Angle of the entity.
     * @param x_offset X offset of the entity.
     * @param y_offset Y offset of the entity.
     * @param angle_offset Angle offset of the entity.
     * @param attach_x Whether the x position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     * @param attach_angle Whether tha angle is attached to entities.
     * @param x_angle_lock Whether the x position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     */
    entity(std::vector<std::weak_ptr<component>> const& components = {},
           float x = 0, float y = 0, float angle = 0, float x_offset = 0,
           float y_offset = 0, float angle_offset = 0, bool attach_x = true,
           bool attach_y = true, bool attach_angle = true,
           bool x_angle_lock = true, bool y_angle_lock = true);

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Explicitly updates the components of the entity and erases expired
     * ones.
     */
    virtual void recompose();

    /**
     * @file entity.hpp
     * @author Zana Domán
     * @brief Default virtual destructor.
     */
    virtual ~entity() = default;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_ENTITY_HPP */
