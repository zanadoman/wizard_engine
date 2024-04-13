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

inline float GetDistance(register const float init_x, register const float init_y,
                         register float term_x, register float term_y)
{
    term_x -= init_x;
    term_y -= init_y;

    return Pythagoras(term_x, term_y);
}

inline float GetAngle(register const float init_x, register const float init_y,
                      register float term_x, register float term_y)
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
