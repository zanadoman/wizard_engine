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
            engine(const char* Title, uint16 Width, uint16 Height, uint8 TargetFrameTime);
            ~engine();
            bool Update();

            class window
            {
                public:
                    uint16 GetHeight();
                    uint16 GetWidth();

                private:
                    friend class engine;
                    engine& Engine;

                    SDL_Window* Window;
                    SDL_Renderer* Renderer;
                    uint16 Width;
                    uint16 Height;

                    window(engine& Engine);
                    ~window();
                    uint8 New(const char* Title, uint16 Width, uint16 Height);

            } Window;

            class render
            {
                public:

                private:
                    friend class engine;
                    engine& Engine;

                    render(engine& Engine);
                    uint8 Update();
                    uint8 OpenFrame();
                    uint8 CloseFrame();

            } Render;

            class audio
            {
                public:
                    double GetGlobalVolume();
                    uint8 SetGlobalVolume(double GlobalVolume);

                    uint8 Play(uint64 SoundID, uint16 Channel, double Volume);
                    uint8 Play(uint64 SoundID, uint16 Channel, double Volume, uint16 Loops);
                    uint8 Play(uint64 SoundID, uint16 Channel, double Volume, double Left, double Right);
                    uint8 Play(uint64 SoundID, uint16 Channel, double Volume, double Left, double Right, uint16 Loops);
                    uint8 Stop(std::initializer_list<uint16> Channels);

                private:
                    friend class engine;
                    engine& Engine;

                    double GlobalVolume;

                    audio(engine& Engine);

            } Audio;

            class timing
            {
                public:
                    uint8 TargetFrameTime;

                    uint32 GetPrevTick();
                    uint32 GetWorkingTime();
                    sint16 GetIdleTime();
                    uint32 GetFrameTime();
                    uint32 GetDeltaTime();

                private:
                    friend class engine;
                    engine& Engine;

                    uint32 PrevTick;
                    uint32 WorkingTime;
                    sint16 IdleTime;
                    uint32 FrameTime;
                    uint32 DeltaTime;

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

            class assets
            {
                public:
                    uint64 LoadTexture(const char* Path);
                    uint8 UnloadTextures(std::initializer_list<uint64> IDs);

                    uint64 LoadFont(const char* Path, uint8 Size);
                    uint8 UnloadFonts(std::initializer_list<uint64> IDs);

                    uint64 LoadSound(const char* Path);
                    uint8 UnloadSounds(std::initializer_list<uint64> IDs);

                private:
                    friend class engine;
                    engine& Engine;

                    array<SDL_Texture*> Textures;
                    array<TTF_Font*> Fonts;
                    array<Mix_Chunk*> Sounds;

                    assets(engine& Engine);
                    ~assets();

            } Assets;

        private:
            array<SDL_Event> EventQueue;

    };
}