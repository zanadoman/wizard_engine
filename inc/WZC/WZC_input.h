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

#include "WZC_include.h"
#include "WZC_render.h"
#include "WZC_enums.h"

#ifdef __linux__
    #include <SDL2/SDL.h>
#endif

#ifdef _WIN64
    #include "../SDL2/SDL.h"
#endif

#ifdef __cplusplus
    namespace wzc { extern "C" {
#endif

struct Mouse
{
    int32_t abs_x;
    int32_t abs_y;

    float   rel_x;
    float   rel_y;

    float   sens;
};

void InitInput(const struct Window *window,
               enum InputKey        keys[KEY_COUNT],
               struct Mouse        *mouse);

void UpdateInput(const SDL_Event  events_begin[],
                 const SDL_Event *events_end);

#ifdef __cplusplus
    }}
#endif
