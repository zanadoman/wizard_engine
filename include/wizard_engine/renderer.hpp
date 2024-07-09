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
    static SDL_Renderer* _base;
    static float _origo_x;
    static float _origo_y;

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
     * @warning If the frame cannot be opened, throws std::runtime_error.
     */
    static void open_frame();

    /**
     * @file renderer.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Returns the visibility of a renderable instance.
     * @param instance Renderable instance.
     * @return Visibility of the renderable instance.
     */
    static bool invisible(renderable const& instance);

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
    static bool offscreen(renderable const& instance);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Renders a renderable instance onto the new frame.
     * @param instance Renderable instance.
     * @warning If the renderable instance cannot be rendered, throws
     * std::runtime_error.
     */
    static void render(renderable const& instance);

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Presents the new frame.
     */
    static void close_frame();

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the pointer of the renderer.
     * @return Pointer of the renderer.
     */
    static SDL_Renderer* base();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Returns the origo x of the screen.
     * @return Origo x of the screen.
     */
    static float origo_x();

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
    static float origo_y();

    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Sets the origo y of the screen.
     * @param origo_y Origo y of the screen.
     */
    static void set_origo_y(float origo_y);

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Initializes the renderer subsystem.
     * @warning If the renderer subsystem cannot be initialized, throws
     * std::runtime_error.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderer.hpp
     * @author Zana Domán
     * @brief Updates the renderer subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file renderer.hpp
     * @author Zana Domán, Gunics Roland
     * @brief Detransforms a plane coordinate.
     * @param x X component of the plane coordinate.
     * @param y Y component of the plane coordinate.
     * @return Detransformed plane coordinate.
     */
    static std::pair<float, float> detransform(float x, float y);
#endif /* __WIZARD_ENGINE_INTERNAL */
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_RENDERER_HPP */
