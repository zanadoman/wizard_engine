#pragma once

#include "../SlayEngine/SlayEngine.hpp"

using namespace slay;

typedef enum
{
    BACKGROUND,
    PLAYER
} ACTORS;

class background
{
    engine& Engine;

    public:
        uint64 Actor;
        background(engine& Engine);
        ~background();

    private:
        uint64 MainTexture;
        uint64 MainTextureTexture;
};

class player
{
    engine& Engine;

    public:
        uint64 Actor;
        player(engine& Engine);
        ~player();
        uint8 Update();

    private:
        uint64 MainFlipbook;
        array<uint64> MainFlipbookTextures;
        uint64 NameText;
        uint64 NameTextFont;
};