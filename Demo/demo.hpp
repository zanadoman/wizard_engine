#pragma once

#include "../WizardEngine/WizardEngine.hpp"

using namespace neo;
using namespace wze;

typedef enum
{
    BACKGROUND,
    PLAYER,
    CRATE,
    FLASHLIGHT
} ACTORS;

typedef enum
{
    PLAYERTEXT,
} OVERLAPBOXES;

class background
{
    engine* Engine;

    public:
        uint64 Actor;
        background(engine* Engine);
        ~background();

    private:
        uint64 MainTexture;
        uint64 MainTextureTexture;
};

class player
{
    engine* Engine;

    public:
        uint64 Actor;
        uint64 TextOverlapBox;
        player(engine* Engine, key Forward, key Backward, key Left, key Right);
        ~player();
        uint8 Update();

    private:
        key Forward;
        key Backward;
        key Left;
        key Right;
        uint64 MainFlipbook;
        array<uint64> MainFlipbookTextures;
        uint64 NameText;
        uint64 NameTextFont;
};

class crate
{
    engine* Engine;

    public:
        uint64 Actor;
        crate(engine* Engine, double X, double Y, uint16 Width, uint16 Height);
        ~crate();
    
    private:
        uint64 Texture;
        uint64 TextureAsset;
};

class flashlight
{
    engine* Engine;
    player* Player;

    public:
        uint64 Actor;
        flashlight(engine* Engine);
        ~flashlight();
        uint8 Update();

    private:
        uint64 Texture;
        uint64 TextureAsset;
};