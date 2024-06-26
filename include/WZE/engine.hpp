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

#include <WZE/common.hpp>

namespace wze {
/**
 * @file engine.hpp
 * @author Zana Domán
 * @brief Wizard Engine
 */
class engine final {
    static std::vector<SDL_Event> _events;

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    engine() = default;

  public:
#ifdef WZE_INTERNAL
    static std::vector<SDL_Event> const& events();
#endif

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Initializes the subsystems of the engine.
     * @param width Width of the game window.
     * @param height Height of the game window.
     * @warning This method must be called only once at the beginning of main.
     */
    static void init(uint16_t width, uint16_t height);

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Updates the subsystems of the engine and polls for events,
     * returns true if the game should continue, false otherwise.
     * @return True if the game should continue, false otherwise.
     * @warning This method must be used as the only condition of the game loop.
     */
    static bool update();
};
} // namespace wze
