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

#include <stdint.h>
#include <math.h>

#ifdef __cplusplus
    namespace wze { extern "C" {
#endif

#define EPSILON 0.01f
#define PI 3.1415927f
#define DEG_MAX 360.0f
#define RAD_MAX 6.2831855f

#define IsEqual(a, b) (a - EPSILON <= b && b <= a + EPSILON)
#define IfNaN(x, fallback) (isnormal(x) || x == 0.0f ? x : fallback)

#define ToDEG(x) (x * 57.29578f)
#define ToRAD(x) (x * 0.017453292f)
#define Pythagoras(a, b) (sqrtf(a * a + b * b))

#define GetTermX(init_x, dist, angle) (init_x + dist * cosf(angle))
#define GetTermY(init_y, dist, angle) (init_y + dist * sinf(angle))

#define NextRandom(min, max) (rand() % (max - min) + min)

float GetDistance(const float init_x, const float init_y, float term_x, float term_y);
float GetAngle(const float init_x, const float init_y, float term_x, float term_y); 

void GetBoundingBox(const float med_len, const float diag_angle1, const float diag_angle2,
                    const float angle, uint16_t *res_width, uint16_t *res_height);

#ifdef __cplusplus
    }}
#endif
