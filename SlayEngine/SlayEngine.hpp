#pragma once

#include "Includes/NeoTypes++.hpp"
#include <ctime>

#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_ttf.h"
#include "Includes/SDL_mixer.h"

#include "SEKeys.hpp"

#define EPSILON 0.0001
#define PI 3.141592653589793
#define DEG 57.29577951308232
#define RAD 0.017453292519943295

using namespace neo;

namespace slay
{
    //__________Engine_________________________________________________________________________________________________

    class engine
    {   
        public:
            engine(const char* Title, uint16 Width, uint16 Height, uint8 TargetFrameTime);
            ~engine();

            bool Update();
            sint32 Random(sint32 Min, sint32 Max);

            //__________Window_________________________________________________________________________________________

            class window
            {
                friend class engine;
                engine& Engine;

                public:
                    uint16 GetHeight();
                    uint16 GetWidth();

                private:
                    SDL_Window* Window;
                    SDL_Renderer* Renderer;
                    uint16 Width;
                    uint16 Height;
                    window(engine& Engine);
                    uint8 Open(const char* Title, uint16 Width, uint16 Height);
                    uint8 Close();
            } Window;

            //__________Render_________________________________________________________________________________________

            class render
            {
                friend class engine;
                engine& Engine;

                enum type
                {
                    COLOR,
                    TEXTURE,
                    TEXT
                };

                class token
                {
                    friend class render;

                    void* Data;
                    type Type;
                    double Layer;
                    uint8 Priority;
                    SDL_Rect Area;
                    token();
                    token(void* Data, type Type, double Layer, uint8 Priority, SDL_Rect Area);
                };

                public:
                    double GetSamplingStep();
                    double SetSamplingStep(double SamplingStep);

                private:
                    array<token> RenderQueue;
                    uint16 RenderWidth;
                    uint16 RenderHeight;
                    double SamplingStep;
                    render(engine& Engine);
                    uint8 Update();
                    uint8 SelectionStage();
                    uint8 OrderingStage();
                    uint8 OrderByLayer(uint64 From, uint64 Until);
                    uint8 OrderByLayerMerge(uint64 Left, uint64 Mid, uint64 Right);
                    uint8 OrderByPriority(uint64 From, uint64 Until);
                    uint8 OrderByPriorityMerge(uint64 Left, uint64 Mid, uint64 Right);
                    uint8 RenderingStage();
                    uint8 RenderColor(token Token);
                    uint8 RenderTexture(token Token);
                    uint8 RenderText(token Token);
            } Render;

            //__________Camera_________________________________________________________________________________________

            class camera
            {
                friend class engine;
                engine& Engine;

                public:
                    double OffsetX;
                    double OffsetY;
                    double GetZoom();
                    double SetZoom(double Zoom);
                    uint64 GetXActor();
                    uint64 GetYActor();
                    uint8 Bind(uint64 Actor);
                    uint8 BindX(uint64 Actor);
                    uint8 BindY(uint64 Actor);
                    uint8 Unbind();
                    uint8 UnbindX();
                    uint8 UnbindY();

                private:
                    uint64 XActor;
                    uint64 YActor;
                    double CameraX;
                    double CameraY;
                    double Zoom;
                    camera(engine& Engine);
                    uint8 Update();
                    SDL_Rect Transform(double X, double Y, uint16 Width, uint16 Height, double Layer);
            } Camera;

            //__________Audio__________________________________________________________________________________________

            class audio
            {
                friend class engine;
                engine& Engine;

                public:
                    double GetGlobalVolume();
                    double SetGlobalVolume(double GlobalVolume);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume, uint16 Loops);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume, double Left, double Right);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume, double Left, double Right, uint16 Loops);
                    uint8 Stop(uint16 Channel);

                private:
                    double GlobalVolume;
                    audio(engine& Engine);
            } Audio;

            //__________Keys___________________________________________________________________________________________

            class keys
            {
                friend class engine;
                engine& Engine;

                public:
                    bool operator [] (key Key);

                private:
                    const uint8* SDL_KeyStates;
                    uint8 KeyStates[KEY_COUNT];
                    keys(engine& Engine);
                    uint8 Update();
            } Keys;

            //__________Mouse__________________________________________________________________________________________

            class mouse
            {
                friend class engine;
                engine& Engine;

                public:
                    double Sensitivity;
                    double GetX(double Layer);
                    double GetY(double Layer);
                    double GetMotionX();
                    double GetMotionY();
                    bool IsAbsolute();
                    bool IsRelative();
                    bool SetAbsolute();
                    bool SetRelative();
                    uint64 GetCursor();
                    uint64 SetCursor(uint64 ID);

                private:
                    sint32 X;
                    sint32 Y;
                    double MotionX;
                    double MotionY;
                    bool Mode;
                    uint64 Cursor;
                    mouse(engine& Engine);
                    uint8 Update();
            } Mouse;

            //__________Actors_________________________________________________________________________________________

            class actors
            {
                friend class engine;
                engine& Engine;

                //__________Actor______________________________________________________________________________________

                class actor
                {
                    friend class engine;
                    engine& Engine;

                    public:

                        //__________Colors_____________________________________________________________________________

                        class colors
                        {
                            friend class engine;
                            engine& Engine;
                            actor& Actor;

                            class color
                            {
                                friend class engine;
                                engine& Engine;
                                actor& Actor;

                                public:
                                    bool OffsetLocked;
                                    uint16 Width;
                                    uint16 Height;
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    uint8 Priority;
                                    bool Visible;
                                    sint32 GetOffsetX();
                                    sint32 SetOffsetX(sint32 OffsetX);
                                    sint32 GetOffsetY();
                                    sint32 SetOffsetY(sint32 OffsetY);

                                private:
                                    sint32 OffsetX;
                                    sint32 OffsetY;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    color(engine& Engine, actor& Actor);
                            };

                            public:
                                uint64 New();
                                uint8 Delete(uint64);
                                color& operator [] (uint64 ID);

                            private:
                                array<color*> Colors;
                                colors(engine& Engine, actor& Actor);
                                ~colors();
                        } Colors;

                        //__________Textures___________________________________________________________________________

                        class textures
                        {
                            friend class engine;
                            engine& Engine;
                            actor& Actor;

                            class texture
                            {
                                friend class engine;
                                engine& Engine;
                                actor& Actor;

                                public:
                                    bool OffsetLocked;
                                    bool AngleLocked;
                                    uint16 Width;
                                    uint16 Height;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    uint8 Priority;
                                    bool Visible;
                                    sint32 GetOffsetX();
                                    sint32 SetOffsetX(sint32 OffsetX);
                                    sint32 GetOffsetY();
                                    sint32 SetOffsetY(sint32 OffsetY);
                                    uint64 GetTextureID();
                                    uint64 SetTextureID(uint64 ID);

                                private:
                                    sint32 OffsetX;
                                    sint32 OffsetY;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    uint64 TextureID;
                                    texture(engine& Engine, actor& Actor);
                            };

                            public:
                                uint64 New();
                                uint8 Delete(uint64 ID);
                                texture& operator [] (uint64 ID);

                            private:
                                array<texture*> Textures;
                                textures(engine& Engine, actor& Actor);
                                ~textures();
                        } Textures;

                        //__________Texts______________________________________________________________________________

                        class texts
                        {
                            friend class engine;
                            engine& Engine;
                            actor& Actor;

                            class text
                            {
                                friend class engine;
                                engine& Engine;
                                actor& Actor;

                                public:
                                    bool OffsetLocked;
                                    bool AngleLocked;
                                    uint16 Height;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    uint8 Priority;
                                    bool Visible;
                                    sint32 GetOffsetX();
                                    sint32 SetOffsetX(sint32 OffsetX);
                                    sint32 GetOffsetY();
                                    sint32 SetOffsetY(sint32 OffsetY);
                                    string* String();
                                    uint64 GetFont();
                                    uint64 SetFont(uint64 ID);

                                private:
                                    string Text;
                                    sint32 OffsetX;
                                    sint32 OffsetY;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    uint16 Width;
                                    uint64 FontID;
                                    SDL_Texture* Texture;
                                    text(engine& Engine, actor& Actor);
                                    ~text();
                            };

                            public:
                                uint64 New();
                                uint8 Delete(uint64 ID);
                                text& operator [] (uint64 ID);

                            private:
                                array<text*> Texts;
                                texts(engine& Engine, actor& Actor);
                                ~texts();
                        } Texts;

                    //__________Actor______________________________________________________________________________

                        uint16 Width;
                        uint16 Height;
                        uint64 GetType();
                        double GetX();
                        double SetX(double X);
                        double GetY();
                        double SetY(double Y);
                        double GetAngle();
                        double SetAngle(double Angle);
                        double GetLayer();
                        double SetLayer(double Layer);
                        double GetDepth();
                        double SetDepth(double Depth);

                    private:
                        uint64 Type;
                        double X;
                        double Y;
                        double Angle;
                        double Layer;
                        double Depth;
                        actor(engine& Engine, uint64 Type);
                        ~actor();
                };

                //__________Actors_____________________________________________________________________________________

                public:
                    uint64 New(uint64 Type);
                    uint8 Delete(uint64 ID);
                    actor& operator [] (uint64 ID);

                private:
                    array<actor*> Actors;
                    actors(engine& Engine);
                    ~actors();
            } Actors;

            //__________Vector_________________________________________________________________________________________

            class vector
            {
                friend class engine;
                engine& Engine;

                public:
                    double Length(double X1, double Y1, double X2, double Y2);
                    double Angle(double X1, double Y1, double X2, double Y2);
                    double TerminalX(double InitialX, double Length, double Angle);
                    double TerminalY(double InitialY, double Length, double Angle);

                private:
                    vector(engine& Engine);
            } Vector;

            //__________Assets_________________________________________________________________________________________

            class assets
            {
                friend class engine;
                engine& Engine;

                public:
                    uint64 LoadPNG(const char* Path);
                    uint8 UnloadPNG(uint64 ID);
                    uint8 PurgePNGs();
                    uint64 LoadWAV(const char* Path);
                    uint8 UnloadWAV(uint64 ID);
                    uint8 PurgeWAVs();
                    uint64 LoadTTF(const char* Path, uint8 Size);
                    uint8 UnloadTTF(uint64 ID);
                    uint8 PurgeTTFs();
                    uint64 LoadCursor(const char* Path, uint16 HotSpotX, uint16 HotSpotY);
                    uint8 UnloadCursor(uint64 ID);
                    uint8 PurgeCursors();

                private:
                    array<SDL_Texture*> Textures;
                    array<Mix_Chunk*> Sounds;
                    array<TTF_Font*> Fonts;
                    array<SDL_Cursor*> Cursors;
                    assets(engine& Engine);
            } Assets;

            //__________Timing_________________________________________________________________________________________

            class timing
            {
                friend class engine;
                engine& Engine;

                public:
                    uint8 TargetFrameTime;
                    uint32 GetPrevTick();
                    uint32 GetGameTime();
                    uint32 GetRenderTime();
                    uint32 GetWorkingTime();
                    sint16 GetIdleTime();
                    uint32 GetFrameTime();
                    uint32 GetDeltaTime();

                private:
                    uint32 PrevTick;
                    uint32 GameTime;
                    uint32 RenderTime;
                    uint32 WorkingTime;
                    sint16 IdleTime;
                    uint32 FrameTime;
                    uint32 DeltaTime;
                    timing(engine& Engine);
                    uint8 Update();
            } Timing;

        //__________Engine_____________________________________________________________________________________________

        private:
            array<SDL_Event> EventQueue;
    };
}