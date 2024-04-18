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

static const uint8_t *INPUT_SRC;
static uint8_t       *INPUT_DEST;

static int32_t              *MOUSE_ABS_X;
static int32_t              *MOUSE_ABS_Y;
#define                      MOUSE_ABS_X_MIN 0
static uint16_t              MOUSE_ABS_X_MAX;
#define                      MOUSE_ABS_Y_MIN 0
static uint16_t              MOUSE_ABS_Y_MAX;
static float                *MOUSE_REL_X;
static float                *MOUSE_REL_Y;
static const volatile float *MOUSE_SENS;

void InitInput(register const uint8_t  input_src[SDL_NUM_SCANCODES],
               register uint8_t        input_dest[KEY_COUNT],
               register int32_t       *mouse_abs_x,
               register int32_t       *mouse_abs_y,
               register float         *mouse_rel_x,
               register float         *mouse_rel_y,
               register const float   *mouse_sens,
               register const uint16_t win_width,
               register const uint16_t win_height)
{
    INPUT_SRC = input_src;
    INPUT_DEST = input_dest;

    MOUSE_ABS_X = mouse_abs_x;
    MOUSE_ABS_Y = mouse_abs_y;
    MOUSE_ABS_X_MAX = win_width - 1;
    MOUSE_ABS_Y_MAX = win_height - 1;
    MOUSE_REL_X = mouse_rel_x;
    MOUSE_REL_Y = mouse_rel_y;
    MOUSE_SENS = mouse_sens;
}

void UpdateInput(register const SDL_Event  events_begin[],
                 register const SDL_Event *events_end)
{
    memcpy(INPUT_DEST, INPUT_SRC, KEY_COUNT); 
    
    (void)SDL_GetMouseState(MOUSE_ABS_X, MOUSE_ABS_Y);

    if (*MOUSE_ABS_X < MOUSE_ABS_X_MIN)
    {
        *MOUSE_ABS_X = MOUSE_ABS_X_MIN;
    }
    else if (MOUSE_ABS_X_MAX < *MOUSE_ABS_X)
    {
        *MOUSE_ABS_X = MOUSE_ABS_X_MAX;
    }

    if (*MOUSE_ABS_Y < MOUSE_ABS_Y_MIN)
    {
        *MOUSE_ABS_Y = MOUSE_ABS_Y_MIN;
    }
    else if (MOUSE_ABS_Y_MAX < *MOUSE_ABS_Y)
    {
        *MOUSE_ABS_Y = MOUSE_ABS_Y_MAX;
    }

    {
        int32_t x;
        int32_t y;

        (void)SDL_GetRelativeMouseState(&x, &y);

        *MOUSE_REL_X = x * *MOUSE_SENS;
        *MOUSE_REL_Y = -y * *MOUSE_SENS;
    }

    {
        register const uint8_t mouse_state = (uint8_t)SDL_GetMouseState(NULL, NULL);

        INPUT_DEST[KEY_LMB] = mouse_state & 1 ? true : false;
        INPUT_DEST[KEY_MMB] = mouse_state & 2 ? true : false;
        INPUT_DEST[KEY_RMB] = mouse_state & 4 ? true : false;
    }

    for (register const SDL_Event *event = events_end - 1; events_begin <= event; event--)
    {
        if (event->type == SDL_MOUSEWHEEL)
        {
            if (event->wheel.y == 0)
            {
                INPUT_DEST[KEY_WHEELUP] = false;
                INPUT_DEST[KEY_WHEELDOWN] = false;
            }
            else if (event->wheel.y < 0)
            {
                INPUT_DEST[KEY_WHEELUP] = false;
                INPUT_DEST[KEY_WHEELDOWN] = true;
            }
            else if (0 < event->wheel.y)
            {
                INPUT_DEST[KEY_WHEELUP] = true;
                INPUT_DEST[KEY_WHEELDOWN] = false;
            }

            break;
        }
    }
}
