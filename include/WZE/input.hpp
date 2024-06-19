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
#include "key.hpp"    // IWYU pragma: keep

namespace wze {
/**
 * @file input.hpp
 * @author Zana Domán
 * @brief Subsystem to handle keyboard and mouse input.
 */
class input final {
  private:
    static std::array<bool, KEY_COUNT> _keys;
    static float_t _cursor_absolute_x;
    static float_t _cursor_absolute_y;
    static float_t _cursor_relative_x;
    static float_t _cursor_relative_y;
    static float_t _mouse_sensitivity;
    static bool _cursor_visible;
    static wze::cursor _cursor;

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for keyboard/mousekeys.
     */
    static void _update_keys();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for cursor absolute/relative positions.
     */
    static void _update_cursor();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    input() = default;

  public:
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Queries the current state of a keyboard/mousekey.
     * @param key Keyboard/mousekey.
     * @return State of the given keyboard/mousekey.
     */
    static bool keys(key key);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute x position of the cursor.
     * @return Cursor absolute x position inside the window.
     */
    static float_t cursor_absolute_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute y position of the cursor.
     * @return Cursor absolute y position inside the window.
     */
    static float_t cursor_absolute_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative x position of the cursor.
     * @return Cursor relative x position to the last absolute x position.
     */
    static float_t cursor_relative_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative y position of the cursor.
     * @return Cursor relative y position to the last absolute y position.
     */
    static float_t cursor_relative_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the spatial x, y components of the cursor.
     * @details Transforms the cursor's absolute position, then unprojects it
     * into the game's 3D space by using the z parameter.
     * @param z Used as the z component in the unprojection.
     * @return Tuple containing the unprojected x, y components.
     */
    static std::pair<float_t, float_t> cursor_spatial_xy(float_t z);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the sensitivity of the mouse.
     * @return Mouse sensitivity.
     */
    static float_t mouse_sensitivity();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the sensitivity of the mouse.
     * @details The cursor's relative position is multiplied with this value
     * without further modification.
     * @param mouse_sensitivity Mouse sensitivity.
     * @note Setting this value to 0 locks the cursor's relative position,
     * setting this value less than 0 inverts the cursor's relative position.
     */
    static void set_mouse_sensitivity(float_t mouse_sensitivity);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns true if the cursor if visible, false otherwise.
     * @return Cursor's current visibility.
     */
    static bool cursor_visible();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Changes the visibility of the cursor.
     * @param cursor_visibility Cursor visibility.
     * @note Hiding the cursor also captures it into the game's window.
     */
    static void set_cursor_visibility(bool cursor_visibility);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the appereance of the cursor.
     * @return Cursor.
     */
    static wze::cursor const& cursor();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Changes the appereance of the cursor.
     */
    static void set_cursor(wze::cursor const& cursor);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls the current state of the keyboard and mouse.
     * @warning This method is handled by the engine itself, calling it
     * explicitly can lead to undefined behavior.
     */
    static void __update();
};
} // namespace wze
