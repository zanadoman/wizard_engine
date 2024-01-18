#pragma once

#include "Includes/NeoTypes++.hpp"

#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_render.h"
#include "Includes/SDL_ttf.h"
#include "Includes/SDL_mixer.h"

#include "SEKeys.hpp"
#include <initializer_list>

#define EPSILON 0.0001
#define PI 3.141592653589793

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
                    double OffsetX;
                    double OffsetY;

                    double GetZoom();
                    uint8 SetZoom(double Zoom);

                    uint8 Bind(uint64 Actor);
                    uint8 BindX(uint64 Actor);
                    uint8 BindY(uint64 Actor);
                    uint8 Unbind();
                    uint8 UnbindX();
                    uint8 UnbindY();

                    bool IsXBinded();
                    bool IsYBinded();
                    uint64 GetBindedXActor();
                    uint64 GetBindedYActor();

                private:
                    friend class engine;
                    engine& Engine;

                    bool XBinded;
                    bool YBinded;
                    uint64 BindedXActor;
                    uint64 BindedYActor;

                    double CameraX;
                    double CameraY;
                    double Zoom;

                    camera(engine& Engine);
                    uint8 Update();

                    uint8 Apply(SDL_Rect* Object, double Layer);

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
                    double GetX(double Layer);
                    double GetY(double Layer);
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

            class vector
            {
                public:
                    double Length(double X1, double Y1, double X2, double Y2);
                    double Angle(double X1, double Y1, double X2, double Y2);
                    uint8 Move(double* X, double* Y, double Distance, double Angle);

                private:
                    friend class engine;
                    engine& Engine;

                    vector(engine& Engine);

            } Vector;

            class actors
            {
                class actor
                {
                    public:
                        template <typename type> type& GetClass();

                        double GetX();
                        double GetY();
                        uint8 SetX(double X);
                        uint8 SetY(double Y);

                        uint16 GetHeight();
                        uint16 GetWidth();
                        uint8 SetHeight(uint16 Height);
                        uint8 SetWidth(uint16 Width);

                    private:
                        friend class engine;
                        engine& Engine;

                        uint64 Type;
                        void* Class;

                        double X;
                        double Y;
                        uint16 Width;
                        uint16 Height;

                        actor(engine& Engine, uint64 Type, void* Class);
                        ~actor();

                };

                public:
                    uint64 New(uint64 Type, void* Class);
                    uint8 Delete(std::initializer_list<uint64> IDs);

                    actor& operator [] (uint64 ID);

                private:
                    friend class engine;
                    engine& Engine;

                    array<actor*> Actors;

                    actors(engine& Engine);
                    ~actors();

            } Actors;

        private:
            array<SDL_Event> EventQueue;

    };

    template <typename type> type& engine::actors::actor::GetClass()
    {
        return *(type*)this->Class;
    }
}