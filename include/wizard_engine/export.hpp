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

#ifndef WIZARD_ENGINE_EXPORT_HPP
#define WIZARD_ENGINE_EXPORT_HPP

/**
 * @file export.hpp
 * @author Zana Domán
 * @brief Export header of the Wizard Engine.
 */

#include <cmath>   /* IWYU pragma: export */
#include <cstddef> /* IWYU pragma: export */
#include <cstdint> /* IWYU pragma: export */
#include <cstdlib> /* IWYU pragma: export */

#include <algorithm>   /* IWYU pragma: export */
#include <array>       /* IWYU pragma: export */
#include <exception>   /* IWYU pragma: export */
#include <functional>  /* IWYU pragma: export */
#include <limits>      /* IWYU pragma: export */
#include <memory>      /* IWYU pragma: export */
#include <random>      /* IWYU pragma: export */
#include <string>      /* IWYU pragma: export */
#include <tuple>       /* IWYU pragma: export */
#include <type_traits> /* IWYU pragma: export */
#include <utility>     /* IWYU pragma: export */
#include <vector>      /* IWYU pragma: export */

#if defined(_WIN32) || defined(__ANDROID__)
#define SDL_MAIN_HANDLED
#endif /* defined(_WIN32) || defined(__ANDROID__) */

#if defined(__arm__) || defined(__aarch64__)
#define SDL_DISABLE_IMMINTRIN_H
#endif /* defined(__arm__) || defined(__aarch64__) */

#include <SDL2/SDL.h>       /* IWYU pragma: export */
#include <SDL2/SDL_image.h> /* IWYU pragma: export */
#include <SDL2/SDL_mixer.h> /* IWYU pragma: export */
#include <SDL2/SDL_net.h>   /* IWYU pragma: export */
#include <SDL2/SDL_ttf.h>   /* IWYU pragma: export */

#ifdef __EMSCRIPTEN__
#pragma clang diagnostic push /* "-Wunused-parameter" */
#pragma clang diagnostic ignored "-Wunused-parameter"
#include <emscripten.h>      /* IWYU pragma: export */
#pragma clang diagnostic pop /* "-Wunused-parameter" */
#endif                       /* __EMSCRIPTEN__ */

#endif /* WIZARD_ENGINE_EXPORT_HPP */
