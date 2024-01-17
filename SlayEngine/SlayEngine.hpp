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
            uint32 GetDeltaTime();
            bool GetKey(keys Key);

            class mouse
            {
                public:
                    mouse(engine& Engine);

                    uint8 SetSensitivity(double Sensitivity);
                    sint32 X();
                    sint32 Y();

                private:
                    friend class engine;
                    engine& Engine;

                    double Sensitivity;

                    sint32 X_;
                    sint32 Y_;
                    sint32 MovementX_;
                    sint32 MovementY_;

                    uint8 Update();

            } Mouse;

        private:
            array<SDL_Event> EventQueue;

            uint64 PrevTick;
            uint16 TargetFrameTime;
            uint64 DeltaTime;
            uint8 UpdateTiming();

            const uint8* SDL_KeyStates;
            uint8 KeyStates[KEY_COUNT];
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