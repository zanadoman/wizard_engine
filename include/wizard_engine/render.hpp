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

#include <wizard_engine/export.hpp>
#include <wizard_engine/renderable.hpp>

namespace wze {
/**
 * @file render.hpp
 * @author Zana Domán, Gunics Roland
 * @brief Subsystem to handle graphics.
 */
class render final {
    static SDL_Renderer* _base;
    static float_t _origo_x;
    static float_t _origo_y;
    static std::vector<std::weak_ptr<renderable>> _instances;
    static std::vector<std::shared_ptr<renderable const>> _space;
    static std::vector<std::shared_ptr<renderable const>> _plane;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    render() = default;

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Opens a new blank frame to render on.
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
     * @brief Draws a renderable instance onto the new frame.
     * @param instance Renderable instance.
     * @warning If the renderable instance cannot be drawn, throws
     * std::runtime_error.
     */
    static void draw(renderable const& instance);

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Presents the complete frame.
     */
    static void close_frame();

  public:
#ifdef WZE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the pointer of the renderer.
     * @return Pointer of the renderer.
     */
    static SDL_Renderer* base();
#endif

    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Returns the render queue.
     * @return Render queue.
     */
    static std::vector<std::weak_ptr<renderable>>& instances();

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

#ifdef WZE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Initializes the renderer.
     * @warning If the renderer cannot be initialized, throws
     * std::runtime_error.
     */
    static void init();
#endif

#ifdef WZE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Draws a new frame onto the screen.
     */
    static void update();
#endif

#ifdef WZE_INTERNAL
    /**
     * @file render.hpp
     * @author Zana Domán
     * @brief Detransforms a plane coordinate.
     * @param x X component of the plane coordinate.
     * @param y Y component of the plane coordinate.
     * @return Plane coordinate.
     */
    static std::pair<float_t, float_t> detransform(float_t x, float_t y);
#endif
};
} // namespace wze
