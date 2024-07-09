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

#ifndef WIZARD_ENGINE_ENGINE_HPP
#define WIZARD_ENGINE_ENGINE_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file engine.hpp
 * @author Zana Domán
 * @brief Master singleton of the Wizard Engine.
 */
class engine final {
  private:
    static std::vector<SDL_Event> _events;

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    engine() = default;

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Plays the intro of the engine.
     */
    static void play_intro();

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Returns the events of the engine.
     * @return Events of the engine.
     */
    static std::vector<SDL_Event> const& events();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Initializes the subsystems of the engine.
     * @param width Width of the game window.
     * @param height Height of the game window.
     * @note This method is automatically called when wze_main is used.
     * @warning This method must be called only once at the beginning of main.
     * @warning If the engine cannot be initialized, throws std::runtime_error.
     */
    static void initialize(uint16_t width, uint16_t height);

    /**
     * @file engine.hpp
     * @author Zana Domán
     * @brief Updates the subsystems of the engine, then returns true if the
     * game should continue, false otherwise.
     * @return True if the game should continue, false otherwise.
     * @note This method is automatically called when wze_while is used.
     * @warning This method must be called in the condition of the game loop.
     */
    static bool update();
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_ENGINE_HPP */
