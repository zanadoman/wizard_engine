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

/**
 * @file timer.hpp
 * @brief Timer subsystem.
 * @sa timer.cpp
 */

#ifndef WIZARD_ENGINE_TIMER_HPP
#define WIZARD_ENGINE_TIMER_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @class timer
 * @brief Subsystem to handle frame rate and delta time.
 */
class timer final {
  public:
    /**
     * @brief Deleted default constructor to prevent instantiation.
     */
    explicit timer() = delete;

    /**
     * @brief Gets the target frame time in milliseconds.
     * @details You can change the frame rate of the game by manipulating this
     * value.
     * @return Target frame time in milliseconds.
     * @sa set_frame_time(uint8_t frame_time)
     */
    [[nodiscard]] static uint8_t frame_time();

    /**
     * @brief Sets the target frame time in milliseconds.
     * @details You can change the frame rate of the game by manipulating this
     * value.
     * @param frame_time Target frame time in milliseconds.
     * @sa frame_time()
     */
    static void set_frame_time(uint8_t frame_time);

    /**
     * @brief Gets the current delta time in milliseconds.
     * @details You can change the pace of the game or even reverse it by
     * manipulating this value.
     * @return Current delta time in milliseconds.
     * @sa set_delta_time(float delta_time)
     */
    [[nodiscard]] static float delta_time();

    /**
     * @brief Sets the current delta time in milliseconds.
     * @details You can change the pace of the game or even reverse it by
     * manipulating this value.
     * @param delta_time Current delta time in milliseconds.
     * @sa delta_time()
     */
    static void set_delta_time(float delta_time);

    /**
     * @brief Returns the current game time in milliseconds.
     * @return Current game time in milliseconds.
     */
    [[nodiscard]] static uint32_t current_time();

#ifdef __WIZARD_ENGINE_INTERNAL__
    /**
     * @brief Updates the timer subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL__ */

  private:
    static uint8_t _frame_time;
    static float _delta_time;
    static uint32_t _last_time;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_TIMER_HPP */
