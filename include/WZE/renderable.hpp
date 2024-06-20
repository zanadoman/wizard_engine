/**
 * zlib License
 *
 * Copyright (C) 2023 Zana Domán
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

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
/**
 * @file renderable.hpp
 * @author Zana Domán
 * @brief Flip states.
 */
enum flip {
    FLIP_NONE = SDL_FLIP_NONE,
    FLIP_HORIZONTAL = SDL_FLIP_HORIZONTAL,
    FLIP_VERTICAL = SDL_FLIP_VERTICAL
};

/**
 * @file renderable.hpp
 * @author Zana Domán
 * @brief Interface to make an object renderable.
 */
class renderable {
  private:
    static std::deque<renderable*> _instances;
    SDL_FRect _screen_area;
    float _screen_angle;

  public:
    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns all renderable instances.
     * @return All renderable instances.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    static std::deque<renderable*> const& __instances();

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the screen area of the object.
     * @return Screen area of the object.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    SDL_FRect const& __screen_area() const;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Sets the screen area of the object.
     * @param screen_area Screen area of the object.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    void __set_screen_area(SDL_FRect const& screen_area);

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the screen angle of the object.
     * @return Screen angle of the object.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    float_t __screen_angle() const;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Sets the screen angle of the object.
     * @param screen_angle Screen angle of the object.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    void __set_screen_angle(float_t screen_angle);

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the x position of the object.
     * @return X position of the object.
     */
    virtual float_t x() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the y position of the object.
     * @return Y position of the object.
     */
    virtual float_t y() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the z position of the object.
     * @return Z position of the object.
     * @note Taken into account if the object is spatial, otherwise ignored.
     */
    virtual float_t z() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the angle of the object.
     * @return Angle of the object.
     */
    virtual float_t angle() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the width of the object.
     * @return Width of the object.
     */
    virtual float_t width() const = 0;

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Returns the height of the object.
     * @return Height of the object.
     */
    virtual float_t height() const = 0;

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
    virtual wze::texture const& texture() const = 0;

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
     * @return Wheter the object is flipped on one of its axes.
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
     * @brief Puts the object into the render queue.
     */
    renderable();

    /**
     * @file renderable.hpp
     * @author Zana Domán
     * @brief Removes the object from the render queue.
     */
    virtual ~renderable();
};
} // namespace wze
