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

#include "render.h"

#define BUFF_SIZE 128
#define BLACK 0, 0, 0, 255

typedef struct Camera cam_t;
typedef struct TextureBox tex_t;

static SDL_Renderer *renderer;
static cam_t *camera;
static uint16_t win_width;
static uint16_t win_height;

static tex_t **queue_begin, **queue_end;
static size_t queue_size;

void InitRender(SDL_Renderer *_renderer, cam_t *_camera, uint16_t _win_width,
                uint16_t _win_height)
{
    renderer = _renderer; 
    camera = _camera;
    win_width = _win_width;
    win_height = _win_height;

    queue_begin = NULL;
    queue_size = 0;
}

inline void ApplyCamera(tex_t *tex)
{
    if (tex->layer == 0)
    {
        tex->_area->w = tex->width;
        tex->_area->h = tex->height;
        tex->_area->x = tex->x;
        tex->_area->y = tex->y;
    }
    else
    {
        register float cache = tex->layer * camera->zoom;

        tex->_area->w = floor(tex->width * cache);
        tex->_area->h = floor(tex->height * cache);
        tex->_area->x = (int32_t)floor((tex->x - (camera->x + camera->offset_x /
                        cache)) * cache) - (tex->_area->w >> 1);
        tex->_area->y = -((int32_t)floor((tex->y - (camera->y + camera->offset_y /
                        cache)) * cache) - win_height) - (tex->_area->h >> 1);
    }
}

void RenderFrame(tex_t *texs_begin[], tex_t *texs_end[])
{
    if (SDL_SetRenderDrawColor(renderer, BLACK) != 0)
    {
        (void)fputs("core::render: SDL_SetRenderDrawColor failed", stderr);
        exit(1);
    }
    if (SDL_RenderClear(renderer) != 0)
    {
        (void)fputs("core::render: SDL_RenderClear failed", stderr);
        exit(1);
    }

    SDL_RenderPresent(renderer);
}

void FreeRender()
{
    free(renderer);
}
