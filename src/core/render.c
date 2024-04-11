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

static uint16_t WIN_WIDTH;
static uint16_t WIN_HEIGHT;
static SDL_Renderer *RENDERER;
static cam_t *CAMERA;
static uint16_t CAM_OFFSET_X;
static uint16_t CAM_OFFSET_Y;

static tex_t **queue_begin, **queue_end;
static size_t queue_size;

static void SortByLayerMerge(size_t left, size_t middle, size_t right)
{
    size_t i, j, k, n1, n2; 
    tex_t **left_sub, **right_sub;

    if ((left_sub = (tex_t**)malloc(sizeof(tex_t*) * (n1 = middle - left + 1))) == NULL)
    {
        (void)fputs("core::render: Memory allocation failed", stderr);
        exit(1);
    }
    if ((right_sub = (tex_t**)malloc(sizeof(tex_t*) * (n2 = right - middle))) == NULL)
    {
        (void)fputs("core::render: Memory allocation failed", stderr);
        exit(1);
    }

    for (i = 0; i < n1; i++) left_sub[i] = queue_begin[left + i];
    for (j = 0; j < n2; j++) right_sub[j] = queue_begin[middle + j + 1];

    for (i = 0, j = 0, k = left; i < n1 && j < n2; k++)
    {
        if (right_sub[j]->layer < left_sub[i]->layer)
        {
            queue_begin[k] = right_sub[j++];
        }
        else
        {
            queue_begin[k] = left_sub[i++];
        }
    }

    while (i < n1) queue_begin[k++] = left_sub[i++];
    while (j < n2) queue_begin[k++] = right_sub[j++];

    free(left_sub);
    free(right_sub);
}

static void SortByLayer()
{
    size_t left, middle, right, cache;

    cache = queue_size - 1;

    for (size_t i = 1; i < queue_size; i <<= 1)
    {
        for (left = 0; left < cache; left += i << 1)
        {
            if (cache < (middle = left + i - 1))
            {
                middle = cache;
            }
            if (cache < (right = left + (i << 1) - 1))
            {
                right = cache;
            }

            SortByLayerMerge(left, middle, right);
        }
    }
}

void InitRender(uint16_t win_width, uint16_t win_height, SDL_Renderer *renderer,
                cam_t *camera)
{
    WIN_WIDTH = win_width;
    WIN_HEIGHT = win_height;
    RENDERER = renderer; 
    CAMERA = camera;
    CAM_OFFSET_X = win_width >> 1;
    CAM_OFFSET_Y = win_height >> 1;

    queue_begin = NULL;
    queue_size = 0;
}

static void ApplyCamera(tex_t *tex)
{
    register float cache;

    if (tex->layer == 0)
    {
        tex->_area.w = tex->width;
        tex->_area.h = tex->height;
        tex->_area.x = tex->x - CAM_OFFSET_X - (tex->_area.w >> 1);
        tex->_area.y = tex->y - CAM_OFFSET_Y - (tex->_area.h >> 1);
    }
    else
    {
        cache = tex->layer * CAMERA->zoom;

        tex->_area.w = floor(tex->width * cache);
        tex->_area.h = floor(tex->height * cache);
        tex->_area.x = (int32_t)floor((tex->x - (CAMERA->x + CAM_OFFSET_X /
                        cache)) * cache) - (tex->_area.w >> 1);
        tex->_area.y = -((int32_t)floor((tex->y - (CAMERA->y + CAM_OFFSET_Y /
                        cache)) * cache) - WIN_HEIGHT) - (tex->_area.h >> 1);
    }
}

void RenderFrame(tex_t *texs_begin[], tex_t *texs_end[])
{
    if (SDL_SetRenderDrawColor(RENDERER, BLACK) != 0)
    {
        (void)fputs("core::render: SDL_SetRenderDrawColor failed", stderr);
        exit(1);
    }
    if (SDL_RenderClear(RENDERER) != 0)
    {
        (void)fputs("core::render: SDL_RenderClear failed", stderr);
        exit(1);
    }
    
    SortByLayer();

    SDL_RenderPresent(RENDERER);
}

void FreeRender()
{
    free(queue_begin);
}
