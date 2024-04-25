#pragma once

#include <memory>
#include <cstdint>
#include <string>
#include <vector>
#include <algorithm>

#include "../WZC/WizardCore.h"

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
