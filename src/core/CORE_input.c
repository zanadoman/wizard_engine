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

#include "../../inc/WZE_CORE/CORE_input.h"

typedef struct Window win_t;
typedef enum InputKey key_t;
typedef struct Mouse  mouse_t;

static const win_t   *window;
static const uint8_t *src;
static key_t         *keys;
static mouse_t       *mouse;

void InitInput(register const struct Window *_window,
               register key_t                _keys[KEY_COUNT],
               register struct Mouse        *_mouse)
{
    window = _window;
    src = SDL_GetKeyboardState(NULL);
    keys = _keys;
    mouse = _mouse;
}

inline static void UpdateKeys(register const SDL_Event  events_begin[],
                              register const SDL_Event *events_end)
{
    (void)memcpy(keys, src, KEY_COUNT); 

    {
        register const uint8_t mouse_state = (uint8_t)SDL_GetMouseState(NULL, NULL);

        keys[KEY_MOUSE_LMB] = mouse_state & 1 ? true : false;
        keys[KEY_MOUSE_MMB] = mouse_state & 2 ? true : false;
        keys[KEY_MOUSE_RMB] = mouse_state & 4 ? true : false;
    }

    for (register const SDL_Event *event = events_end - 1; events_begin <= event; event--)
    {
        if (event->type == SDL_MOUSEWHEEL)
        {
            keys[KEY_MOUSE_WHEEL] = event->wheel.y;
            break;
        }
    }
}

inline static void UpdateMouseAbsPos(void)
{
    (void)SDL_GetMouseState(&mouse->abs_x, &mouse->abs_y);

    if (mouse->abs_x < 0)
    {
        mouse->abs_x = 0;
    }
    else if (window->width <= mouse->abs_x)
    {
        mouse->abs_x = window->width - 1;
    }

    if (mouse->abs_y < 0)
    {
        mouse->abs_y = 0;
    }
    else if (window->height <= mouse->abs_y)
    {
        mouse->abs_y = window->height - 1;
    }
}

inline static void UpdateMouseRelPos(void)
{
    int32_t x;
    int32_t y;

    (void)SDL_GetRelativeMouseState(&x, &y);

    mouse->rel_x = x * mouse->sens;
    mouse->rel_y = -y * mouse->sens;
}

void UpdateInput(register const SDL_Event  events_begin[],
                 register const SDL_Event *events_end)
{
    UpdateKeys(events_begin, events_end);
    UpdateMouseAbsPos();
    UpdateMouseRelPos();
}
