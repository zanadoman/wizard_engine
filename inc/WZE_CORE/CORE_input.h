/*
 * This file is part of Wizard Engine (https://github.com/zanadoman/Wizard-Engine).
 * Copyright (c) 2024 Zana Domán.
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
 * along with Wizard Engine. If not, see https://www.gnu.org/licenses/licenses.html.
 */

#pragma once

#include "CORE_enums.h"

#include <stdbool.h>
#include <string.h>

#ifdef __linux__
    #include <SDL2/SDL.h>
#endif

#ifdef _WIN64
    #include "../SDL2/SDL.h"
#endif

#ifdef __cplusplus
    namespace core { extern "C" {
#endif

void InitInput(register const uint8_t   input_src[SDL_NUM_SCANCODES],
               register uint8_t         input_dest[KEY_COUNT],
               register int32_t        *mouse_abs_x,
               register int32_t        *mouse_abs_y,
               register float          *mouse_rel_x,
               register float          *mouse_rel_y,
               register const float    *mouse_sens,
               register const uint16_t  win_width,
               register const uint16_t  win_height);

void UpdateInput(register const SDL_Event  events_begin[],
                 register const SDL_Event *events_end);

#ifdef __cplusplus
    }}
#endif
