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

#include <math.h>

inline float GetDistance(const float init_x, const float init_y, 
                         float term_x, float term_y)
{
    term_x -= init_x;
    term_y -= init_y;

    return Pythagoras(term_x, term_y);
}

inline float GetAngle(const float init_x, const float init_y, 
                      float term_x, float term_y)
{
    term_x -= init_x;

    if (term_y < init_y)
    {
        term_y -= init_y;

        return RAD_MAX - acos(term_x / Pythagoras(term_x, term_y));
    }
    else
    {
        term_y -= init_y;

        return acos(term_x / Pythagoras(term_x, term_y));
    }
}
