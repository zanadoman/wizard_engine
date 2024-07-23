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

#ifndef WIZARD_ENGINE_INPUT_HPP
#define WIZARD_ENGINE_INPUT_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/enums.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file input.hpp
 * @author Zana Domán
 * @brief Subsystem to handle keyboard and mouse input.
 */
class input final {
  private:
    static SDL_Keycode _key;
    static std::array<bool, KEY_COUNT> _keys;
    static float _cursor_absolute_x;
    static float _cursor_absolute_y;
    static float _cursor_relative_x;
    static float _cursor_relative_y;
    static float _mouse_sensitivity;

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    input() = default;

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for the last keyboard event.
     */
    static void update_key();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for keyboard and mousekey states.
     */
    static void update_keys();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for cursor absolute and relative positions.
     */
    static void update_cursor();

  public:
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the key of the last keyboard event in UTF-32 encoding.
     * @return Key of the last keyboard event in UTF-32 encoding.
     */
    static uint32_t key();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute x position of the cursor.
     * @return Current absolute x position of the cursor.
     */
    static float cursor_absolute_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute y position of the cursor.
     * @return Current absolute y position of the cursor.
     */
    static float cursor_absolute_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative x position of the cursor.
     * @return Current relative x position of the cursor.
     */
    static float cursor_relative_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative y position of the cursor.
     * @return Current relative y position of the cursor.
     */
    static float cursor_relative_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the sensitivity of the mouse.
     * @return Sensitivity of the mouse.
     * @note Setting this value to 0 locks the cursor's relative position,
     * setting this value less than 0 inverts the cursor's relative position.
     */
    static float mouse_sensitivity();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the sensitivity of the mouse.
     * @param mouse_sensitivity Sensitivity of the mouse.
     * @note Setting this value to 0 locks the cursor's relative position,
     * setting this value less than 0 inverts the cursor's relative position.
     */
    static void set_mouse_sensitivity(float mouse_sensitivity);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the visibility of the cursor.
     * @return Visibility of the cursor.
     * @note Hiding the cursor also captures it into the game window.
     */
    static bool cursor_visible();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the visibility of the cursor.
     * @param cursor_visible Visibility of the cursor.
     * @note Hiding the cursor also captures it into the game window.
     * @warning If cursor visibility cannot be set, throws std::runtime_error.
     */
    static void set_cursor_visible(bool cursor_visible);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the appearance of the cursor.
     * @return Appearance of the cursor.
     */
    static std::shared_ptr<cursor> cursor_appearance();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the appearance of the cursor.
     * @param cursor_appearance Appearance of the cursor.
     */
    static void
    set_cursor_appearance(std::shared_ptr<cursor> const& cursor_appearance);

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Initializes the input subsystem.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Updates the input subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns true if a keyboard or mousekey is pressed, false
     * otherwise.
     * @param key The keyboard or mousekey.
     * @return True if the keyboard or mousekey is pressed, false otherwise.
     */
    static bool key(enum key key);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the spatial x, y components of the cursor.
     * @param z Spatial z component of the cursor.
     * @return Spatial x, y components of the cursor.
     */
    static std::pair<float, float> cursor_spatial(float z);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_INPUT_HPP */
