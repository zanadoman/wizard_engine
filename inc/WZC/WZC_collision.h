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

#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <errno.h>

#ifdef __cplusplus
    namespace core { extern "C" {
#endif

struct ColliderBox
{
    float    cur_tl_x;
    float    cur_tl_y;
    float    cur_br_x;
    float    cur_br_y;

    float    prv_tl_x;
    float    prv_tl_y;
    float    prv_br_x;
    float    prv_br_y;

    uint16_t force;
    uint16_t drag;
};

void UpdateCollision(register struct ColliderBox  *root, 
                     register struct ColliderBox  *layer_begin[],
                     register struct ColliderBox **layer_end); 
#ifdef __cplusplus 
    }}
#endif
