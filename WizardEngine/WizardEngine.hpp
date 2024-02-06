#pragma once

#include "Includes/NeoTypes++.hpp"
#include <ctime>

#ifdef __linux__
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_mixer.h>
#include <SDL2/SDL_ttf.h>
#endif

#ifdef _WIN64
#include "Includes/SDL.h"
#include "Includes/SDL_image.h"
#include "Includes/SDL_mixer.h"
#include "Includes/SDL_ttf.h"
#endif

#include "WZEKeys.hpp"

#define EPSILON 0.0001
#define PI 3.141592653589793
#define DEG 57.29577951308232
#define RAD 0.017453292519943295

using namespace neo;

namespace wze
{
    //__________Engine_________________________________________________________________________________________________

    class engine
    {   
        public:

            //__________Window_________________________________________________________________________________________

            class window
            {
                friend class engine;
                engine* Engine;

                public:
                    uint16 GetWidth();
                    uint16 GetHeight();
                    bool IsShown();
                    bool HasFocus();

                private:
                    SDL_Window* Window;
                    SDL_Renderer* Renderer;
                    uint16 Width;
                    uint16 Height;
                    uint32 State;
                    window(engine* Engine);
                    uint8 Open(const char* Title, const char* IconPath, uint16 Width, uint16 Height);
                    uint8 Close();
            } Window;

            //__________Render_________________________________________________________________________________________

            class render
            {
                friend class engine;
                engine* Engine;

                enum type
                {
                    COLOR,
                    TEXTURE,
                    FLIPBOOK,
                    TEXT,
                    HITBOX
                };

                class token
                {
                    friend class render;
                    friend class array<token>;

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
                    uint16 GetBufferSizeKB();
                    uint16 SetBufferSizeKB(uint16 KiloBytes);

                private:
                    uint16 RenderWidth;
                    uint16 RenderHeight;
                    double SamplingStep;
                    uint16 BufferSize;
                    array<token*> RenderQueue;
                    render(engine* Engine);
                    uint8 Update();
                    uint8 SelectionStage();
                    uint8 OrderingStage();
                    uint8 OrderByLayer(uint64 From, uint64 Until);
                    uint8 OrderByLayerMerge(uint64 Left, uint64 Mid, uint64 Right);
                    uint8 OrderByPriority(uint64 From, uint64 Until);
                    uint8 OrderByPriorityMerge(uint64 Left, uint64 Mid, uint64 Right);
                    uint8 RenderingStage();
                    uint8 RenderColor(token* Token);
                    uint8 RenderTexture(token* Token);
                    uint8 RenderFlipbook(token* Token);
                    uint8 RenderText(token* Token);
                    uint8 RenderHitbox(token* Token);
            } Render;

            //__________Camera_________________________________________________________________________________________

            class camera
            {
                friend class engine;
                engine* Engine;

                public:
                    double OffsetX;
                    double OffsetY;
                    bool Smoothing;
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
                    double GetMinSpeedX();
                    double SetMinSpeedX(double MinSpeedX);
                    double GetMinSpeedY();
                    double SetMinSpeedY(double MaxSpeedY);
                    double GetMaxSpeedX();
                    double SetMaxSpeedX(double MinSpeedX);
                    double GetMaxSpeedY();
                    double SetMaxSpeedY(double MaxSpeedY);
                    double GetDecelerationRateX();
                    double SetDecelerationRateX(double DecelerationRateX);
                    double GetDecelerationRateY();
                    double SetDecelerationRateY(double DecelerationRateY);
                    double GetAccelerationRateX();
                    double SetAccelerationRateX(double AccelerationRateX);
                    double GetAccelerationRateY();
                    double SetAccelerationRateY(double AccelerationRateY);
                    double GetSlowDownRangeX();
                    double SetSlowDownRangeX(double SlowDownRangeX);
                    double GetSlowDownRangeY();
                    double SetSlowDownRangeY(double SlowDownRangeY);

                private:
                    uint64 XActor;
                    uint64 YActor;
                    double CameraX;
                    double CameraY;
                    double Zoom;
                    double MinSpeedX;
                    double MinSpeedY;
                    double MaxSpeedX;
                    double MaxSpeedY;
                    double DecelerationRateX;
                    double DecelerationRateY;
                    double AccelerationRateX;
                    double AccelerationRateY;
                    double SlowDownRangeX;
                    double SlowDownRangeY;
                    double CurrentSpeedX;
                    double CurrentSpeedY;
                    camera(engine* Engine);
                    uint8 Update();
                    SDL_Rect Transform(double X, double Y, uint16 Width, uint16 Height, double Layer);
            } Camera;

            //__________Audio__________________________________________________________________________________________

            class audio
            {
                friend class engine;
                engine* Engine;

                public:
                    double GetGlobalVolume();
                    double SetGlobalVolume(double GlobalVolume);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume, uint16 Loops);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume, double Left, double Right);
                    uint8 Play(uint64 ID, uint16 Channel, double Volume, double Left, double Right, uint16 Loops);
                    bool IsPaused(uint16 Channel);
                    uint8 Pause(uint16 Channel);
                    uint8 Resume(uint16 Channel);
                    uint8 PauseAll();
                    uint8 ResumeAll();
                    uint8 Stop(uint16 Channel);

                private:
                    double GlobalVolume;
                    audio(engine* Engine);
            } Audio;

            //__________Keys___________________________________________________________________________________________

            class keys
            {
                friend class engine;
                engine* Engine;

                public:
                    bool operator [] (key Key);

                private:
                    const uint8* SDL_KeyStates;
                    uint8 KeyStates[KEY_COUNT];
                    keys(engine* Engine);
                    uint8 Update();
            } Keys;

            //__________Mouse__________________________________________________________________________________________

            class mouse
            {
                friend class engine;
                engine* Engine;

                public:
                    double Sensitivity;
                    double GetX(double Layer);
                    double GetY(double Layer);
                    double GetMotionX();
                    double GetMotionY();
                    bool IsAbsolute();
                    bool SetAbsolute();
                    bool IsRelative();
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
                    mouse(engine* Engine);
                    uint8 Update();
            } Mouse;

            //__________Actors_________________________________________________________________________________________

            class actors
            {
                friend class engine;
                engine* Engine;

                //__________Actor______________________________________________________________________________________

                class actor
                {
                    friend class engine;
                    engine* Engine;

                    public:

                        //__________Colors_____________________________________________________________________________

                        class colors
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class color
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    uint16 Width;
                                    uint16 Height;
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    bool OffsetAngleLocked;
                                    uint8 Priority;
                                    bool Visible;
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);

                                private:
                                    double X;
                                    double Y;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    color(engine* Engine, actor* Actor);
                            };

                            public:
                                uint64 New();
                                uint8 Delete(uint64);
                                uint8 Purge(std::initializer_list<uint64> Keep);
                                uint8 Purge(array<uint64>* Keep);
                                color& operator [] (uint64 ID);

                            private:
                                array<color*> Colors;
                                colors(engine* Engine, actor* Actor);
                                ~colors();
                        } Colors;

                        //__________Textures___________________________________________________________________________

                        class textures
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class texture
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    uint16 Width;
                                    uint16 Height;
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    uint8 Priority;
                                    bool Visible;
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double GetY(double Y);
                                    uint64 GetTextureID();
                                    uint64 SetTextureID(uint64 ID);

                                private:
                                    double X;
                                    double Y;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    uint64 TextureID;
                                    texture(engine* Engine, actor* Actor, uint64 TextureID);
                            };

                            public:
                                uint64 New(uint64 TextureID);
                                uint8 Delete(uint64 ID);
                                uint8 Purge(std::initializer_list<uint64> Keep);
                                uint8 Purge(array<uint64>* Keep);
                                texture& operator [] (uint64 ID);

                            private:
                                array<texture*> Textures;
                                textures(engine* Engine, actor* Actor);
                                ~textures();
                        } Textures;

                        //__________Flipbooks__________________________________________________________________________

                        class flipbooks
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class flipbook
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    uint16 Width;
                                    uint16 Height;
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    uint8 Priority;
                                    bool Visible;
                                    bool Loop;
                                    bool Paused;
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    uint32 GetDelay();
                                    uint32 SetDelay(uint32 Delay);
                                    bool IsPlaying();
                                    uint64 GetCurrentFrame();
                                    uint8 Reset();

                                private:
                                    double X;
                                    double Y;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    uint32 Delay;
                                    uint64 CurrentFrame;
                                    uint32 Remainder;
                                    array<uint64> Textures;
                                    flipbook(engine* Engine, actor* Actor, uint32 Delay, std::initializer_list<uint64> TextureIDs);
                                    flipbook(engine* Engine, actor* Actor, uint32 Delay, array<uint64>* TextureIDs);
                            };

                            public:
                                uint64 New(uint32 Delay, std::initializer_list<uint64> TextureIDs);
                                uint64 New(uint32 Delay, array<uint64>* TextureIDs);
                                uint8 Delete(uint64 ID);
                                uint8 Purge(std::initializer_list<uint64> Keep);
                                uint8 Purge(array<uint64>* Keep);
                                flipbook& operator [] (uint64 ID);

                            private:
                                array<flipbook*> Flipbooks;
                                flipbooks(engine* Engine, actor* Actor);
                                ~flipbooks();
                        } Flipbooks;

                        //__________Texts______________________________________________________________________________

                        class texts
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class text
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    uint8 ColorR;
                                    uint8 ColorG;
                                    uint8 ColorB;
                                    uint8 ColorA;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    uint8 Priority;
                                    bool Visible;
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    uint16 GetWidth();
                                    uint16 GetHeight();
                                    uint16 SetHeight(uint16);
                                    const char* GetString();
                                    const char* SetString(const char* String);
                                    uint64 GetFont();
                                    uint64 SetFont(uint64 ID);

                                private:
                                    double X;
                                    double Y;
                                    uint16 Width;
                                    uint64 Height;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    string String;
                                    uint64 FontID;
                                    SDL_Texture* Texture;
                                    text(engine* Engine, actor* Actor, const char* String, uint64 FontID);
                                    ~text();
                            };

                            public:
                                uint64 New(const char* String, uint64 FontID);
                                uint8 Delete(uint64 ID);
                                uint8 Purge(std::initializer_list<uint64> Keep);
                                uint8 Purge(array<uint64>* Keep);
                                text& operator [] (uint64 ID);

                            private:
                                array<text*> Texts;
                                texts(engine* Engine, actor* Actor);
                                ~texts();
                        } Texts;

                        //__________OverlapBoxes_______________________________________________________________________

                        class overlapboxes
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class overlapbox
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    bool Visible;
                                    uint64 GetType();
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    uint16 GetWidth();
                                    uint16 SetWidth(uint16 Width);
                                    uint16 GetHeight();
                                    uint16 SetHeight(uint16 Height);
                                    uint16 GetHitboxWidth();
                                    uint16 GetHitboxHeight();

                                private:
                                    uint64 Type;
                                    double X;
                                    double Y;
                                    uint16 Width;
                                    uint16 Height;
                                    uint16 HitboxWidth;
                                    uint16 HitboxHeight;
                                    double HitboxMedianLength;
                                    double HitboxMedian1Angle;
                                    double HitboxMedian2Angle;
                                    overlapbox(engine* Engine, actor* Actor);
                                    ~overlapbox(); 
                            };

                            public:
                                uint64 New();
                                uint8 Delete(uint64 ID);
                                uint8 Purge(std::initializer_list<uint64> Keep);
                                uint8 Purge(array<uint64>* Keep);
                                overlapbox& operator [] (uint64 ID);

                            private:
                                array<overlapbox*> OverlapBoxes;
                                overlapboxes(engine* Engine, actor* Actor);
                                ~overlapboxes();

                        } OverlapBoxes;

                    //__________Actor______________________________________________________________________________

                        bool Visible;
                        uint64 Force;
                        uint64 Resistance;
                        bool HitboxVisible;
                        uint64 GetType();
                        double GetX();
                        double SetX(double X);
                        double GetY();
                        double SetY(double Y);
                        uint16 GetWidth();
                        uint16 SetWidth(uint16 Width);
                        uint16 GetHeight();
                        uint16 SetHeight(uint16 Height);
                        double GetAngle();
                        double SetAngle(double Angle);
                        double GetLayer();
                        double SetLayer(double Layer);
                        double GetDepth();
                        double SetDepth(double Depth);
                        uint8 GetCollisionLayer();
                        uint8 SetCollisionLayer(uint8 Layer);
                        uint16 GetHitboxWidth();
                        uint16 GetHitboxHeight();

                    private:
                        uint64 Type;
                        double X;
                        double Y;
                        double PrevX;
                        double PrevY;
                        uint16 Width;
                        uint16 Height;
                        double Angle;
                        double Layer;
                        double Depth;
                        uint8 CollisionLayer;
                        uint16 HitboxWidth;
                        uint16 HitboxHeight;
                        uint16 PrevHitboxWidth;
                        uint16 PrevHitboxHeight;
                        double HitboxMedianLength;
                        double HitboxMedian1Angle;
                        double HitboxMedian2Angle;
                        actor(engine* Engine, uint64 Type, double X, double Y, uint16 Width, uint16 Height, double Layer);
                        ~actor();
                        uint8 UpdateHitboxScale();
                        uint8 UpdateMembersPosition();
                };

                //__________Actors_____________________________________________________________________________________

                public:
                    uint64 New(uint64 Type, double X, double Y, uint16 Width, uint16 Height, double Layer);
                    uint8 Delete(uint64 ID);
                    uint8 Purge(std::initializer_list<uint64> Keep);
                    uint8 Purge(array<uint64>* Keep);
                    actor& operator [] (uint64 ID);

                private:
                    array<actor*> Actors;
                    actors(engine* Engine);
                    ~actors();
            } Actors;

            //__________Collision______________________________________________________________________________________

            class collision
            {
                friend class engine;
                engine* Engine;

                enum direction
                {
                    TOP = 1,
                    BOT = 2,
                    LEFT = 4,
                    RIGHT = 8,
                    TOP_LEFT = 16,
                    TOP_RIGHT = 32,
                    BOT_LEFT = 64,
                    BOT_RIGHT = 128,
                    NONE = 0
                };

                public:
                    uint8 GetBufferSizeB();
                    uint8 SetBufferSizeB(uint8 Bytes);

                private:
                    uint16 BufferSize;
                    array<array<actors::actor*>> CollisionLayers;
                    collision(engine* Engine);
                    bool CheckCollision(double Actor1TopLeftX, double Actor1TopLeftY, double Actor1BotRightX, double Actor1BotRightY, double Actor2TopLeftX, double Actor2TopLeftY, double Actor2BotRightX, double Actor2BotRightY);
                    direction GetCollisionDirection(actors::actor* Actor1, actors::actor* Actor2);
                    bool ResolveCollision(actors::actor* Actor1, uint64 Actor1Force, actors::actor* Actor2);
                    uint8 ResolveCollisionLayer(uint64 CollisionLayer, actors::actor* Caller);
                    uint8 NewCollisionBranch(array<actors::actor*>* Cache, actors::actor* Root, uint64 RootForce, actors::actor* CurrentBranch);
            } Collision;

            //__________Vector_________________________________________________________________________________________

            class vector
            {
                friend class engine;
                engine* Engine;

                public:
                    double Length(double X1, double Y1, double X2, double Y2);
                    double Angle(double X1, double Y1, double X2, double Y2);
                    double TerminalX(double InitialX, double Length, double Angle);
                    double TerminalY(double InitialY, double Length, double Angle);

                private:
                    vector(engine* Engine);
            } Vector;

            //__________Assets_________________________________________________________________________________________

            class assets
            {
                friend class engine;
                engine* Engine;

                public:
                    uint64 LoadTexture(const char* Path);
                    uint8 UnloadTexture(uint64 ID);
                    uint8 PurgeTextures(std::initializer_list<uint64> Keep);
                    uint8 PurgeTextures(array<uint64>* Keep);
                    uint64 LoadSound(const char* Path);
                    uint8 UnloadSound(uint64 ID);
                    uint8 PurgeSounds(std::initializer_list<uint64> Keep);
                    uint8 PurgeSounds(array<uint64>* Keep);
                    uint64 LoadFont(const char* Path, uint8 Size);
                    uint8 UnloadFont(uint64 ID);
                    uint8 PurgeFonts(std::initializer_list<uint64> Keep);
                    uint8 PurgeFonts(array<uint64>* Keep);
                    uint64 LoadCursor(const char* Path, uint16 HotSpotX, uint16 HotSpotY);
                    uint8 UnloadCursor(uint64 ID);
                    uint8 PurgeCursors(std::initializer_list<uint64> Keep);
                    uint8 PurgeCursors(array<uint64>* Keep);

                private:
                    array<SDL_Texture*> Textures;
                    array<Mix_Chunk*> Sounds;
                    array<TTF_Font*> Fonts;
                    array<SDL_Cursor*> Cursors;
                    assets(engine* Engine);
            } Assets;

            //__________Timing_________________________________________________________________________________________

            class timing
            {
                friend class engine;
                engine* Engine;

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
                    timing(engine* Engine);
                    uint8 Update();
            } Timing;

            //__________Engine_________________________________________________________________________________________

            engine(const char* Title, const char* IconPath, uint16 Width, uint16 Height, uint8 TargetFrameTime);
            ~engine();
            bool Update();
            sint32 Random(sint32 Min, sint32 Max);

        private:

            //__________Engine_________________________________________________________________________________________

            array<SDL_Event> EventQueue;
            uint8 UpdateFlipbooks();
    };
}