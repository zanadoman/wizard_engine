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
            engine(const char* Title, uint16 Width, uint16 Height, uint16 FPS);

            bool Update();

            uint8 SetFPS(uint16 FPS);

            class mouse
            {
                public:
                    uint8 Update();

                private:
                    sint32 X;
                    sint32 Y;
                    sint32 MovementX;
                    sint32 MovementY;

                    bool LMB;
                    bool MMB;
                    bool RMB;
                    sint8 Wheel;

            } Mouse;

        private:
            uint8 TargetFrameTime;
            uint8 PrevTick;
            uint8 DeltaTime;

            uint8 UpdateDeltaTime();
            uint8 CapFPS();

            class window
            {
                public:
                    SDL_Window* Window;
                    SDL_Renderer* Renderer;

                    uint16 Width;
                    uint16 Height;

                    uint8 Init(const char* Title, uint16 Width, uint16 Height);

            } Window;
    };
}