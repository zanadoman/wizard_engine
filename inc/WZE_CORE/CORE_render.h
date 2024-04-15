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

#include <stdint.h>
#include <stdbool.h>

#ifdef __linux__
    #include <SDL2/SDL.h>
#endif

#ifdef _WIN64
    #include "../SDL2/SDL.h"
#endif

#ifdef __cplusplus
    namespace wze { extern "C" {
#endif

struct Camera
{
    float   x;
    float   y;

    float   zoom;
};

struct TextureBox
{
    float               x;
    float               y;

    uint16_t            width;
    uint16_t            height;

    float               angle;
    enum TextureFlip    flip;

    float               layer;
    uint8_t             priority;
    bool                visible;

    SDL_Texture         *data;
    SDL_Color           color;
    SDL_Rect            _area;
};

void InitRender( uint16_t       win_width,
                 uint16_t       win_height,
                 SDL_Renderer   *renderer,
                 struct Camera  *camera );

void RenderFrame( struct TextureBox *texs_begin[], 
                  struct TextureBox *texs_end[] );

void FreeRender(void);

#ifdef __cplusplus
    }}
#endif
