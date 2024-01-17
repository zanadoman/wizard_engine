#pragma once

#include "Includes/NeoTypes++.hpp"

#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_ttf.h"
#include "Includes/SDL_mixer.h"

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
            uint64 GetFrameTime();
            uint64 GetDeltaTime();
            bool GetKey(keys Key);

            class mouse
            {
                public:
                    mouse(engine& Engine);

                    double Sensitivity;
                    sint32 GetX();
                    sint32 GetY();

                private:
                    friend class engine;
                    engine& Engine;

                    sint32 X;
                    sint32 Y;
                    sint32 MovementX;
                    sint32 MovementY;

                    uint8 Update();

            } Mouse;

            class timing
            {
                public:
                    uint64 GetPrevTick();
                    uint64 GetFrameTime();

                private:
                    friend class engine;

                    uint64 PrevTick;
                    uint16 TargetFrameTime;
                    uint64 FrameDelay;
                    uint64 FrameTime;
                    uint64 DeltaTime;

                    timing(uint16 FPS);
                    uint8 UpdateTiming();

            } Timing;

        private:
            array<SDL_Event> EventQueue;

            const uint8* SDL_KeyStates;
            uint8 KeyStates[KEY_COUNT];
            uint8 UpdateInput();

            class window
            {
                private:
                    friend class engine;

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