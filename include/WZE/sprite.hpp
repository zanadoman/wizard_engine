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

#include <WZE/animation.hpp>
#include <WZE/assets.hpp>
#include <WZE/common.hpp>
#include <WZE/renderable.hpp>

namespace wze {
/**
 * @file sprite.hpp
 * @author Zana Domán
 * @brief Visual object.
 */
class sprite final : public renderable, public animatable {
    float_t _x;
    float_t _y;
    float_t _z;
    float_t _angle;
    float_t _width;
    float_t _height;
    bool _spatial;
    std::shared_ptr<wze::texture> _texture;
    uint8_t _color_r;
    uint8_t _color_g;
    uint8_t _color_b;
    uint8_t _color_a;
    enum flip _flip;
    bool _visible;
    uint8_t _priority;
    bool _active;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Constructs a sprite instance.
     * @param x X position of the sprite.
     * @param y Y position of the sprite.
     * @param z Z position of the sprite.
     * @param angle Angle of the sprite.
     * @param width Width of the sprite.
     * @param height Height of the sprite.
     * @param spatial Whether the sprite is spatial or not.
     * @param texture Texture of the sprite.
     * @param color_r Red color modifier of the texture.
     * @param color_g Green color modifier of the texture.
     * @param color_b Blue color modifier of the texture.
     * @param color_a Alpha color modifier of the texture.
     * @param flip Whether the sprite is flipped on one of its axes.
     * @param visible Visibility of the sprite.
     * @param priority Priority of the sprite in the render queue.
     * @param active Whether the sprite should be animated or not.
     */
    sprite(float_t x, float_t y, float_t z, float_t angle, float_t width,
           float_t height, bool spatial,
           std::shared_ptr<wze::texture> const& texture, uint8_t color_r,
           uint8_t color_g, uint8_t color_b, uint8_t color_a, enum flip flip,
           bool visible, uint8_t priority, bool active);

  public:
    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the x position of the sprite.
     * @return X position of the sprite.
     */
    float_t x() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the x position of the sprite.
     * @param x X position of the sprite.
     */
    void set_x(float_t x);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the y position of the sprite.
     * @return Y position of the sprite.
     */
    float_t y() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the y position of the sprite.
     * @param y Y position of the sprite.
     */
    void set_y(float_t y);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the z position of the sprite.
     * @return Z position of the sprite.
     * @note Ignored if the sprite is not spatial.
     */
    float_t z() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the z position of the sprite.
     * @param z Z position of the sprite.
     * @note Ignored if the sprite is not spatial.
     */
    void set_z(float_t z);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the angle of the sprite.
     * @return Angle of the sprite.
     */
    float_t angle() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the angle of the sprite.
     * @param angle Angle of the sprite.
     */
    void set_angle(float_t angle);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the width of the sprite.
     * @return Width of the sprite.
     */
    float_t width() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the width of the sprite.
     * @param width Width of the sprite.
     */
    void set_width(float_t width);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the height of the sprite.
     * @return Height of the sprite.
     */
    float_t height() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the height of the sprite.
     * @param height Height of the sprite.
     */
    void set_height(float_t height);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns whether the sprite is spatial or not.
     * @return Whether the sprite is spatial or not.
     */
    bool spatial() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets whether the sprite is spatial or not.
     * @param spatial Whether the sprite is spatial or not.
     */
    void set_spatial(bool spatial);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the texture of the sprite.
     * @return Texture of the sprite.
     */
    std::shared_ptr<wze::texture> const& texture() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the texture of the sprite.
     * @param texture Texture of the sprite.
     */
    void set_texture(std::shared_ptr<wze::texture> const& texture) final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the red color modifier of the texture.
     * @return Red color modifier of the texture.
     */
    uint8_t color_r() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the red color modifier of the texture.
     * @param color_r Red color modifier of the texture.
     */
    void set_color_r(uint8_t color_r);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the green color modifier of the texture.
     * @return Green color modifier of the texture.
     */
    uint8_t color_g() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the green color modifier of the texture.
     * @param color_g Green color modifier of the texture.
     */
    void set_color_g(uint8_t color_g);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the blue color modifier of the texture.
     * @return Blue color modifier of the texture.
     */
    uint8_t color_b() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the blue color modifier of the texture.
     * @param color_b Blue color modifier of the texture.
     */
    void set_color_b(uint8_t color_b);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the alpha color modifier of the texture.
     * @return Alpha color modifier of the texture.
     */
    uint8_t color_a() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the alpha color modifier of the texture.
     * @param color_a Alpha color modifier of the texture.
     */
    void set_color_a(uint8_t color_a);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns whether the sprite is flipped on one of its axes.
     * @return Whether the sprite is flipped on one of its axes.
     */
    enum flip flip() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets whether the sprite is flipped on one of its axes.
     * @param flip Whether the sprite is flipped on one of its axes.
     */
    void set_flip(enum flip flip);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the visibility of the sprite.
     * @return Visibility of the sprite.
     */
    bool visible() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the visibility of the sprite.
     * @param visibility Visibility of the sprite.
     */
    void set_visibility(bool visibility);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns the priority of the sprite in the render queue.
     * @return Priority of the sprite in the render queue.
     */
    uint8_t priority() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets the priority of the sprite in the render queue.
     * @param priority Priority of the sprite in the render queue.
     */
    void set_priority(uint8_t priority);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns whether the sprite should be animated or not.
     * @return Whether the sprite should be animated or not.
     */
    bool active() const final;

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Sets whether the sprite should be animated or not.
     * @param active Whether the sprite should be animated or not.
     */
    void set_active(bool active);

    /**
     * @file sprite.hpp
     * @author Zana Domán
     * @brief Returns a new sprite instance allocated on the heap.
     * @param x X position of the sprite.
     * @param y Y position of the sprite.
     * @param z Z position of the sprite.
     * @param angle Angle of the sprite.
     * @param width Width of the sprite.
     * @param height Height of the sprite.
     * @param spatial Whether the sprite is spatial or not.
     * @param texture Texture of the sprite.
     * @param color_r Red color modifier of the texture.
     * @param color_g Green color modifier of the texture.
     * @param color_b Blue color modifier of the texture.
     * @param color_a Alpha color modifier of the texture.
     * @param flip Whether the sprite is flipped on one of its axes.
     * @param visible Visibility of the sprite.
     * @param priority Priority of the sprite in the render queue.
     * @param active Whether the sprite should be animated or not.
     * @return New sprite instance allocated on the heap.
     */
    static std::unique_ptr<sprite>
    create(float_t x = 0.f, float_t y = 0.f, float_t z = 0.f,
           float_t angle = 0.f, float_t width = 0.f, float_t height = 0.f,
           bool spatial = false,
           std::shared_ptr<wze::texture> const& texture = {},
           uint8_t color_r = 255, uint8_t color_g = 255, uint8_t color_b = 255,
           uint8_t color_a = 255, enum flip flip = FLIP_NONE,
           bool visible = true, uint8_t priority = 128, bool active = true);
};
} // namespace wze
