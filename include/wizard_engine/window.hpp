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

#ifndef WIZARD_ENGINE_WINDOW_HPP
#define WIZARD_ENGINE_WINDOW_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file window.hpp
 * @author Zana Domán
 * @brief Subsystem to handle game window.
 */
class window final {
  private:
    static SDL_Window* _base;
    static uint16_t _width;
    static uint16_t _height;

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    window() = default;

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the pointer of the game window.
     * @return Pointer of the game window.
     */
    static SDL_Window* base();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the width of the game window.
     * @return Width of the game window.
     */
    static uint16_t width();

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the height of the game window.
     * @return Height of the game window.
     */
    static uint16_t height();

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the title of the game window.
     * @return Title of the game window.
     */
    static std::string title();

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Sets the title of the game window.
     * @param title Title of the game window.
     */
    static void set_title(std::string const& title);

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Sets the icon of the game window.
     * @param icon Icon of the game window.
     */
    static void set_icon(std::shared_ptr<image> const& icon);

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns true if the game window is visible, false otherwise.
     * @return True if the game window is visible, false otherwise.
     */
    static bool visible();

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns true if the game window is focused, false otherwise.
     * @return True if the game window is focused, false otherwise.
     */
    static bool focused();

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Initializes the window subsystem.
     * @param width Width of the game window.
     * @param height Height of the game window.
     * @warning If the window subystem cannot be initialized, throws
     * std::runtime_error.
     */
    static void initialize(uint16_t width, uint16_t height);
#endif /* __WIZARD_ENGINE_INTERNAL */
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_WINDOW_HPP */
