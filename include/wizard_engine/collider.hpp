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

#ifndef WIZARD_ENGINE_COLLIDER_HPP
#define WIZARD_ENGINE_COLLIDER_HPP

#include <wizard_engine/composition.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/polygon.hpp>

namespace wze {
/*
 * @file collider.hpp
 * @author Zana Domán
 * @brief Rigid entity.
 */
class collider : public entity {
  private:
    static std::array<std::vector<collider*>,
                      std::numeric_limits<uint8_t>::max()>
        _worlds;
    polygon _body;
    float _force;
    float _mass;
    uint8_t _world;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Initiates collision on x axis.
     * @param force Force of the collision.
     */
    void push_x(float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Initiates collision on y axis.
     * @param force Force of the collision.
     */
    void push_y(float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Initiates collision on both x and y axis.
     * @param force Force of the collision.
     */
    void push_xy(float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the possible contacts of the collision.
     * @return Possible contacts of the collision.
     */
    std::vector<collider*> contacts() const;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the mass of the possible contacts of the collision.
     * @param contacts Possible contacts of the collision.
     * @return Mass of the possible contacts of the collision.
     */
    float contacts_mass(std::vector<collider*> const& contacts) const;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Statically resolves a collision with another collider on x axis.
     * @param other Other collider.
     */
    void resolve_x(collider const& other);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Dynamically resolves a collision with another collider on x axis.
     * @param other Other collider.
     * @return Whether the collision is resolved or not.
     */
    bool resolve_x(collider& other, float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Statically resolves a collision with another collider on y axis.
     * @param other Other collider.
     */
    void resolve_y(collider const& other);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Dynamically resolves a collision with another collider on y axis.
     * @param other Other collider.
     * @return Whether the collision is resolved or not.
     */
    bool resolve_y(collider& other, float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Statically resolves a collision with another collider on both x
     * and y axis.
     * @param other Other collider.
     */
    void resolve_xy(collider const& other);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Dynamically resolves a collision with another collider on both x
     * and y axis.
     * @param other Other collider.
     * @return Whether the collision is resolved or not.
     */
    bool resolve_xy(collider& other, float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Updates the entities in the world of the collider.
     */
    void update_entities();

  protected:
    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Constructs a collider instance.
     * @param body Body of the collider.
     * @param force Force of the collider.
     * @param mass Mass of the collider.
     * @param world World of the collider.
     * @param components Components of the collider.
     * @param x_offset X offset of the collider.
     * @param y_offset Y offset of the collider.
     * @param angle_offset Angle offset of the collider.
     * @param attach_x Whether the x position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     * @param x_angle_lock Whether the x position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     */
    collider(polygon const& body, float force = 0, float mass = 0,
             uint8_t world = std::numeric_limits<uint8_t>::max(),
             std::vector<std::weak_ptr<component>> const& components = {},
             float x_offset = 0, float y_offset = 0, float angle_offset = 0,
             bool attach_x = true, bool attach_y = true,
             bool attach_angle = true, bool x_angle_lock = true,
             bool y_angle_lock = true);

  public:
    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the body of the collider.
     * @return Body of the collider.
     */
    polygon const& body() const;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the body of the collider.
     * @param body Body of the collider.
     */
    void set_body(polygon const& body);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the force of the collider.
     * @return Force of the collider.
     */
    float force() const;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the force of the collider.
     * @param force Force of the collider.
     */
    void set_force(float force);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the mass of the collider.
     * @return Mass of the collider.
     */
    float mass() const;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the mass of the collider.
     * @param mass Mass of the collider.
     */
    void set_mass(float mass);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the world of the collider.
     * @return World of the collider.
     */
    uint8_t world() const;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the world of the collider.
     * @param world World of the collider.
     */
    void set_world(uint8_t world);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the x position of the collider.
     * @return X position of the collider.
     */
    float x() const final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the x position of the collider.
     * @param x X position of the collider.
     */
    void set_x(float x) final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the y position of the collider.
     * @return Y position of the collider.
     */
    float y() const final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the y position of the collider.
     * @param y Y position of the collider.
     */
    void set_y(float y) final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the angle of the collider.
     * @return Angle of the collider.
     */
    float angle() const final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the angle of the collider.
     * @param angle Angle of the collider.
     */
    void set_angle(float angle) final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns the scale of the collider.
     * @return Scale of the collider.
     */
    float scale() const final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Sets the scale of the collider.
     * @param scale Scale of the collider.
     */
    void set_scale(float scale) final;

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Returns a new collider instance allocated on the heap.
     * @param body Body of the collider.
     * @param force Force of the collider.
     * @param mass Mass of the collider.
     * @param world World of the collider.
     * @param components Components of the collider.
     * @param x_offset X offset of the collider.
     * @param y_offset Y offset of the collider.
     * @param angle_offset Angle offset of the collider.
     * @param attach_x Whether the x position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     * @param x_angle_lock Whether the x position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     * @return New collider instance allocated on the heap.
     */
    static std::unique_ptr<collider>
    create(polygon const& body, float force = 0, float mass = 0,
           uint8_t world = std::numeric_limits<uint8_t>::max(),
           std::vector<std::weak_ptr<component>> const& components = {},
           float x_offset = 0, float y_offset = 0, float angle_offset = 0,
           bool attach_x = true, bool attach_y = true, bool attach_angle = true,
           bool x_angle_lock = true, bool y_angle_lock = true);

    /**
     * @file collider.hpp
     * @author Zana Domán
     * @brief Erases the collider from the world of the collider.
     */
    ~collider();
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_COLLIDER_HPP */
