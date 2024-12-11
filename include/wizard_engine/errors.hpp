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
 * @file errors.hpp
 * @brief Error types.
 * @sa exception.hpp
 */

#ifndef WIZARD_ENGINE_ERRORS
#define WIZARD_ENGINE_ERRORS

namespace wze {
/**
 * @brief Audio error.
 * @sa speaker_error
 */
struct audio_error;

/**
 * @brief Engine error.
 */
struct engine_error;

/**
 * @brief Input error.
 */
struct input_error;

/**
 * @brief Net error.
 * @sa socket_error
 */
struct net_error;

/**
 * @brief Renderer error.
 */
struct renderer_error;

/**
 * @brief Socket error.
 * @sa net_error
 */
struct socket_error;

/**
 * @brief Speaker error.
 * @sa audio_error
 */
struct speaker_error;

/**
 * @brief Window error.
 */
struct window_error;
} /* namespace wze */

#endif /* WIZARD_ENGINE_ERRORS */
