#pragma once

#ifdef __cplusplus
    extern "C"
    {
#endif
        #ifdef __linux__
            #include <SDL2/SDL.h>
            #include <SDL2/SDL_image.h>
            #include <SDL2/SDL_mixer.h>
            #include <SDL2/SDL_ttf.h>
            #include <SDL2/SDL_net.h>
        #endif

        #ifdef _WIN64
            #include "../SDL2/SDL.h"
            #include "../SDL2/SDL_image.h"
            #include "../SDL2/SDL_mixer.h"
            #include "../SDL2/SDL_ttf.h"
            #include "../SDL2/SDL_net.h"
        #endif
#ifdef __cplusplus
    }
#endif
