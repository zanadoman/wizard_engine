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

#ifndef WIZARD_ENGINE_RENDERER_HPP
#define WIZARD_ENGINE_RENDERER_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/renderable.hpp>

namespace wze {
/**
 * @file renderer.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle graphics.
 */
class renderer final {
  private:
    static float _origo_x;
    static float _origo_y;
    static SDL_Renderer* _base;
    static uint8_t _background_color_r;
    static uint8_t _background_color_g;
    static uint8_t _background_color_b;
    static std::shared_ptr<texture> _background_texture;
    static std::unique_ptr<texture, std::function<void(texture*)>> _space;
    static uint8_t _space_color_r;
    static uint8_t _space_color_g;
    static uint8_t _space_color_b;
    static uint8_t _space_color_a;
    static std::shared_ptr<texture> _space_texture;
    static SDL_FRect _space_area;
    static std::unique_ptr<texture, std::function<void(texture*)>> _plane;
    static uint8_t _plane_color_r;
    static uint8_t _plane_color_g;
    static uint8_t _plane_color_b;
    static uint8_t _plane_color_a;

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    renderer() = default;

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Opens a new frame to render on.
     * @warning If the new frame cannot be opened, throws wze::exception.
     */
    static void open_frame();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Opens the space to render on.
     * @warning If the space cannot be opened, throws wze::exception.
     */
    static void open_space();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Opens the plane to render on.
     * @warning If the plane cannot be opened, throws wze::exception.
     */
    static void open_plane();

    /**
     * @file renderer.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Returns the visibility of a renderable instance.
     * @param instance Renderable instance.
     * @return Visibility of the renderable instance.
     */
    [[nodiscard]] static bool invisible(renderable const& instance);

    /**
     * @file renderer.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Transforms a renderable instance.
     * @param instance Renderable instance.
     */
    static void transform(renderable& instance);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns whether a renderable instance is inside the bounds of
     * the screen or not.
     * @param instance Renderable instance.
     * @return Whether the renderable instance is inside the bounds of the
     * screen or not.
     */
    [[nodiscard]] static bool offscreen(renderable const& instance);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Renders a renderable instance onto the new frame.
     * @param instance Renderable instance.
     * @warning If the renderable instance cannot be rendered, throws
     * wze::exception.
     */
    static void render(renderable const& instance);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Presents the new frame.
     * @warning If the new frame cannot be presented, throws wze::exception.
     */
    static void close_frame();

  public:
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the origo x of the screen.
     * @return Origo x of the screen.
     */
    [[nodiscard]] static float origo_x();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the origo x of the screen.
     * @param origo_x Origo x of the screen.
     */
    static void set_origo_x(float origo_x);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the origo y of the screen.
     * @return Origo y of the screen.
     */
    [[nodiscard]] static float origo_y();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the origo y of the screen.
     * @param origo_y Origo y of the screen.
     */
    static void set_origo_y(float origo_y);

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the pointer of the renderer.
     * @return Pointer of the renderer.
     */
    [[nodiscard]] static SDL_Renderer* base();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the red color modifier of the background.
     * @return Red color modifier of the background.
     */
    [[nodiscard]] static uint8_t background_color_r();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the red color modifier of the background.
     * @param background_color_r Red color modifier of the background.
     */
    static void set_background_color_r(uint8_t background_color_r);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the green color modifier of the background.
     * @return Green color modifier of the background.
     */
    [[nodiscard]] static uint8_t background_color_g();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the green color modifier of the background.
     * @param background_color_g Green color modifier of the background.
     */
    static void set_background_color_g(uint8_t background_color_g);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the blue color modifier of the background.
     * @return Blue color modifier of the background.
     */
    [[nodiscard]] static uint8_t background_color_b();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the blue color modifier of the background.
     * @param background_color_b Blue color modifier of the background.
     */
    static void set_background_color_b(uint8_t background_color_b);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the texture of the background.
     * @return texture of the background.
     * @note The size of the texture should match the size of the game window.
     */
    [[nodiscard]] static std::shared_ptr<texture> const& background_texture();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the texture of the background.
     * @param background_texture texture of the background.
     * @note The size of the texture should match the size of the game window.
     */
    static void
    set_background_texture(std::shared_ptr<texture> const& background_texture);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the red color modifier of the space.
     * @return Red color modifier of the space.
     */
    [[nodiscard]] static uint8_t space_color_r();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the red color modifier of the space.
     * @param space_color_r Red color modifier of the space.
     */
    static void set_space_color_r(uint8_t space_color_r);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the green color modifier of the space.
     * @return Green color modifier of the space.
     */
    [[nodiscard]] static uint8_t space_color_g();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the green color modifier of the space.
     * @param space_color_g Green color modifier of the space.
     */
    static void set_space_color_g(uint8_t space_color_g);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the blue color modifier of the space.
     * @return Blue color modifier of the space.
     */
    [[nodiscard]] static uint8_t space_color_b();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the blue color modifier of the space.
     * @param space_color_b Blue color modifier of the space.
     */
    static void set_space_color_b(uint8_t space_color_b);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the alpha color modifier of the space.
     * @return Alpha color modifier of the space.
     */
    [[nodiscard]] static uint8_t space_color_a();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the alpha color modifier of the space.
     * @param space_color_a Alpha color modifier of the space.
     */
    static void set_space_color_a(uint8_t space_color_a);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the background texture of the space.
     * @return Background texture of the space.
     * @note The texture should be a square whose side length is equal to the
     * diagonal of the game window.
     */
    [[nodiscard]] static std::shared_ptr<texture> const& space_texture();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the background texture of the space.
     * @param space_texture Background texture of the space.
     * @note The texture should be a square whose side length is equal to the
     * diagonal of the game window.
     */
    static void
    set_space_texture(std::shared_ptr<texture> const& space_texture);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the red color modifier of the plane.
     * @return Red color modifier of the plane.
     */
    [[nodiscard]] static uint8_t plane_color_r();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the red color modifier of the plane.
     * @param plane_color_r Red color modifier of the plane.
     */
    static void set_plane_color_r(uint8_t plane_color_r);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the green color modifier of the plane.
     * @return Green color modifier of the plane.
     */
    [[nodiscard]] static uint8_t plane_color_g();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the green color modifier of the plane.
     * @param plane_color_g Green color modifier of the plane.
     */
    static void set_plane_color_g(uint8_t plane_color_g);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the blue color modifier of the plane.
     * @return Blue color modifier of the plane.
     */
    [[nodiscard]] static uint8_t plane_color_b();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the blue color modifier of the plane.
     * @param plane_color_b Blue color modifier of the plane.
     */
    static void set_plane_color_b(uint8_t plane_color_b);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the alpha color modifier of the plane.
     * @return Alpha color modifier of the plane.
     */
    [[nodiscard]] static uint8_t plane_color_a();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the alpha color modifier of the plane.
     * @param plane_color_a Alpha color modifier of the plane.
     */
    static void set_plane_color_a(uint8_t plane_color_a);

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Initializes the renderer subsystem.
     * @warning If the renderer subsystem cannot be initialized, throws
     * wze::exception.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Updates the renderer subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file renderer.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Detransforms a plane coordinate.
     * @param x X component of the plane coordinate.
     * @param y Y component of the plane coordinate.
     * @return Detransformed plane coordinate.
     */
    [[nodiscard]] static std::pair<float, float> detransform(float x, float y);
#endif /* __WIZARD_ENGINE_INTERNAL__ */
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_RENDERER_HPP */
