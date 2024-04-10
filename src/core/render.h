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

#ifdef __cplusplus
    namespace wze { extern "C" {
#endif

enum Flip
{
    FLP_NONE = 0b00000000,
    FLP_HORIZ = 0b00000001,
    FLP_VERT = 0b00000010,
    FLP_BOTH = FLP_HORIZ | FLP_VERT
};

struct Camera
{
    float x;
    float y;

    const uint16_t width;
    const uint16_t height;

    float zoom;
};

struct TextureBox
{
    float x;
    float y;
    float angle;

    uint16_t widht;
    uint16_t height;

    float layer;
    uint8_t priority;

    enum Flip flip;

    uint8_t r;
    uint8_t g;
    uint8_t b;

    bool visible;
};

void RenderFrame(const struct Camera *camera, const struct TextureBox *boxes_begin[],
                 const struct TextureBox *boxes_end[]);

#ifdef __cplusplus
    }}
#endif
