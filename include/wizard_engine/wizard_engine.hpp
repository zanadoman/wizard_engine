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
 * @file wizard_engine.hpp
 * @brief Interface header of the Wizard Engine.
 * @sa export.hpp
 */

#ifndef WIZARD_ENGINE_WIZARD_ENGINE_HPP
#define WIZARD_ENGINE_WIZARD_ENGINE_HPP

/**
 * @def __WIZARD_ENGINE__
 * @brief Wizard Engine macro.
 */
// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE__

#ifdef __WIZARD_ENGINE_INTERNAL__
#error Illegal external access to internal assembly
#endif /* __WIZARD_ENGINE_INTERNAL__ */

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
#include <wizard_engine/exception.hpp>  /* IWYU pragma: export */
#include <wizard_engine/export.hpp>     /* IWYU pragma: export */
#include <wizard_engine/input.hpp>      /* IWYU pragma: export */
#include <wizard_engine/math.hpp>       /* IWYU pragma: export */
#include <wizard_engine/net.hpp>        /* IWYU pragma: export */
#include <wizard_engine/polygon.hpp>    /* IWYU pragma: export */
#include <wizard_engine/renderable.hpp> /* IWYU pragma: export */
#include <wizard_engine/renderer.hpp>   /* IWYU pragma: export */
#include <wizard_engine/socket.hpp>     /* IWYU pragma: export */
#include <wizard_engine/speaker.hpp>    /* IWYU pragma: export */
#include <wizard_engine/sprite.hpp>     /* IWYU pragma: export */
#include <wizard_engine/tcp_socket.hpp> /* IWYU pragma: export */
#include <wizard_engine/timer.hpp>      /* IWYU pragma: export */
#include <wizard_engine/udp_socket.hpp> /* IWYU pragma: export */
#include <wizard_engine/window.hpp>     /* IWYU pragma: export */

/**
 * @def wze_main
 * @brief Main function of the Wizard Engine.
 * @details Command line arguments are accessible.
 * @param title Title of the game window.
 * @param width Width of the game window.
 * @param height Height of the game window.
 * @return Exit code.
 * @warning Do not initialize the engine manually.
 */
// NOLINTNEXTLINE(cppcoreguidelines-macro-usage)
#define wze_main(title, width, height)                                         \
    [[nodiscard]] int32_t __wze_main__(int32_t argc, char** argv);             \
    int32_t main(int32_t argc, char* argv[]) noexcept(false) {                 \
        wze::engine::initialize((title), (width), (height));                   \
        return __wze_main__(argc, argv);                                       \
    }                                                                          \
    int32_t __wze_main__([[maybe_unused]] int32_t argc,                        \
                         [[maybe_unused]] char** argv)

/**
 * @def wze_while
 * @brief Game loop of the Wizard Engine.
 * @param True if the game should continue, false otherwise.
 * @warning Do not update the engine manually.
 */
// NOLINTNEXTLINE(cppcoreguidelines-macro-usage)
#define wze_while(condition) while (wze::engine::update() && (condition))

#endif /* WIZARD_ENGINE_WIZARD_ENGINE_HPP */
