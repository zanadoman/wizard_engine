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

#include "animation.hpp"  // IWYU pragma: keep
#include "assets.hpp"     // IWYU pragma: keep
#include "common.hpp"     // IWYU pragma: keep
#include "renderable.hpp" // IWYU pragma: keep

namespace wze {
/**
 * @file sprite.hpp
 * @author Zana Domán
 * @brief Renderable object.
 */
class sprite final : public renderable, public animatable {
  private:
    float_t _x;
    float_t _y;
    float_t _z;
    float_t _angle;
    float_t _width;
    float_t _height;
    bool _spatial;
    wze::texture _texture;
    uint8_t _color_r;
    uint8_t _color_g;
    uint8_t _color_b;
    uint8_t _color_a;
    enum flip _flip;
    bool _visible;
    uint8_t _priority;

    sprite(float_t x, float_t y, float_t z, float_t angle, float_t width,
           float_t height, bool spatial, wze::texture const& texture,
           uint8_t color_r, uint8_t color_g, uint8_t color_b, uint8_t color_a,
           enum flip flip, bool visible, uint8_t priority);

  public:
    float_t x() const final;
    void set_x(float_t x);

    float_t y() const final;
    void set_y(float_t y);

    float_t z() const final;
    void set_z(float_t z);

    float_t angle() const final;
    void set_angle(float_t angle);

    float_t width() const final;
    void set_width(float_t width);

    float_t height() const final;
    void set_height(float_t height);

    bool spatial() const final;
    void set_spatial(bool spatial);

    wze::texture const& texture() const final;
    void set_texture(wze::texture const& texture) final;

    uint8_t color_r() const final;
    void set_color_r(uint8_t color_r);

    uint8_t color_g() const final;
    void set_color_g(uint8_t color_g);

    uint8_t color_b() const final;
    void set_color_b(uint8_t color_b);

    uint8_t color_a() const final;
    void set_color_a(uint8_t color_a);

    enum flip flip() const final;
    void set_flip(enum flip flip);

    bool visible() const final;
    void set_visibility(bool visibility);

    uint8_t priority() const final;
    void set_priority(uint8_t priority);

    static std::unique_ptr<sprite>
    create(float_t x = 0.f, float_t y = 0.f, float_t z = 0.f,
           float_t angle = 0.f, float_t width = 0.f, float_t height = 0.f,
           bool spatial = false, wze::texture const& texture = {},
           uint8_t color_r = 255, uint8_t color_g = 255, uint8_t color_b = 255,
           uint8_t color_a = 255, enum flip flip = FLIP_NONE,
           bool visible = true, uint8_t priority = 128);
};
} // namespace wze
