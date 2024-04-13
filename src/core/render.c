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

void SortByLayer(register const size_t size, register tex_t *arr[size])
{
    register tex_t **left_arr, **right_arr;

    {
        register size_t n;

        n = size - 1;
        n |= (n >> 1);
        n |= (n >> 2);
        n |= (n >> 4);
        n |= (n >> 8);
        n |= (n >> 16);
        #if 64 <= __WORDSIZE
        n |= (n >> 32);
        #endif
        n -= (n >> 1);
        n *= sizeof(tex_t*);

        if ((left_arr = (tex_t**)malloc(n)) == NULL)
        {
            (void)fputs("core::render: Memory allocation failed", stderr);
            exit(1);
        }
        if ((right_arr = (tex_t**)malloc(n)) == NULL)
        {
            (void)fputs("core::render: Memory allocation failed", stderr);
            exit(1);
        }
    }

    {
        register const size_t cache = size - 1;

        for (register size_t current = 1; current < size; current <<= 1)
        {
            for (register size_t left = 0, middle, right; left < cache; left += current << 1)
            {
                if (cache < (middle = left + current - 1)) middle = cache;
                if (cache < (right = left + (current << 1) - 1)) right = cache;

                {
                    register const size_t left_size = middle - left + 1;
                    register const size_t right_size = right - middle;

                    register size_t i, j, k;

                    for (i = 0; i < left_size; i++) left_arr[i] = arr[left + i];
                    for (j = 0; j < right_size; j++) right_arr[j] = arr[middle + j + 1];

                    for (i = 0, j = 0, k = left; i < left_size && j < right_size; k++)
                    {
                        arr[k] = right_arr[j]->layer < left_arr[i]->layer ? right_arr[j++] : left_arr[i++];
                    }

                    while (i < left_size) arr[k++] = left_arr[i++];
                    while (j < right_size) arr[k++] = right_arr[j++];
                }
            }
        }
    }

    free(left_arr);
    free(right_arr);
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

void ApplyCamera(register tex_t *tex)
{
    if (tex->layer == 0)
    {
        tex->_area.w = tex->width;
        tex->_area.h = tex->height;
        tex->_area.x = tex->x - CAM_OFFSET_X - (tex->_area.w >> 1);
        tex->_area.y = tex->y - CAM_OFFSET_Y - (tex->_area.h >> 1);
    }
    else
    {
        register const float cache = tex->layer * CAMERA->zoom;

        tex->_area.w = floorf(tex->width * cache);
        tex->_area.h = floorf(tex->height * cache);
        tex->_area.x = tex->x - CAM_OFFSET_X - (tex->_area.w >> 1);
        tex->_area.y = tex->y - CAM_OFFSET_Y - (tex->_area.h >> 1);
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

    for (register tex_t **tex = texs_begin; tex != texs_end; tex++)
    {
        if ((*tex)->visible && 0 < (*tex)->color.a)
        {
            ApplyCamera(*tex);
        }
    }
    
    SortByLayer(queue_size, queue_begin);

    SDL_RenderPresent(RENDERER);
}

void FreeRender()
{
    free(queue_begin);
}
