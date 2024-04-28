#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include <algorithm>
#include <memory>
#include <stdexcept>

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

#define PI 3.1415927f
#define DEG_MAX 360.0f
#define RAD_MAX 6.2831855f
