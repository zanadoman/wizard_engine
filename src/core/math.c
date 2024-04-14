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

#include "math.h"

float GetDistance(const float init_x, const float init_y, float term_x, float term_y)
{
    term_x -= init_x;
    term_y -= init_y;

    return Pythagoras(term_x, term_y);
}

float GetAngle(const float init_x, const float init_y, float term_x, float term_y)
{
    term_x -= init_x;

    if (term_y < init_y)
    {
        term_y -= init_y;

        return RAD_MAX - acosf(term_x / Pythagoras(term_x, term_y));
    }
    else
    {
        term_y -= init_y;

        return acosf(term_x / Pythagoras(term_x, term_y));
    }
}

void GetBoundingBox(const float med_len, const float diag_angle1, const float diag_angle2,
                    const float angle, uint16_t *res_width, uint16_t *res_height)
{
    #define HALF_RAD_MAX 3.1415927f

    register const float angle1 = diag_angle1 + angle;
    register const float angle2 = diag_angle2 + angle;
    register const float angle3 = angle1 + HALF_RAD_MAX;
    register const float angle4 = angle2 + HALF_RAD_MAX;

    #undef HALF_RAD_MAX

    {
        register const int32_t x1 = (int32_t)roundf(med_len * cosf(angle1));
        register const int32_t x2 = (int32_t)roundf(med_len * cosf(angle2));
        register const int32_t x3 = (int32_t)roundf(med_len * cosf(angle3));
        register const int32_t x4 = (int32_t)roundf(med_len * cosf(angle4));

        {
            register const int32_t cache1 = x1 < x2 ? x2 : x1;
            register const int32_t cache2 = x3 < x4 ? x4 : x3;
            *res_width = cache1 < cache2 ? cache2 : cache1;
        }
        
        {
            register const int32_t cache1 = x1 < x2 ? x1 : x2;
            register const int32_t cache2 = x3 < x4 ? x3 : x4;
            *res_width -= cache1 < cache2 ? cache1 : cache2;
        }
    }

    {
        register const int32_t y1 = (int32_t)roundf(med_len * sinf(angle1));
        register const int32_t y2 = (int32_t)roundf(med_len * sinf(angle2));
        register const int32_t y3 = (int32_t)roundf(med_len * sinf(angle3));
        register const int32_t y4 = (int32_t)roundf(med_len * sinf(angle4));

        {
            register const int32_t cache1 = y1 < y2 ? y2 : y1;
            register const int32_t cache2 = y3 < y4 ? y4 : y3;
            *res_height = cache1 < cache2 ? cache2 : cache1;
        }
        
        {
            register const int32_t cache1 = y1 < y2 ? y1 : y2;
            register const int32_t cache2 = y3 < y4 ? y3 : y4;
            *res_height -= cache1 < cache2 ? cache1 : cache2;
        }
    }
}
