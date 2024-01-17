#pragma once

#include "Includes/NeoTypes++.hpp"

#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_render.h"
#include "Includes/SDL_ttf.h"
#include "Includes/SDL_mixer.h"

#include "SEKeys.hpp"

using namespace neo;

namespace slay
{
    class engine
    {
        public:
            engine(const char* Title, uint16 Width, uint16 Height, uint16 Depth, uint8 TargetFrameTime);
            ~engine();
            bool Update();

            class window
            {
                public:
                    uint16 GetHeight();
                    uint16 GetWidth();
                    uint16 GetDepth();

                private:
                    friend class engine;
                    engine& Engine;

                    SDL_Window* Window;
                    SDL_Renderer* Renderer;
                    uint16 Width;
                    uint16 Height;
                    uint16 Depth;

                    window(engine& Engine);
                    ~window();
                    uint8 New(const char* Title, uint16 Width, uint16 Height, uint16 Depth);

            } Window;

            class timing
            {
                public:
                    uint8 TargetFrameTime;

                    uint64 GetPrevTick();
                    uint64 GetWorkingTime();
                    sint64 GetIdleTime();
                    uint64 GetFrameTime();
                    uint64 GetDeltaTime();

                private:
                    friend class engine;
                    engine& Engine;

                    uint64 PrevTick;
                    uint64 WorkingTime;
                    sint64 IdleTime;
                    uint64 FrameTime;
                    uint64 DeltaTime;

                    timing(engine& Engine);
                    uint8 Update();

            } Timing;

            class camera
            {
                public:

                private:
                    friend class engine;
                    engine& Engine;

                    camera(engine& Engine);

            } Camera;

            class keys
            {
                public:
                    bool GetState(key Key);

                private:
                    friend class engine;
                    engine& Engine;

                    const uint8* SDL_KeyStates;
                    uint8 KeyStates[KEY_COUNT];

                    keys(engine& Engine);
                    uint8 Update();

            } Keys;

            class mouse
            {
                public:
                    double Sensitivity;

                    sint32 GetX();
                    sint32 GetY();
                    double GetMotionX();
                    double GetMotionY();

                    bool IsAbsolute();
                    bool IsRelative();
                    uint8 SetAbsolute();
                    uint8 SetRelative();

                private:
                    friend class engine;
                    engine& Engine;

                    sint32 X;
                    sint32 Y;
                    double MotionX;
                    double MotionY;
                    bool Mode;

                    mouse(engine& Engine);
                    uint8 Update();

            } Mouse;

        private:
            array<SDL_Event> EventQueue;

            class render
            {
                friend class engine;
                engine& Engine;

                render(engine& Engine);
                uint8 Update();
                uint8 OpenFrame();
                uint8 CloseFrame();

            } Render;
    };
}