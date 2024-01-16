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
            uint8 DeltaTime();

            void SetFPS(uint16 FPS);
            uint16 GetFPS();

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
            uint16 FPS;

            class window
            {
                public:
                    SDL_Window* Window;
                    SDL_Renderer* Renderer;

                    uint16 Width;
                    uint16 Height;

                    uint8 Init(const char* Title, uint16 Width, uint16 Height);

            } Window;

            class control
            {
                public:
                    uint32 PrevTick;
                    uint32 DeltaTime;
                    uint16 FrameTime;

                    uint8 UpdateDeltaTime();
                    uint8 CapFPS();
            } Control;
    };
}