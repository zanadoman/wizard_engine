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

#include <WZE/assets.hpp>
#include <WZE/common.hpp>

namespace wze {
/**
 * @file input.hpp
 * @author Zana Domán
 * @brief Keyboard and mousekeys.
 */
enum key {
    KEY_A = SDL_SCANCODE_A,
    KEY_B = SDL_SCANCODE_B,
    KEY_C = SDL_SCANCODE_C,
    KEY_D = SDL_SCANCODE_D,
    KEY_E = SDL_SCANCODE_E,
    KEY_F = SDL_SCANCODE_F,
    KEY_G = SDL_SCANCODE_G,
    KEY_H = SDL_SCANCODE_H,
    KEY_I = SDL_SCANCODE_I,
    KEY_J = SDL_SCANCODE_J,
    KEY_K = SDL_SCANCODE_K,
    KEY_L = SDL_SCANCODE_L,
    KEY_M = SDL_SCANCODE_M,
    KEY_N = SDL_SCANCODE_N,
    KEY_O = SDL_SCANCODE_O,
    KEY_P = SDL_SCANCODE_P,
    KEY_Q = SDL_SCANCODE_Q,
    KEY_R = SDL_SCANCODE_R,
    KEY_S = SDL_SCANCODE_S,
    KEY_T = SDL_SCANCODE_T,
    KEY_U = SDL_SCANCODE_U,
    KEY_V = SDL_SCANCODE_V,
    KEY_W = SDL_SCANCODE_W,
    KEY_X = SDL_SCANCODE_X,
    KEY_Y = SDL_SCANCODE_Y,
    KEY_Z = SDL_SCANCODE_Z,

    KEY_1 = SDL_SCANCODE_1,
    KEY_2 = SDL_SCANCODE_2,
    KEY_3 = SDL_SCANCODE_3,
    KEY_4 = SDL_SCANCODE_4,
    KEY_5 = SDL_SCANCODE_5,
    KEY_6 = SDL_SCANCODE_6,
    KEY_7 = SDL_SCANCODE_7,
    KEY_8 = SDL_SCANCODE_8,
    KEY_9 = SDL_SCANCODE_9,
    KEY_0 = SDL_SCANCODE_0,

    KEY_RETURN = SDL_SCANCODE_RETURN,
    KEY_ESCAPE = SDL_SCANCODE_ESCAPE,
    KEY_BACKSPACE = SDL_SCANCODE_BACKSPACE,
    KEY_TAB = SDL_SCANCODE_TAB,
    KEY_SPACE = SDL_SCANCODE_SPACE,

    KEY_MINUS = SDL_SCANCODE_MINUS,
    KEY_EQUALS = SDL_SCANCODE_EQUALS,
    KEY_LEFTBRACKET = SDL_SCANCODE_LEFTBRACKET,
    KEY_RIGHTBRACKET = SDL_SCANCODE_RIGHTBRACKET,
    KEY_BACKSLASH = SDL_SCANCODE_BACKSLASH,
    KEY_NONUSHASH = SDL_SCANCODE_NONUSHASH,
    KEY_SEMICOLON = SDL_SCANCODE_SEMICOLON,
    KEY_APOSTROPHE = SDL_SCANCODE_APOSTROPHE,
    KEY_GRAVE = SDL_SCANCODE_GRAVE,
    KEY_COMMA = SDL_SCANCODE_COMMA,
    KEY_PERIOD = SDL_SCANCODE_PERIOD,
    KEY_SLASH = SDL_SCANCODE_SLASH,
    KEY_CAPSLOCK = SDL_SCANCODE_CAPSLOCK,

    KEY_F1 = SDL_SCANCODE_F1,
    KEY_F2 = SDL_SCANCODE_F2,
    KEY_F3 = SDL_SCANCODE_F3,
    KEY_F4 = SDL_SCANCODE_F4,
    KEY_F5 = SDL_SCANCODE_F5,
    KEY_F6 = SDL_SCANCODE_F6,
    KEY_F7 = SDL_SCANCODE_F7,
    KEY_F8 = SDL_SCANCODE_F8,
    KEY_F9 = SDL_SCANCODE_F9,
    KEY_F10 = SDL_SCANCODE_F10,
    KEY_F11 = SDL_SCANCODE_F11,
    KEY_F12 = SDL_SCANCODE_F12,

    KEY_PRINTSCREEN = SDL_SCANCODE_PRINTSCREEN,
    KEY_SCROLLLOCK = SDL_SCANCODE_SCROLLLOCK,
    KEY_PAUSE = SDL_SCANCODE_PAUSE,
    KEY_INSERT = SDL_SCANCODE_INSERT,
    KEY_HOME = SDL_SCANCODE_HOME,
    KEY_PAGEUP = SDL_SCANCODE_PAGEUP,
    KEY_DELETE = SDL_SCANCODE_DELETE,
    KEY_END = SDL_SCANCODE_END,
    KEY_PAGEDOWN = SDL_SCANCODE_PAGEDOWN,
    KEY_RIGHT = SDL_SCANCODE_RIGHT,
    KEY_LEFT = SDL_SCANCODE_LEFT,
    KEY_DOWN = SDL_SCANCODE_DOWN,
    KEY_UP = SDL_SCANCODE_UP,

    KEY_NUMLOCKCLEAR = SDL_SCANCODE_NUMLOCKCLEAR,
    KEY_KP_DIVIDE = SDL_SCANCODE_KP_DIVIDE,
    KEY_KP_MULTIPLY = SDL_SCANCODE_KP_MULTIPLY,
    KEY_KP_MINUS = SDL_SCANCODE_KP_MINUS,
    KEY_KP_PLUS = SDL_SCANCODE_KP_PLUS,
    KEY_KP_ENTER = SDL_SCANCODE_KP_ENTER,
    KEY_KP_1 = SDL_SCANCODE_KP_1,
    KEY_KP_2 = SDL_SCANCODE_KP_2,
    KEY_KP_3 = SDL_SCANCODE_KP_3,
    KEY_KP_4 = SDL_SCANCODE_KP_4,
    KEY_KP_5 = SDL_SCANCODE_KP_5,
    KEY_KP_6 = SDL_SCANCODE_KP_6,
    KEY_KP_7 = SDL_SCANCODE_KP_7,
    KEY_KP_8 = SDL_SCANCODE_KP_8,
    KEY_KP_9 = SDL_SCANCODE_KP_9,
    KEY_KP_0 = SDL_SCANCODE_KP_0,
    KEY_KP_PERIOD = SDL_SCANCODE_KP_PERIOD,

    KEY_LCTRL = SDL_SCANCODE_LCTRL,
    KEY_LSHIFT = SDL_SCANCODE_LSHIFT,
    KEY_LALT = SDL_SCANCODE_LALT,
    KEY_LGUI = SDL_SCANCODE_LGUI,
    KEY_RCTRL = SDL_SCANCODE_RCTRL,
    KEY_RSHIFT = SDL_SCANCODE_RSHIFT,
    KEY_RALT = SDL_SCANCODE_RALT,
    KEY_RGUI = SDL_SCANCODE_RGUI,

    KEY_MOUSE_LMB,
    KEY_MOUSE_MMB,
    KEY_MOUSE_RMB,
    KEY_MOUSE_WHEEL,

    KEY_COUNT
};

/**
 * @file input.hpp
 * @author Zana Domán
 * @brief Subsystem to handle keyboard and mouse input.
 */
class input final {
    static std::array<int8_t, KEY_COUNT> _keys;
    static float_t _cursor_absolute_x;
    static float_t _cursor_absolute_y;
    static float_t _cursor_relative_x;
    static float_t _cursor_relative_y;
    static float_t _mouse_sensitivity;
    static bool _cursor_visible;
    static std::shared_ptr<cursor> _cursor_appearance;

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
     * @brief Private default constructor to prevent instantiation.
     */
    input() = default;

  public:
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns true if a keyboard or mousekey is pressed, false
     * otherwise.
     * @param key The keyboard or mousekey.
     * @return True if the keyboard or mousekey is pressed, false otherwise.
     */
    static bool keys(key key);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute x position of the cursor.
     * @return Current absolute x position of the cursor.
     */
    static float_t cursor_absolute_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current absolute y position of the cursor.
     * @return Current absolute y position of the cursor.
     */
    static float_t cursor_absolute_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative x position of the cursor.
     * @return Current relative x position of the cursor.
     */
    static float_t cursor_relative_x();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the current relative y position of the cursor.
     * @return Current relative y position of the cursor.
     */
    static float_t cursor_relative_y();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the sensitivity of the mouse.
     * @return Sensitivity of the mouse.
     */
    static float_t mouse_sensitivity();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the sensitivity of the mouse.
     * @param mouse_sensitivity Sensitivity of the mouse.
     * @note Setting this value to 0 locks the cursor's relative position,
     * setting this value less than 0 inverts the cursor's relative position.
     */
    static void set_mouse_sensitivity(float_t mouse_sensitivity);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the visibility of the cursor.
     * @return Visibility of the cursor.
     */
    static bool cursor_visible();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the visibility of the cursor.
     * @param cursor_visibility Visibility of the cursor.
     * @note Hiding the cursor also captures it into the game's window.
     */
    static void set_cursor_visibility(bool cursor_visibility);

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the appearance of the cursor.
     * @return Appearance of the cursor.
     */
    static std::shared_ptr<cursor> const& cursor_appearance();

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the appearance of the cursor.
     * @param cursor Appearance of the cursor.
     * @note Nullptr cursor defaults to SYSTEM_CURSOR_ARROW.
     */
    static void
    set_cursor_appearance(std::shared_ptr<cursor> const& cursor_appearance);

#ifdef WZE_INTERNAL
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Sets the appearance of the cursor to the default.
     */
    static void init();
#endif

#ifdef WZE_INTERNAL
    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Polls for the current state of the keyboard and mouse.
     */
    static void update();
#endif

    /**
     * @file input.hpp
     * @author Zana Domán
     * @brief Returns the spatial x, y components of the cursor.
     * @param z Spatial z component of the cursor.
     * @return Spatial x, y components of the cursor.
     */
    static std::pair<float_t, float_t> cursor_spatial_xy(float_t z);
};
} // namespace wze
