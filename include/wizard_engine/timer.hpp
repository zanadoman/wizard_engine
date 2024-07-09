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

#ifndef WIZARD_ENGINE_TIMER_HPP
#define WIZARD_ENGINE_TIMER_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file timer.hpp
 * @author Zana Domán
 * @brief Subsystem to handle frame rate and delta time.
 */
class timer final {
  private:
    static uint8_t _frame_time;
    static float _delta_time;
    static uint64_t _last_time;

    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    timer() = default;

  public:
    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Returns the target frame time in milliseconds.
     * @return Target frame time in milliseconds.
     * @note You can change the frame rate of the game by manipulating this
     * value.
     */
    static uint8_t frame_time();

    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Sets the target frame time in milliseconds.
     * @param frame_time Target frame time in milliseconds.
     * @note You can change the frame rate of the game by manipulating this
     * value.
     */
    static void set_frame_time(uint8_t frame_time);

    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Returns the current delta time in milliseconds.
     * @return Current delta time in milliseconds.
     * @note You can change the pace of the game or even reverse it by
     * manipulating this value.
     */
    static float delta_time();

    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Sets the current delta time in milliseconds.
     * @param delta_time Current delta time in milliseconds.
     * @note You can change the pace of the game or even reverse it by
     * manipulating this value.
     */
    static void set_delta_time(float delta_time);

    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Returns the current game time in milliseconds.
     * @return Current game time in milliseconds.
     */
    static uint64_t current_time();

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Initializes the timer subsystem.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file timer.hpp
     * @author Zana Domán
     * @brief Updates the timer subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL */
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_TIMER_HPP */
