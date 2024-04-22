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

#include "../../inc/WZE_CORE/CORE_render.h"

#define BUFF_SIZE 128
#define BLACK 0, 0, 0, 255

typedef struct Window win_t;
typedef struct Camera cam_t;
typedef struct TextureBox tex_t;

static win_t        window;
static const cam_t *camera;

static tex_t  **queue_begin;
static tex_t  **queue_end;
static size_t   queue_size;

void InitRender(register const win_t *_window,
                register const cam_t *_camera)
{
    window = *_window;
    window._origo_x = window.width >> 1;
    window._origo_y = window.width >> 1;
    camera =  _camera;

    queue_begin = NULL;
    queue_end = NULL;
    queue_size = 0;
}

inline static bool IsVisible(register const tex_t *tex)
{
    if (tex->visible && tex->color.a != 0 && tex->width != 0 && tex->height != 0)
    {
        return true;
    }

    return false;
}

inline static void ApplyCamera(register tex_t *tex)
{
    if (tex->layer == 0)
    {
        tex->_area.w = (int32_t)tex->width;
        tex->_area.h = (int32_t)tex->height;
        tex->_area.x = floorf(tex->x) - (tex->_area.w >> 1) - window._origo_x;
        tex->_area.y = floorf(tex->y) - (tex->_area.h >> 1) - window._origo_y;
    }
    else
    {
        register const float cache = tex->layer * camera->zoom;

        tex->_area.w = (int32_t)floorf(tex->width * cache);
        tex->_area.h = (int32_t)floorf(tex->height * cache);
        tex->_area.x = floorf(tex->x) - (tex->_area.w >> 1) - window._origo_x;
        tex->_area.y = floorf(tex->y) - (tex->_area.h >> 1) - window._origo_y;
    }
}

inline static bool IsOnScreen(register const tex_t *tex)
{
    register const uint16_t half_w = tex->_area.w >> 1;
    register const uint16_t half_h = tex->_area.h >> 1;

    if (tex->_area.x + half_w < 0 || window.width < tex->_area.x - half_w ||
        tex->_area.y + half_h < 0 || window.height < tex->_area.y - half_h)
    {
        return false;
    }

    return true;
}

inline static void SelectionStage(register tex_t *texs_begin[],
                                  register tex_t *texs_end[])
{
    register size_t n;

    n = 0;

    for (register tex_t **tex = texs_begin; tex != texs_end; tex++)
    {
        if (!IsVisible(*tex))
        {
            continue;
        }

        ApplyCamera(*tex);

        if (!IsOnScreen(*tex))
        {
            continue;
        }

        if (n == queue_size && (queue_begin = (tex_t**)realloc(queue_begin,
                                sizeof(tex_t*) * (queue_size += BUFF_SIZE))) == NULL)
        {
            exit(ENOMEM);
        }

        queue_begin[n++] = *tex;
    }

    if (n < queue_size)
    {
        queue_begin = (tex_t**)realloc(queue_begin, sizeof(tex_t*) * n);
    }

    queue_size = n;
}

inline static void SortByLayer(void)
{
    register tex_t **restrict left_arr;
    register tex_t **restrict right_arr;

    {
        register size_t n;

        n = queue_size - 1;
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
            exit(ENOMEM);
        }
        if ((right_arr = (tex_t**)malloc(n)) == NULL)
        {
            exit(ENOMEM);
        }
    }

    {
        register const size_t cache = queue_size - 1;

        for (register size_t current = 1; current < queue_size; current <<= 1)
        {
            for (register size_t left = 0, middle, right; left < cache; left += current << 1)
            {
                if (cache < (middle = left + current - 1))
                {
                    middle = cache;
                }
                if (cache < (right = left + (current << 1) - 1))
                {
                    right = cache;
                }

                {
                    register size_t i;
                    register size_t j;
                    register size_t k;

                    register const size_t left_size = middle - left + 1;
                    register const size_t right_size = right - middle;

                    for (i = 0; i < left_size; i++)
                    {
                        left_arr[i] = queue_begin[left + i];
                    }
                    for (j = 0; j < right_size; j++)
                    {
                        right_arr[j] = queue_begin[middle + j + 1];
                    }

                    for (i = 0, j = 0, k = left; i < left_size && j < right_size; k++)
                    {
                        queue_begin[k] = right_arr[j]->priority < left_arr[i]->priority
                                             ? right_arr[j++]
                                             : left_arr[i++];
                    }

                    while (i < left_size)
                    {
                        queue_begin[k++] = left_arr[i++];
                    }
                    while (j < right_size)
                    { 
                        queue_begin[k++] = right_arr[j++];
                    }
                }
            }
        }
    }

    free(left_arr);
    free(right_arr);
}

inline static void SortByPriority(register const size_t  size,
                                  register tex_t        *arr[size])
{
    register tex_t **restrict left_arr;
    register tex_t **restrict right_arr;

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
            exit(ENOMEM);
        }
        if ((right_arr = (tex_t**)malloc(n)) == NULL)
        {
            exit(ENOMEM);
        }
    }

    {
        register const size_t cache = size - 1;

        for (register size_t current = 1; current < size; current <<= 1)
        {
            for (register size_t left = 0, middle, right; left < cache; left += current << 1)
            {
                if (cache < (middle = left + current - 1))
                {
                    middle = cache;
                }
                if (cache < (right = left + (current << 1) - 1))
                {
                    right = cache;
                }

                {
                    register size_t i;
                    register size_t j;
                    register size_t k;

                    register const size_t left_size = middle - left + 1;
                    register const size_t right_size = right - middle;

                    for (i = 0; i < left_size; i++)
                    {
                        left_arr[i] = arr[left + i];
                    }
                    for (j = 0; j < right_size; j++)
                    {
                        right_arr[j] = arr[middle + j + 1];
                    }

                    for (i = 0, j = 0, k = left; i < left_size && j < right_size; k++)
                    {
                        arr[k] = right_arr[j]->priority < left_arr[i]->priority
                                     ? right_arr[j++]
                                     : left_arr[i++];
                    }

                    while (i < left_size)
                    {
                        arr[k++] = left_arr[i++];
                    }
                    while (j < right_size)
                    { 
                        arr[k++] = right_arr[j++];
                    }
                }
            }
        }
    }

    free(left_arr);
    free(right_arr);
}

inline static void SortingStage(void)
{
    SortByLayer();

    {
        register size_t i, j;

        for (i = 0, j = 1; j < queue_size; j++)
        {
            if (queue_begin[i]->layer == queue_begin[j]->layer || j - i == 1)
            {
                continue;
            }

            SortByPriority(i - j, queue_begin + i);
        }

        if (1 < j - i)
        {
            SortByPriority(i - j, queue_begin + i);
        }
    }
}

inline static void RenderTexture(register const tex_t *tex)
{
    #define rgb(color) color.r, color.g, color.b
    #define rgba(color) color.r, color.g, color.b, color.a
    #define area(tex) NULL, &tex->_area
    #define angle(tex) (double)tex->angle, NULL
    #define flip(tex) (SDL_RendererFlip)tex->flip

    if (tex->data == NULL)
    {
        (void)SDL_SetRenderDrawColor(window.renderer, rgba(tex->color));
        (void)SDL_RenderFillRect(window.renderer, &tex->_area);
    }
    else
    {
        (void)SDL_SetTextureColorMod(tex->data, rgb(tex->color));
        (void)SDL_SetTextureAlphaMod(tex->data, tex->color.a);
        (void)SDL_RenderCopyEx(window.renderer, tex->data, area(tex), angle(tex), flip(tex));
    }

    #undef rgb 
    #undef rgba
    #undef area
    #undef angle
    #undef flip
}

inline static void RenderingStage(void)
{
    register tex_t **border;

    for (border = queue_begin; border != queue_end; border++)
    {
        if ((*border)->layer != 0) break;
    }

    for (register tex_t **tex = border; tex != queue_end; tex++)
    {
        RenderTexture(*tex);
    }

    for (register tex_t **tex = queue_begin; tex != border; tex++)
    {
        RenderTexture(*tex);
    }
}

void RenderFrame(register tex_t *texs_begin[],
                 register tex_t *texs_end[])
{
    (void)SDL_SetRenderDrawColor(window.renderer, BLACK);
    (void)SDL_RenderClear(window.renderer);

    SelectionStage(texs_begin, texs_end);
    SortingStage();
    RenderingStage();

    SDL_RenderPresent(window.renderer);
}

void FreeRender(void)
{
    free(queue_begin);
}
