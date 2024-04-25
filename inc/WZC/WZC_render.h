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
#include "WZC_enums.h"

#ifdef __cplusplus
    namespace wzc { extern "C" {
#endif

struct Window
{
    uint16_t      width;
    uint16_t      height;

    SDL_Renderer *renderer;

    uint16_t      origo_x;
    uint16_t      origo_y;
};

struct Camera
{
    float x;
    float y;

    float angle;

    float zoom;
};

struct RenderObject
{
    float             x;
    float             y;

    uint16_t          width;
    uint16_t          height;

    float             angle;
    enum Flip         flip;

    float             layer;
    uint8_t           priority;

    SDL_Texture      *data;
    SDL_Color         color;
    SDL_Rect          _area;
    double            _angle;
};

void InitRender(register const struct Window *window,
                register const struct Camera *camera);

void UpdateRender(register struct RenderObject  *texs_begin[], 
                  register struct RenderObject **texs_end);

void FreeRender(void);

#ifdef __cplusplus
    }}
#endif
