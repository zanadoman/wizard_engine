
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

#include "sdl.h"

#ifdef __cplusplus
    namespace wze { extern "C " {
#endif

enum Flip
{
    FLIP_NONE = SDL_FLIP_NONE,
    FLIP_HORIZONTAL = SDL_FLIP_HORIZONTAL,
    FLIP_VERTICAL = SDL_FLIP_VERTICAL,
    FLIP_BOTH = FLIP_HORIZONTAL | FLIP_VERTICAL
};

#ifdef __cplucplus
    }}
#endif
