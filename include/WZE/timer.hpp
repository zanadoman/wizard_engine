/**
 * This file is part of Wizard Engine
 * (https://github.com/zanadoman/Wizard-Engine). Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Wizard Engine. If not, see
 * https://www.gnu.org/licenses/licenses.html.
 */

#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class timer final {
        private:
        static uint8_t _frame_time;
        static uint8_t _delta_time;
        static uint64_t _last_time;

        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Private constructor to prevent instantiation.
         */
        timer();

        public:
        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Returns the target frame time in milliseconds.
         * @return Target frame time in milliseconds.
         */
        static uint8_t frame_time();

        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Sets the target frame time to the given value in milliseconds.
         * @param frame_time Frame time in milliseconds.
         */
        static void set_frame_time(uint8_t frame_time);

        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Returns the current delta time in milliseconds.
         * @return Current delta time in milliseconds.
         */
        static uint8_t delta_time();

        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Sets the current delta time to the given value in
         * milliseconds.
         * @param delta_time Delta time in milliseconds.
         * @note You can change the pace of the game by manipulating this value.
         */
        static void set_delta_time(uint8_t delta_time);

        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Returns the current game time in milliseconds.
         * @return Current game time in milliseconds.
         */
        static uint64_t current_time();

        /**
         * @file timer.hpp
         * @author Zana Domán
         * @brief Delays the current frame to match the frame time if needed,
         * then sets the delta time for the next frame.
         * @warning This method is handled by the engine itself, calling it
         * explicitly can lead to undefined behavior.
         */
        static void __update();
    };
} // namespace wze
