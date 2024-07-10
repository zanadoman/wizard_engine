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

#ifndef WIZARD_ENGINE_RENDERABLE_HPP
#define WIZARD_ENGINE_RENDERABLE_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/enums.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file renderable.hpp
 * @author Zana Domán
 * @brief Interface to make an object renderable.
 */
class renderable {
  private:
    static std::vector<renderable*> _instances;
    SDL_FRect _screen_area;
    float _screen_angle;

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the renderable instances.
     * @return Renderable instances.
     */
    static std::vector<renderable*> const& instances();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the screen area of the object.
     * @return Screen area of the object.
     */
    SDL_FRect const& screen_area() const;

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Sets the screen area of the object.
     * @param screen_area Screen area of the object.
     */
    void set_screen_area(SDL_FRect const& screen_area);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the screen angle of the object.
     * @return Screen angle of the object.
     */
    float screen_angle() const;

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Sets the screen angle of the object.
     * @param screen_angle Screen angle of the object.
     */
    void set_screen_angle(float screen_angle);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the x position of the object.
     * @return X position of the object.
     */
    virtual float x() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the y position of the object.
     * @return Y position of the object.
     */
    virtual float y() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the z position of the object.
     * @return Z position of the object.
     * @note Ignored if the object is not spatial.
     */
    virtual float z() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the angle of the object.
     * @return Angle of the object.
     */
    virtual float angle() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the width of the object.
     * @return Width of the object.
     */
    virtual float width() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the height of the object.
     * @return Height of the object.
     */
    virtual float height() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns whether the object is spatial or not.
     * @return Whether the object is spatial or not.
     */
    virtual bool spatial() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the texture of the object.
     * @return Texture of the object.
     */
    virtual std::shared_ptr<wze::texture> const& texture() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the red color modifier of the texture.
     * @return Red color modifier of the texture.
     */
    virtual uint8_t color_r() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the green color modifier of the texture.
     * @return Green color modifier of the texture.
     */
    virtual uint8_t color_g() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the blue color modifier of the texture.
     * @return Blue color modifier of the texture.
     */
    virtual uint8_t color_b() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the alpha color modifier of the texture.
     * @return Alpha color modifier of the texture.
     */
    virtual uint8_t color_a() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns whether the object is flipped on one of its axes.
     * @return Whether the object is flipped on one of its axes.
     */
    virtual wze::flip flip() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the visibility of the object.
     * @brief Visibility of the object.
     */
    virtual bool visible() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the priority of the object in the render queue.
     * @brief Priority of the object in the render queue.
     */
    virtual uint8_t priority() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Constructs a renderable instance and pushes into instances.
     */
    renderable();

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Copy constructor.
     * @param other Other renderable instance.
     */
    renderable(renderable const& other);

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Destroys the renderable instance and erases from instances.
     */
    virtual ~renderable();

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Copy assignment operator.
     * @param other Other renderable instance.
     * @return Self reference.
     */
    renderable& operator=(renderable const& other);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_RENDERABLE_HPP */
