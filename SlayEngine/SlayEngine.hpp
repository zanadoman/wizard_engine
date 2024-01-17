#pragma once

#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_ttf.h"
#include "Includes/SDL_mixer.h"
#include "Includes/NeoTypes++.hpp"

#include "SEKeys.hpp"

using namespace neo;

namespace slay
{
    class engine
    {
        public:
            engine(const char* Title, uint16 Width, uint16 Height, uint16 FPS);
            ~engine();
            
            bool Update();
            uint8 SetFPS(uint16 FPS);
            uint32 DeltaTime();
            bool KeyState(keys Key);

            class mouse
            {
                public:
                    mouse();

                    uint8 SetSensitivity(double Sensitivity);

                    uint8 Update();

                private:
                    double Sensitivity;

                    sint32 X;
                    sint32 Y;
                    sint32 MovementX;
                    sint32 MovementY;

            } Mouse;

        private:
            array<SDL_Event> EventQueue;

            uint64 PrevTick;
            uint16 TargetFrameTime;
            uint64 FrameTime;

            const uint8* SDL_KeyStates;
            uint8 KeyStates[KEY_COUNT];

            uint8 UpdateTiming();
            uint8 UpdateInput();

            class window
            {
                public:
                    SDL_Window* Window;
                    SDL_Renderer* Renderer;

                    uint16 Width;
                    uint16 Height;

                    window();
                    ~window();

                    uint8 New(const char* Title, uint16 Width, uint16 Height);

            } Window;

    };
}