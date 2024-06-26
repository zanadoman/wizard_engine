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

/**
 * @file WizardEngine.hpp
 * @author Zana Domán
 * @brief Interface of the Wizard Engine.
 */

#undef WZE_INTERNAL

#include <wizard_engine/animation.hpp>  // IWYU pragma: export
#include <wizard_engine/assets.hpp>     // IWYU pragma: export
#include <wizard_engine/camera.hpp>     // IWYU pragma: export
#include <wizard_engine/engine.hpp>     // IWYU pragma: export
#include <wizard_engine/export.hpp>     // IWYU pragma: export
#include <wizard_engine/input.hpp>      // IWYU pragma: export
#include <wizard_engine/math.hpp>       // IWYU pragma: export
#include <wizard_engine/render.hpp>     // IWYU pragma: export
#include <wizard_engine/renderable.hpp> // IWYU pragma: export
#include <wizard_engine/sprite.hpp>     // IWYU pragma: export
#include <wizard_engine/timer.hpp>      // IWYU pragma: export
#include <wizard_engine/window.hpp>     // IWYU pragma: export

/**
 * @file WizardEngine.hpp
 * @author Zana Domán
 * @brief Entry point of the Wizard Engine.
 */
#define WZE_MAIN(width, height)                                                \
    void wze_main(int32_t argc, char* argv[]);                                 \
    int32_t main(int32_t argc, char* argv[]) {                                 \
        wze::engine::init(width, height);                                      \
        wze_main(argc, argv);                                                  \
    }                                                                          \
    void wze_main([[maybe_unused]] int32_t argc, [[maybe_unused]] char* argv[])

/**
 * @file WizardEngine.hpp
 * @author Zana Domán
 * @brief Game loop of the Wizard Engine.
 */
#define WZE_LOOP while (wze::engine::update())
