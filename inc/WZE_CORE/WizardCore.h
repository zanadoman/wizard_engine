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

#ifdef INCLUDE_STDIO
    #include <stdio.h>
#endif

#ifdef INCLUDE_STDLIB
    #include <stdlib.h>
#endif

#ifdef INCLUDE_STDINT
    #include <stdint.h>
#endif

#ifdef INCLUDE_STDDEF
    #include <stddef.h>
#endif

#ifdef INCLUDE_MATH
    #include <math.h>
#endif

#ifdef INCLUDE_ERRNO
    #include <errno.h>
#endif

#ifdef INCLUDE_SDL
    #ifdef __linux__
        #include <SDL2/SDL.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL.h"
    #endif
#endif

#ifdef INCLUDE_SDL_IMAGE
    #ifdef __linux__
        #include <SDL2/SDL_image.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_image.h"
    #endif
#endif

#ifdef INCLUDE_SDL_MIXER
    #ifdef __linux__
        #include <SDL2/SDL_mixer.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_mixer.h"
    #endif
#endif

#ifdef INCLUDE_SDL_TTF
    #ifdef __linux__
        #include <SDL2/SDL_ttf.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_ttf.h"
    #endif
#endif

#ifdef INCLUDE_SDL_NET
    #ifdef __linux__
        #include <SDL2/SDL_net.h>
    #endif
    #ifdef _WIN64
        #include "../inc/SDL2/SDL_net.h"
    #endif
#endif

#ifdef INCLUDE_CORE_RENDER
    #include "CORE_render.h"
#endif

#ifdef INCLUDE_CORE_COLLISION
    #include "CORE_collision.h"
#endif

#ifdef INCLUDE_CORE_MATH
    #include "CORE_math.h"
#endif

#ifdef INCLUDE_CORE_ENUMS
    #include "CORE_enums.h"
#endif
