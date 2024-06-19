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
/*
 * @file window.hpp
 * @author Zana Domán
 * @brief Subsystem to handle game window.
 */
class window final {
  private:
    static SDL_Window* _window;
    static uint16_t _width;
    static uint16_t _height;
    static std::string _title;
    static image _icon;

    /**
     * @file window.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    window() = default;

  public:
    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the pointer of the game window.
     * @return Pointer of the game window.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    static SDL_Window* __window();

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the width of the game window.
     * @return Width of the game window.
     */
    static uint16_t width();

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the height of the game window.
     * @return Height of the game window.
     */
    static uint16_t height();

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the title of the game window.
     * @return Title of the game window.
     */
    static std::string const& title();

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Sets the title of the game window.
     * @param title Title of the game window.
     * @note Empty title defaults to "Wizard Engine".
     */
    static void set_title(std::string const& title);

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Returns the icon of the game window.
     * @return Icon of the game window.
     */
    static image const& icon();

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Sets the icon of the game window.
     * @param icon Icon of the game window.
     * @note Nullptr icon defaults to "./assets/wze/icon.png".
     */
    static void set_icon(image const& icon);

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Opens the game window.
     * @param width Width of the game window.
     * @param height Height of the game window.
     * @warning If game window cannot be opened, throws std::runtime_error.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    static void __init(uint16_t width, uint16_t height);

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Checks if the game window is visible.
     * @return True if game window is visible, false otherwise.
     */
    static bool visible();

    /*
     * @file window.hpp
     * @author Zana Domán
     * @brief Checks if the game window is focused.
     * @return True if game window is focused, false otherwise.
     */
    static bool focused();
};
} // namespace wze
