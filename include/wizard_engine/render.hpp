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

#ifndef WIZARD_ENGINE_RENDER_HPP
#define WIZARD_ENGINE_RENDER_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file render.hpp
 * @author Zana Domán
 * @brief Flip states.
 */
enum flip {
    FLIP_NONE = SDL_FLIP_NONE,
    FLIP_HORIZONTAL = SDL_FLIP_HORIZONTAL,
    FLIP_VERTICAL = SDL_FLIP_VERTICAL
};

/**
 * @file render.hpp
 * @author Zana Domán
 * @brief Interface to make an object renderable.
 */
class renderable {
  private:
    SDL_FRect _screen_area;
    float_t _screen_angle;

  public:
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the screen area of the object.
     * @return Screen area of the object.
     */
    SDL_FRect const& screen_area() const;

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Sets the screen area of the object.
     * @param screen_area Screen area of the object.
     */
    void set_screen_area(SDL_FRect const& screen_area);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the screen angle of the object.
     * @return Screen angle of the object.
     */
    float_t screen_angle() const;

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Sets the screen angle of the object.
     * @param screen_angle Screen angle of the object.
     */
    void set_screen_angle(float_t screen_angle);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the x position of the object.
     * @return X position of the object.
     */
    virtual float_t x() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the y position of the object.
     * @return Y position of the object.
     */
    virtual float_t y() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the z position of the object.
     * @return Z position of the object.
     * @note Ignored if the object is not spatial.
     */
    virtual float_t z() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the angle of the object.
     * @return Angle of the object.
     */
    virtual float_t angle() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the width of the object.
     * @return Width of the object.
     */
    virtual float_t width() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the height of the object.
     * @return Height of the object.
     */
    virtual float_t height() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns whether the object is spatial or not.
     * @return Whether the object is spatial or not.
     */
    virtual bool spatial() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the texture of the object.
     * @return Texture of the object.
     */
    virtual std::shared_ptr<wze::texture> const& texture() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the red color modifier of the texture.
     * @return Red color modifier of the texture.
     */
    virtual uint8_t color_r() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the green color modifier of the texture.
     * @return Green color modifier of the texture.
     */
    virtual uint8_t color_g() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the blue color modifier of the texture.
     * @return Blue color modifier of the texture.
     */
    virtual uint8_t color_b() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the alpha color modifier of the texture.
     * @return Alpha color modifier of the texture.
     */
    virtual uint8_t color_a() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns whether the object is flipped on one of its axes.
     * @return Whether the object is flipped on one of its axes.
     */
    virtual wze::flip flip() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the visibility of the object.
     * @brief Visibility of the object.
     */
    virtual bool visible() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the priority of the object in the render queue.
     * @brief Priority of the object in the render queue.
     */
    virtual uint8_t priority() const = 0;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Constructs a renderable instance.
     */
    renderable();

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Default virtual destructor.
     */
    virtual ~renderable() = default;
};

/**
 * @file render.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle graphics.
 */
class renderer final {
  private:
    static SDL_Renderer* _base;
    static float_t _origo_x;
    static float_t _origo_y;
    static std::vector<std::weak_ptr<renderable>> _queue;
    static std::vector<std::shared_ptr<renderable const>> _space;
    static std::vector<std::shared_ptr<renderable const>> _plane;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    renderer() = default;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Opens a new frame to render on.
     * @warning If the frame cannot be opened, throws std::runtime_error.
     */
    static void open_frame();

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the visibility of a renderable instance.
     * @param instance Renderable instance.
     * @return Visibility of the renderable instance.
     */
    static bool invisible(renderable const& instance);

    /**
     * @file render.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms a renderable instance.
     * @param instance Renderable instance.
     */
    static void transform(renderable& instance);

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns whether a renderable instance is inside the bounds of
     * the screen or not.
     * @param instance Renderable instance.
     * @return Whether the renderable instance is inside the bounds of the
     * screen or not.
     */
    static bool offscreen(renderable const& instance);

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Renders a renderable instance onto the new frame.
     * @param instance Renderable instance.
     * @warning If the renderable instance cannot be rendered, throws
     * std::runtime_error.
     */
    static void render(renderable const& instance);

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Presents the new frame.
     */
    static void close_frame();

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the pointer of the renderer.
     * @return Pointer of the renderer.
     */
    static SDL_Renderer* base();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the queue of the renderer.
     * @return Queue of the renderer.
     */
    static std::vector<std::weak_ptr<renderable>>& queue();

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the origo x of the screen.
     * @return Origo x of the screen.
     */
    static float_t origo_x();

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Sets the origo x of the screen.
     * @param origo_x Origo x of the screen.
     */
    static void set_origo_x(float_t origo_x);

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the origo y of the sceen.
     * @return Origo y of the screen.
     */
    static float_t origo_y();

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Sets the origo y of the screen.
     * @param origo_y Origo y of the screen.
     */
    static void set_origo_y(float_t origo_y);

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Initializes the renderer.
     * @warning If the renderer cannot be initialized, throws
     * std::runtime_error.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Renders the renderable instances and erases expired ones.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Detransforms a plane coordinate.
     * @param x X component of the plane coordinate.
     * @param y Y component of the plane coordinate.
     * @return Plane coordinate.
     */
    static std::pair<float_t, float_t> detransform(float_t x, float_t y);
#endif /* __WIZARD_ENGINE_INTERNAL */
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_RENDER_HPP */
