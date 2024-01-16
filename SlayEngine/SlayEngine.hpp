#pragma once

#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_ttf.h"
#include "Includes/SDL_mixer.h"
#include "Includes/NeoTypes++.hpp"

using namespace neo;

namespace slay
{
    class engine
    {
        public:
            engine(const char* Title, uint16 Width, uint16 Height);

        private:
            class window
            {
                public:
                    SDL_Window* window;
                    SDL_Renderer* renderer;

                    uint16 width;
                    uint16 height;

                    uint8 Init(const char* Title, uint16 Width, uint16 Height);

            } Window;

    };
}