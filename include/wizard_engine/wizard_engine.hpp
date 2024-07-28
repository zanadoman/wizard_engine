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

#ifndef WIZARD_ENGINE_WIZARD_ENGINE_HPP
#define WIZARD_ENGINE_WIZARD_ENGINE_HPP

/**
 * @file wizard_engine.hpp
 * @author Zana Domán
 * @brief Interface header of the Wizard Engine.
 */

#ifdef __WIZARD_ENGINE_INTERNAL
#error Illegal external access to internal assembly
#endif /* __WIZARD_ENGINE_INTERNAL */

#include <wizard_engine/animatable.hpp> /* IWYU pragma: export */
#include <wizard_engine/animator.hpp>   /* IWYU pragma: export */
#include <wizard_engine/assets.hpp>     /* IWYU pragma: export */
#include <wizard_engine/audio.hpp>      /* IWYU pragma: export */
#include <wizard_engine/camera.hpp>     /* IWYU pragma: export */
#include <wizard_engine/collider.hpp>   /* IWYU pragma: export */
#include <wizard_engine/component.hpp>  /* IWYU pragma: export */
#include <wizard_engine/engine.hpp>     /* IWYU pragma: export */
#include <wizard_engine/entity.hpp>     /* IWYU pragma: export */
#include <wizard_engine/enums.hpp>      /* IWYU pragma: export */
#include <wizard_engine/export.hpp>     /* IWYU pragma: export */
#include <wizard_engine/input.hpp>      /* IWYU pragma: export */
#include <wizard_engine/math.hpp>       /* IWYU pragma: export */
#include <wizard_engine/polygon.hpp>    /* IWYU pragma: export */
#include <wizard_engine/renderable.hpp> /* IWYU pragma: export */
#include <wizard_engine/renderer.hpp>   /* IWYU pragma: export */
#include <wizard_engine/speaker.hpp>    /* IWYU pragma: export */
#include <wizard_engine/sprite.hpp>     /* IWYU pragma: export */
#include <wizard_engine/timer.hpp>      /* IWYU pragma: export */
#include <wizard_engine/window.hpp>     /* IWYU pragma: export */

#define wze_main(width, height)                                                \
    /* @file wizard_engine.hpp                      */                         \
    /* @author Zana Domán                           */                        \
    /* @brief Main function of the Wizard Engine.   */                         \
    /* @param width Width of the game window.       */                         \
    /* @param height Height of the game window.     */                         \
    /* @return Exit code.                           */                         \
    /* @note Command line arguments are accessible. */                         \
    static int32_t __wze_main(int32_t argc, char* argv[]);                     \
    int32_t main(int32_t argc, char* argv[]) {                                 \
        wze::engine::initialize((width), (height));                            \
        return __wze_main(argc, argv);                                         \
    }                                                                          \
    int32_t __wze_main([[maybe_unused]] int32_t argc,                          \
                       [[maybe_unused]] char* argv[])

#define wze_while(condition)                                                   \
    /* @file wizard_engine.hpp                                   */            \
    /* @author Zana Domán                                        */           \
    /* @brief Game loop of the Wizard Engine.                    */            \
    /* @param True if the game should continue, false otherwise. */            \
    while (wze::engine::update() && (condition))

#endif /* WIZARD_ENGINE_WIZARD_ENGINE_HPP */
