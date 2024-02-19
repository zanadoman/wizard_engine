#pragma once

#include "inc/NeoTypes++.hpp"

#ifdef __linux__
    #include <SDL2/SDL.h>
    #include <SDL2/SDL_image.h>
    #include <SDL2/SDL_mixer.h>
    #include <SDL2/SDL_ttf.h>
    #include <SDL2/SDL_net.h>
#endif

#ifdef _WIN64
    #include "inc/SDL.h"
    #include "inc/SDL_image.h"
    #include "inc/SDL_mixer.h"
    #include "inc/SDL_ttf.h"
    #include "inc/SDL_net.h"
    #undef main
#endif

#include "WZEEnums.hpp"

#define EPSILON 0.0001
#define PI 3.141592653589793
#define DEG 57.29577951308232
#define RAD 0.017453292519943295
#define DEG_MAX 360
#define RAD_MAX 6.283185307179586

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
                    neo::uint16 GetWidth();
                    neo::uint16 GetHeight();
                    bool IsShown();
                    bool HasFocus();

                private:
                    SDL_Window* Window;
                    SDL_Renderer* Renderer;
                    neo::uint16 Width;
                    neo::uint16 Height;
                    neo::uint32 State;
                    window(engine* Engine);
                    neo::uint8 Open(const char* Title, const char* IconPath, neo::uint16 Width, neo::uint16 Height);
                    neo::uint8 Close();
            } Window;

            //__________Render_________________________________________________________________________________________

            class render
            {
                friend class engine;
                engine* Engine;

                enum type
                {
                    COLORBOX,
                    TEXTUREBOX,
                    FLIPBOOK,
                    TEXTBOX,
                    OVERLAPBOX,
                    HITBOX
                };

                class token
                {
                    friend class render;

                    void* Data;
                    type Type;
                    double Layer;
                    neo::uint8 Priority;
                    SDL_Rect Area;
                    token(void* Data, type Type, double Layer, neo::uint8 Priority, SDL_Rect Area);
                };

                public:
                    double GetSamplingStep();
                    double SetSamplingStep(double SamplingStep);
                    neo::uint16 GetBufferSizeKB();
                    neo::uint16 SetBufferSizeKB(neo::uint16 KiloBytes);

                private:
                    neo::uint16 RenderWidth;
                    neo::uint16 RenderHeight;
                    double SamplingStep;
                    neo::uint16 BufferSize;
                    neo::array<token*> RenderQueue;
                    render(engine* Engine);
                    neo::uint8 Update();
                    neo::uint8 SelectionStage();
                    neo::uint8 OrderingStage();
                    neo::uint8 OrderByLayer(neo::uint64 From, neo::uint64 Until);
                    neo::uint8 OrderByLayerMerge(neo::uint64 Left, neo::uint64 Mid, neo::uint64 Right);
                    neo::uint8 OrderByPriority(neo::uint64 From, neo::uint64 Until);
                    neo::uint8 OrderByPriorityMerge(neo::uint64 Left, neo::uint64 Mid, neo::uint64 Right);
                    neo::uint8 RenderingStage();
                    neo::uint8 RenderColorbox(token* Token);
                    neo::uint8 RenderTexturebox(token* Token);
                    neo::uint8 RenderFlipbook(token* Token);
                    neo::uint8 RenderTextbox(token* Token);
                    neo::uint8 RenderOverlapbox(token* Token);
                    neo::uint8 RenderHitbox(token* Token);
            } Render;

            //__________Camera_________________________________________________________________________________________

            class camera
            {
                friend class engine;
                engine* Engine;

                public:
                    double GetOriginX();
                    double SetOriginX(double OriginX);
                    double GetOriginY();
                    double SetOriginY(double OriginY);
                    double GetOffsetX();
                    double SetOffsetX(double OffsetX);
                    double GetOffsetY();
                    double SetOffsetY(double OffsetY);
                    double GetZoom();
                    double SetZoom(double Zoom);
                    neo::uint64 Bind(neo::uint64 ActorID);
                    neo::uint64 BindX(neo::uint64 ActorID);
                    neo::uint64 BindY(neo::uint64 ActorID);
                    neo::uint8 Unbind();
                    neo::uint8 UnbindX();
                    neo::uint8 UnbindY();
                    neo::uint64 GetXActor();
                    neo::uint64 GetYActor();

                private:
                    double OriginX;
                    double OriginY;
                    double BaseOffsetX;
                    double OffsetX;
                    double BaseOffsetY;
                    double OffsetY;
                    double Zoom;
                    neo::uint64 XActor;
                    neo::uint64 YActor;
                    camera(engine* Engine);
                    neo::uint8 Update();
                    SDL_Rect Transform(double X, double Y, neo::uint16 Width, neo::uint16 Height, double Layer);
            } Camera;

            //__________Audio__________________________________________________________________________________________

            class audio
            {
                friend class engine;
                engine* Engine;

                public:
                    double GetGlobalVolume();
                    double SetGlobalVolume(double GlobalVolume);
                    neo::uint8 Play(neo::uint64 SoundID, neo::uint16 Channel, double Volume);
                    neo::uint8 Play(neo::uint64 SoundID, neo::uint16 Channel, double Volume, neo::uint16 Loops);
                    neo::uint8 Play(neo::uint64 SoundID, neo::uint16 Channel, double Volume, double Left, double Right);
                    neo::uint8 Play(neo::uint64 SoundID, neo::uint16 Channel, double Volume, double Left, double Right, neo::uint16 Loops);
                    bool IsPaused(neo::uint16 Channel);
                    neo::uint8 Pause(neo::uint16 Channel);
                    neo::uint8 Resume(neo::uint16 Channel);
                    neo::uint8 PauseAll();
                    neo::uint8 ResumeAll();
                    neo::uint8 Stop(neo::uint16 Channel);

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
                    const neo::uint8* SDL_KeyStates;
                    neo::uint8* KeyStates;
                    keys(engine* Engine);
                    ~keys();
                    neo::uint8 Update();
            } Keys;

            //__________Mouse__________________________________________________________________________________________

            class mouse
            {
                friend class engine;
                engine* Engine;

                public:
                    double GetSensitivity();
                    double SetSensitivity(double Sensitivity);
                    double GetX(double Layer);
                    double GetY(double Layer);
                    double GetMotionX();
                    double GetMotionY();
                    bool IsAbsolute();
                    bool SetAbsolute();
                    bool IsRelative();
                    bool SetRelative();
                    neo::uint64 GetCursorTextureID();
                    neo::uint64 SetCursorTextureID(neo::uint64 CursorTextureID);

                private:
                    double Sensitivity;
                    neo::sint32 X;
                    neo::sint32 Y;
                    double MotionX;
                    double MotionY;
                    bool Mode;
                    neo::uint64 CursorTextureID;
                    mouse(engine* Engine);
                    neo::uint8 Update();
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

                        //__________Colorboxes_________________________________________________________________________

                        class colorboxes
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class colorbox
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    neo::uint16 Width;
                                    neo::uint16 Height;
                                    neo::uint8 ColorR;
                                    neo::uint8 ColorG;
                                    neo::uint8 ColorB;
                                    neo::uint8 ColorA;
                                    bool OffsetAngleLocked;
                                    neo::uint8 Priority;
                                    bool Visible;
                                    neo::uint64 GetID();
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    double GetOffsetLength();
                                    double SetOffsetLength(double OffsetLength);
                                    double GetOffsetAngle();
                                    double SetOffsetAngle(double OffsetAngle);

                                private:
                                    neo::uint64 ID;
                                    double X;
                                    double Y;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    colorbox(engine* Engine, actor* Actor, neo::uint64 ID);
                                    ~colorbox();
                            };

                            public:
                                colorbox* New();
                                neo::uint8 Delete(neo::uint64 ColorboxID);
                                neo::uint8 Purge(std::initializer_list<neo::uint64> KeepColorboxIDs);
                                neo::uint8 Purge(neo::array<neo::uint64>* KeepColorboxIDs);
                                colorbox& operator [] (neo::uint64 ColorboxID);

                            private:
                                neo::array<colorbox*> Colorboxes;
                                colorboxes(engine* Engine, actor* Actor);
                                ~colorboxes();
                        } Colorboxes;

                        //__________Textureboxes_______________________________________________________________________

                        class textureboxes
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class texturebox
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    neo::uint16 Width;
                                    neo::uint16 Height;
                                    neo::uint8 ColorR;
                                    neo::uint8 ColorG;
                                    neo::uint8 ColorB;
                                    neo::uint8 ColorA;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    neo::uint8 Priority;
                                    bool Visible;
                                    neo::uint64 GetID();
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    double GetOffsetLength();
                                    double SetOffsetLength(double OffsetLength);
                                    double GetOffsetAngle();
                                    double SetOffsetAngle(double OffsetAngle);
                                    neo::uint64 GetTextureID();
                                    neo::uint64 SetTextureID(neo::uint64 TextureID);

                                private:
                                    neo::uint64 ID;
                                    double X;
                                    double Y;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    neo::uint64 TextureID;
                                    texturebox(engine* Engine, actor* Actor, neo::uint64 ID, neo::uint64 TextureID);
                                    ~texturebox();
                            };

                            public:
                                texturebox* New(neo::uint64 TextureID);
                                neo::uint8 Delete(neo::uint64 TextureboxID);
                                neo::uint8 Purge(std::initializer_list<neo::uint64> KeepTextureboxIDs);
                                neo::uint8 Purge(neo::array<neo::uint64>* KeepTextureboxIDs);
                                texturebox& operator [] (neo::uint64 TextureboxID);

                            private:
                                neo::array<texturebox*> Textureboxes;
                                textureboxes(engine* Engine, actor* Actor);
                                ~textureboxes();
                        } Textureboxes;

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
                                    neo::uint16 Width;
                                    neo::uint16 Height;
                                    neo::uint8 ColorR;
                                    neo::uint8 ColorG;
                                    neo::uint8 ColorB;
                                    neo::uint8 ColorA;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    neo::uint8 Priority;
                                    bool Visible;
                                    bool Loop;
                                    bool Paused;
                                    neo::uint64 GetID();
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    double GetOffsetLength();
                                    double SetOffsetLength(double OffsetLength);
                                    double GetOffsetAngle();
                                    double SetOffsetAngle(double OffsetAngle);
                                    neo::uint32 GetDelay();
                                    neo::uint32 SetDelay(neo::uint32 Delay);
                                    bool IsPlaying();
                                    neo::uint64 GetCurrentFrame();
                                    neo::uint8 Reset();

                                private:
                                    neo::uint64 ID;
                                    double X;
                                    double Y;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    neo::uint32 Delay;
                                    neo::uint64 CurrentFrame;
                                    neo::uint32 Remainder;
                                    neo::uint64 TexturesLength;
                                    neo::uint64* Textures;
                                    flipbook(engine* Engine, actor* Actor, neo::uint64 ID, neo::uint32 Delay, std::initializer_list<neo::uint64> TextureIDs);
                                    flipbook(engine* Engine, actor* Actor, neo::uint64 ID, neo::uint32 Delay, neo::array<neo::uint64>* TextureIDs);
                                    ~flipbook();
                            };

                            public:
                                flipbook* New(neo::uint32 Delay, std::initializer_list<neo::uint64> TextureIDs);
                                flipbook* New(neo::uint32 Delay, neo::array<neo::uint64>* TextureIDs);
                                neo::uint8 Delete(neo::uint64 FlipbookID);
                                neo::uint8 Purge(std::initializer_list<neo::uint64> KeepFlipbookIDs);
                                neo::uint8 Purge(neo::array<neo::uint64>* KeepFlipbookIDs);
                                flipbook& operator [] (neo::uint64 FlipbookID);

                            private:
                                neo::array<flipbook*> Flipbooks;
                                flipbooks(engine* Engine, actor* Actor);
                                ~flipbooks();
                        } Flipbooks;

                        //__________Textboxes__________________________________________________________________________

                        class textboxes
                        {
                            friend class engine;
                            engine* Engine;
                            actor* Actor;

                            class textbox
                            {
                                friend class engine;
                                engine* Engine;
                                actor* Actor;

                                public:
                                    neo::uint8 ColorR;
                                    neo::uint8 ColorG;
                                    neo::uint8 ColorB;
                                    neo::uint8 ColorA;
                                    double Angle;
                                    bool FlipHorizontal;
                                    bool FlipVertical;
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    neo::uint8 Priority;
                                    bool Visible;
                                    neo::uint64 GetID();
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    double GetOffsetLength();
                                    double SetOffsetLength(double OffsetLength);
                                    double GetOffsetAngle();
                                    double SetOffsetAngle(double OffsetAngle);
                                    neo::uint16 GetWidth();
                                    neo::uint16 GetHeight();
                                    neo::uint16 SetHeight(neo::uint16);
                                    const char* GetLiteral();
                                    const char* SetLiteral(const char* Literal);
                                    neo::uint64 GetFontID();
                                    neo::uint64 SetFontID(neo::uint64 FontID);
                                    style GetFontStyle();
                                    style SetFontStyle(style FontStyle);

                                private:
                                    neo::uint64 ID;
                                    double X;
                                    double Y;
                                    neo::uint16 Width;
                                    neo::uint64 Height;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    neo::string String;
                                    neo::uint64 FontID;
                                    style FontStyle;
                                    SDL_Texture* Texture;
                                    textbox(engine* Engine, actor* Actor, neo::uint64 ID, const char* Literal, neo::uint64 FontID);
                                    ~textbox();
                                    neo::uint8 UpdateTexture();
                            };

                            public:
                                textbox* New(const char* Literal, neo::uint64 FontID);
                                neo::uint8 Delete(neo::uint64 TextboxID);
                                neo::uint8 Purge(std::initializer_list<neo::uint64> KeepTextboxIDs);
                                neo::uint8 Purge(neo::array<neo::uint64>* KeepTextboxIDs);
                                textbox& operator [] (neo::uint64 TextboxID);

                            private:
                                neo::array<textbox*> Textboxes;
                                textboxes(engine* Engine, actor* Actor);
                                ~textboxes();
                        } Textboxes;

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
                                    bool AngleLocked;
                                    bool OffsetAngleLocked;
                                    bool Visible;
                                    neo::uint64 GetID();
                                    neo::uint64 GetType();
                                    neo::uint64 GetActorID();
                                    double GetX();
                                    double SetX(double X);
                                    double GetY();
                                    double SetY(double Y);
                                    double GetOffsetLength();
                                    double SetOffsetLength(double OffsetLength);
                                    double GetOffsetAngle();
                                    double SetOffsetAngle(double OffsetAngle);
                                    neo::uint16 GetWidth();
                                    neo::uint16 SetWidth(neo::uint16 Width);
                                    neo::uint16 GetHeight();
                                    neo::uint16 SetHeight(neo::uint16 Height);
                                    double GetAngle();
                                    double SetAngle(double Angle);
                                    neo::uint16 GetActiveWidth();
                                    neo::uint16 GetActiveHeight();
                                    bool IsOverlappingWith(neo::uint64 ActorID, neo::uint64 OverlapboxID);
                                    neo::uint8 GetOverlapState(neo::array<neo::array<neo::uint64>>* OverlapboxesByActors, std::initializer_list<neo::uint64> ActorTypeWhitelist, std::initializer_list<neo::uint64> ActorIDBlacklist);
                                    neo::uint8 GetOverlapState(neo::array<neo::array<neo::uint64>>* OverlapboxesByActors, neo::array<neo::uint64>* ActorTypeWhitelist, std::initializer_list<neo::uint64> ActorIDBlacklist);
                                    neo::uint8 GetOverlapState(neo::array<neo::array<neo::uint64>>* OverlapboxesByActors, std::initializer_list<neo::uint64> ActorTypeWhitelist, neo::array<neo::uint64>* ActorIDBlacklist);
                                    neo::uint8 GetOverlapState(neo::array<neo::array<neo::uint64>>* OverlapboxesByActors, neo::array<neo::uint64>* ActorTypeWhitelist, neo::array<neo::uint64>* ActorIDBlacklist);
                                    button GetButtonState();

                                private:
                                    neo::uint64 ID;
                                    neo::uint64 Type;
                                    double X;
                                    double Y;
                                    neo::uint16 Width;
                                    neo::uint16 Height;
                                    double Angle;
                                    double OffsetLength;
                                    double OffsetAngle;
                                    neo::uint16 ActiveWidth;
                                    neo::uint16 ActiveHeight;
                                    double ActiveMedianLength;
                                    double ActiveMedian1Angle;
                                    double ActiveMedian2Angle;
                                    button ButtonState;
                                    overlapbox(engine* Engine, actor* Actor, neo::uint64 ID, neo::uint64 Type);
                                    ~overlapbox();
                                    neo::uint8 UpdateOverlapboxActiveScale();
                            };

                            public:
                                overlapbox* New(neo::uint64 Type);
                                neo::uint8 Delete(neo::uint64 OverlapboxID);
                                neo::uint8 Purge(std::initializer_list<neo::uint64> KeepOverlapboxIDs);
                                neo::uint8 Purge(neo::array<neo::uint64>* KeepOverlapboxIDs);
                                overlapbox& operator [] (neo::uint64 OverlapboxID);

                            private:
                                neo::array<overlapbox*> Overlapboxes;
                                overlapboxes(engine* Engine, actor* Actor);
                                ~overlapboxes();
                        } Overlapboxes;

                    //__________Actor______________________________________________________________________________

                        bool Visible;
                        neo::uint64 Force;
                        neo::uint64 Resistance;
                        bool HitboxVisible;
                        neo::uint64 GetID();
                        void* GetData();
                        neo::uint64 GetType();
                        double GetX();
                        double SetX(double X);
                        double GetY();
                        double SetY(double Y);
                        neo::uint16 GetWidth();
                        neo::uint16 SetWidth(neo::uint16 Width);
                        neo::uint16 GetHeight();
                        neo::uint16 SetHeight(neo::uint16 Height);
                        double GetAngle();
                        double SetAngle(double Angle);
                        double GetLayer();
                        double SetLayer(double Layer);
                        double GetDepth();
                        double SetDepth(double Depth);
                        neo::uint8 GetCollisionLayer();
                        neo::uint8 SetCollisionLayer(neo::uint8 CollisionLayer);
                        neo::uint16 GetHitboxWidth();
                        neo::uint16 GetHitboxHeight();

                    private:
                        neo::uint64 ID;
                        void* Data;
                        neo::uint64 Type;
                        double X;
                        double Y;
                        double PrevX;
                        double PrevY;
                        neo::uint16 Width;
                        neo::uint16 Height;
                        double Angle;
                        double Layer;
                        double Depth;
                        neo::uint8 CollisionLayer;
                        neo::uint16 HitboxWidth;
                        neo::uint16 HitboxHeight;
                        neo::uint16 PrevHitboxWidth;
                        neo::uint16 PrevHitboxHeight;
                        double HitboxMedianLength;
                        double HitboxMedian1Angle;
                        double HitboxMedian2Angle;
                        actor(engine* Engine, neo::uint64 ID, void* Data, neo::uint64 Type, double X, double Y, neo::uint16 Width, neo::uint16 Height, double Layer);
                        ~actor();
                        neo::uint8 UpdateHitboxScale();
                        neo::uint8 UpdateMembersPosition();
                };

                //__________Actors_____________________________________________________________________________________

                public:
                    actor* New(void* Data, neo::uint64 Type, double X, double Y, neo::uint16 Width, neo::uint16 Height, double Layer);
                    neo::uint8 Delete(neo::uint64 ActorID);
                    neo::uint8 Purge(std::initializer_list<neo::uint64> KeepActorIDs);
                    neo::uint8 Purge(neo::array<neo::uint64>* KeepActorIDs);
                    actor& operator [] (neo::uint64 ActorID);

                private:
                    neo::array<actor*> Actors;
                    actors(engine* Engine);
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
                    neo::uint8 GetBufferSizeB();
                    neo::uint8 SetBufferSizeB(neo::uint8 Bytes);

                private:
                    neo::uint16 BufferSize;
                    neo::array<neo::array<actors::actor*>> CollisionLayers;
                    collision(engine* Engine);
                    bool CheckOverlap(double Overlapbox1TopLeftX, double Overlapbox1TopLeftY, double Overlapbox1BotRightX, double Overlapbox1BotRightY, actors::actor::overlapboxes::overlapbox* Overlapbox2);
                    bool CheckCollision(double Actor1TopLeftX, double Actor1TopLeftY, double Actor1BotRightX, double Actor1BotRightY, double Actor2TopLeftX, double Actor2TopLeftY, double Actor2BotRightX, double Actor2BotRightY);
                    direction GetCollisionDirection(actors::actor* Actor1, actors::actor* Actor2);
                    bool ResolveCollision(actors::actor* Actor1, neo::uint64 Actor1Force, actors::actor* Actor2);
                    neo::uint8 ResolveCollisionLayer(neo::uint64 CollisionLayer, actors::actor* Caller);
                    neo::uint8 NewCollisionBranch(neo::array<actors::actor*>* Cache, actors::actor* Root, neo::uint64 RootForce, actors::actor* CurrentBranch);
            } Collision;

            //__________Vector_________________________________________________________________________________________

            class vector
            {
                friend class engine;
                engine* Engine;

                public:
                    static double Length(double InitialX, double InitialY, double TerminalX, double TerminalY);
                    static double Angle(double InitialX, double InitialY, double TerminalX, double TerminalY);
                    static double TerminalX(double InitialX, double Length, double Angle);
                    static double TerminalY(double InitialY, double Length, double Angle);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, std::initializer_list<neo::uint64> ActorTypeWhitelist, std::initializer_list<neo::uint64> ActorIDBlacklist, std::initializer_list<neo::uint64> OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, neo::array<neo::uint64>* ActorTypeWhitelist, std::initializer_list<neo::uint64> ActorIDBlacklist, std::initializer_list<neo::uint64> OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, std::initializer_list<neo::uint64> ActorTypeWhitelist, neo::array<neo::uint64>* ActorIDBlacklist, std::initializer_list<neo::uint64> OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, std::initializer_list<neo::uint64> ActorTypeWhitelist, std::initializer_list<neo::uint64> ActorIDBlacklist, neo::array<neo::uint64>* OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, neo::array<neo::uint64>* ActorTypeWhitelist, neo::array<neo::uint64>* ActorIDBlacklist, std::initializer_list<neo::uint64> OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, neo::array<neo::uint64>* ActorTypeWhitelist, std::initializer_list<neo::uint64> ActorIDBlacklist, neo::array<neo::uint64>* OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, std::initializer_list<neo::uint64> ActorTypeWhitelist, neo::array<neo::uint64>* ActorIDBlacklist, neo::array<neo::uint64>* OverlapboxTypeBlacklist);
                    bool RayCast(double InitialX, double InitialY, double TerminalX, double TerminalY, neo::uint16 RaySize, double SamplingStep, neo::array<neo::uint64>* ActorTypeWhitelist, neo::array<neo::uint64>* ActorIDBlacklist, neo::array<neo::uint64>* OverlapboxTypeBlacklist);

                private:
                    vector(engine* Engine);
            } Vector;

            //__________Math___________________________________________________________________________________________

            class math
            {
                friend class engine;
                engine* Engine;

                public:
                    template <typename type> static typename std::enable_if<std::is_arithmetic<type>::value, type>::type Clamp(type Value, type Limit1, type Limit2);
                    static bool Equals(double Value1, double Value2);
                    neo::sint32 Random(neo::sint32 Min, neo::sint32 Max);

                private:
                    math(engine* Engine);
            } Math;

            //__________Assets_________________________________________________________________________________________

            class assets
            {
                friend class engine;
                engine* Engine;

                public:
                    neo::uint64 LoadTexture(const char* TexturePath);
                    neo::uint8 UnloadTexture(neo::uint64 TextureID);
                    neo::uint8 PurgeTextures(std::initializer_list<neo::uint64> KeepTextureIDs);
                    neo::uint8 PurgeTextures(neo::array<neo::uint64>* KeepTextureIDs);
                    neo::uint64 LoadSound(const char* SoundPath);
                    neo::uint8 UnloadSound(neo::uint64 SoundID);
                    neo::uint8 PurgeSounds(std::initializer_list<neo::uint64> KeepSoundIDs);
                    neo::uint8 PurgeSounds(neo::array<neo::uint64>* KeepSoundIDs);
                    neo::uint64 LoadFont(const char* FontPath, neo::uint8 Size);
                    neo::uint8 UnloadFont(neo::uint64 FontID);
                    neo::uint8 PurgeFonts(std::initializer_list<neo::uint64> KeepFontIDs);
                    neo::uint8 PurgeFonts(neo::array<neo::uint64>* KeepFontIDs);
                    neo::uint64 LoadCursorTexture(const char* CursorTexturePath, neo::uint16 HotSpotX, neo::uint16 HotSpotY);
                    neo::uint8 UnloadCursorTexture(neo::uint64 CursorTextureID);
                    neo::uint8 PurgeCursorTextures(std::initializer_list<neo::uint64> KeepCursorTextureIDs);
                    neo::uint8 PurgeCursorTextures(neo::array<neo::uint64>* KeepCursorTextureIDs);

                private:
                    neo::array<SDL_Texture*> Textures;
                    neo::array<Mix_Chunk*> Sounds;
                    neo::array<TTF_Font*> Fonts;
                    neo::array<SDL_Cursor*> CursorTextures;
                    assets(engine* Engine);
            } Assets;

            //__________Timing_________________________________________________________________________________________

            class timing
            {
                friend class engine;
                engine* Engine;

                public:
                    neo::uint8 GetTargetFrameTime();
                    neo::uint8 SetTargetFrameTime(neo::uint8 TargetFrameTime);
                    neo::uint32 GetCurrentTick();
                    neo::uint32 GetGameTime();
                    neo::uint32 GetRenderTime();
                    neo::uint32 GetWorkingTime();
                    neo::sint16 GetIdleTime();
                    neo::uint32 GetFrameTime();
                    neo::uint32 GetMaxDeltaTime();
                    neo::uint32 SetMaxDeltaTime(neo::uint32 MaxDeltaTime);
                    neo::uint32 GetDeltaTime();
                    neo::uint8 Sleep(neo::uint32 Milliseconds);

                private:
                    neo::uint8 TargetFrameTime;
                    neo::uint32 PrevTick;
                    neo::uint32 GameTime;
                    neo::uint32 RenderTime;
                    neo::uint32 WorkingTime;
                    neo::sint16 IdleTime;
                    neo::uint32 FrameTime;
                    neo::uint32 MaxDeltaTime;
                    neo::uint32 DeltaTime;
                    timing(engine* Engine);
                    neo::uint8 Update();
            } Timing;

            //__________Engine_________________________________________________________________________________________

            typedef actors::actor* actor;
            typedef actors::actor::colorboxes::colorbox* colorbox;
            typedef actors::actor::textureboxes::texturebox* texturebox;
            typedef actors::actor::flipbooks::flipbook* flipbook;
            typedef actors::actor::textboxes::textbox* textbox;
            typedef actors::actor::overlapboxes::overlapbox* overlapbox;
            engine(const char* Title, const char* IconPath, neo::uint16 WindowWidth, neo::uint16 WindowHeight, neo::uint8 TargetFrameTime);
            ~engine();
            bool Update();

        private:

            //__________Engine_________________________________________________________________________________________

            neo::array<SDL_Event> EventQueue;
            neo::uint8 UpdateFlipbooks();
            neo::uint8 UpdateOverlapboxes();
    };

    //__________Math___________________________________________________________________________________________

    template <typename type> typename std::enable_if<std::is_arithmetic<type>::value, type>::type engine::math::Clamp(type Value, type Limit1, type Limit2)
    {
        if (Limit1 < Limit2)
        {
            if (Value < Limit1)
            {
                return Limit1;
            }
            else if (Limit2 < Value)
            {
                return Limit2;
            }
        }
        else if (Limit2 < Limit1)
        {
            if (Value < Limit2)
            {
                return Limit2;
            }
            else if (Limit1 < Value)
            {
                return Limit1;
            }
        }

        return Value;
    }
}