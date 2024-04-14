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

#ifdef STDIO_H
    #include <stdio.h>
#endif

#ifdef STDLIB_H
    #include <stdlib.h>
#endif

#ifdef STDINT_H
    #include <stdint.h>
#endif

#ifdef STDDEF_H
    #include <stddef.h>
#endif

#ifdef MATH_H
    #include <math.h>
#endif

#ifdef ERRNO_H
    #include <errno.h>
#endif

#ifdef SDL_H
    #ifdef __linux__
        #include <SDL2/SDL.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL.h"
    #endif
#endif

#ifdef SDL_IMAGE_H
    #ifdef __linux__
        #include <SDL2/SDL_image.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_image.h"
    #endif
#endif

#ifdef SDL_MIXER_H
    #ifdef __linux__
        #include <SDL2/SDL_mixer.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_mixer.h"
    #endif
#endif

#ifdef SDL_TTF_H
    #ifdef __linux__
        #include <SDL2/SDL_ttf.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_ttf.h"
    #endif
#endif

#ifdef SDL_NET_H
    #ifdef __linux__
        #include <SDL2/SDL_net.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_net.h"
    #endif
#endif

#ifdef CORE_RENDER_H
    #include "CORE_render.h"
#endif

#ifdef CORE_COLLISION_H
    #include "CORE_collision.h"
#endif

#ifdef CORE_MATH_H
    #include "CORE_math.h"
#endif

#ifdef CORE_ENUMS_H
    #include "CORE_enums.h"
#endif
