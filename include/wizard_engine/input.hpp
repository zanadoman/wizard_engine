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
 * @brief Touchscreen finger data.
 */
struct finger {
    float absolute_x;
    float absolute_y;
    float relative_x;
    float relative_y;
};

/**
 * @file input.hpp
 * @author Zana Domán
 * @brief Touchscreen gesture data.
 */
struct gesture {
    float x;
    float y;
    float length;
    float angle;
};

/**
 * @file input.hpp
 * @author Zana Domán
 * @brief Subsystem to handle keyboard, mouse, touchscreen and sensor input.
 */
class input final {
  private:
    static SDL_Keycode _key;
    static std::array<bool, KEY_COUNT> _keys;
    static std::unordered_map<std::string, std::vector<enum key>> _keymaps;
    static float _cursor_absolute_x;
    static float _cursor_absolute_y;
    static float _cursor_relative_x;
    static float _cursor_relative_y;
    static float _mouse_sensitivity;
    static std::unordered_map<size_t, finger> _fingers;
    static std::optional<gesture> _gesture;
    static std::unique_ptr<SDL_Sensor, std::function<void(SDL_Sensor*)>>
        _accelerometer;
    static std::array<float, 3> _accelerometer_xyz;

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

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for fingers absolute and relative positions on the
     * touchscreen.
     */
    static void update_fingers();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for the latest gesture event on the touchscreen if any.
     */
    static void update_gesture();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for accelerometer data if available.
     * @warning If accelerometer data cannot be polled, throws wze::exception.
     */
    static void update_accelerometer();

  public:
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Return whether the event based keyboard input is enabled.
     * @return Whether the event based keyboard input is enabled.
     * @note Controls on-screen keyboard on mobile systems.
     */
    [[nodiscard]] static bool text_input();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Enables or disables event based keyboard input.
     * @param text_input Whether the event based keyboard input is enabled.
     * @note Controls on-screen keyboard on mobile systems.
     */
    static void set_text_input(bool text_input);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the key of the last keyboard event in UTF-32 encoding.
     * @return Key of the last keyboard event in UTF-32 encoding.
     */
    [[nodiscard]] static uint32_t key();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the keymap registry.
     * @return Keymap registry.
     */
    [[nodiscard]] static std::unordered_map<std::string, std::vector<enum key>>&
    keymaps();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute x position of the cursor.
     * @return Current absolute x position of the cursor.
     */
    [[nodiscard]] static float cursor_absolute_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute y position of the cursor.
     * @return Current absolute y position of the cursor.
     */
    [[nodiscard]] static float cursor_absolute_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative x position of the cursor.
     * @return Current relative x position of the cursor.
     */
    [[nodiscard]] static float cursor_relative_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative y position of the cursor.
     * @return Current relative y position of the cursor.
     */
    [[nodiscard]] static float cursor_relative_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the sensitivity of the mouse.
     * @return Sensitivity of the mouse.
     * @note Setting this value to 0 locks the cursor's relative position,
     * setting this value less than 0 inverts the cursor's relative position.
     */
    [[nodiscard]] static float mouse_sensitivity();

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
    [[nodiscard]] static bool cursor_visible();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the visibility of the cursor.
     * @param cursor_visible Visibility of the cursor.
     * @note Hiding the cursor also captures it into the game window.
     * @warning If cursor visibility cannot be set, throws wze::exception.
     */
    static void set_cursor_visible(bool cursor_visible);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the appearance of the cursor.
     * @param cursor_appearance Appearance of the cursor.
     * @note The engine must take ownership over the cursor appearance.
     */
    static void
    set_cursor_appearance(std::unique_ptr<cursor, std::function<void(cursor*)>>
                              cursor_appearance);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns fingers absolute and relative positions on the
     * touchscreen.
     * @return Fingers absolute and relative positions on the touchscreen.
     */
    [[nodiscard]] static std::unordered_map<size_t, finger> const& fingers();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the latest gesture event on the touchscreen if any.
     * @return Latest gesture event on the touchscreen if any.
     */
    [[nodiscard]] static std::optional<gesture> const& gesture();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the rotation on the x axis of the accelerometer.
     * @return Rotation on the x axis of the acccelerometer.
     */
    [[nodiscard]] static float accelerometer_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the rotation on the y axis of the accelerometer.
     * @return Rotation on the y axis of the acccelerometer.
     */
    [[nodiscard]] static float accelerometer_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the rotation on the z axis of the accelerometer.
     * @return Rotation on the z axis of the acccelerometer.
     */
    [[nodiscard]] static float accelerometer_z();

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Initializes the input subsystem.
     * @warning If the input subsystem cannot be initialized, throws
     * wze::exception.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Updates the input subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns true if a keyboard or mousekey is pressed, false
     * otherwise.
     * @param key The keyboard or mousekey.
     * @return True if the keyboard or mousekey is pressed, false otherwise.
     */
    [[nodiscard]] static bool key(enum key key);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns true if a keymap is triggered, false otherwise.
     * @param name Name of the keymap.
     * @return True if the keymap is triggered, false otherwise.
     */
    [[nodiscard]] static bool key(std::string const& name);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the spatial x, y components of the cursor.
     * @param z Spatial z component of the cursor.
     * @return Spatial x, y components of the cursor.
     */
    [[nodiscard]] static std::pair<float, float> cursor_spatial(float z);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_INPUT_HPP */
