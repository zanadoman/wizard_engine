#pragma once

#include "../WizardEngine/WizardEngine.hpp"

using namespace neo;
using namespace wze;

typedef enum
{
    SCENE_MENU
} scene;

typedef enum
{
    ACT_MENU
} actor;

typedef enum
{
    BOX_BUTTON
} overlapbox;

class assets
{
    engine* Engine;

    public:
        uint16 FontFreeSansFont;

        uint16 MapBackgroundTexture;
        uint16 MapBushTexture;
        uint16 MapCrateTexture;
        uint16 MapMountainTexture;
        uint16 MapPlatformTexture;
        uint16 MapShroomTexture;

        array<uint16> PlayerHurtTextures;
        array<uint16> PlayerIdleTextures;
        array<uint16> PlayerRunTextures;
        uint16 PlayerJumpTexture;
        uint16 PlayerFallTexture;

        array<uint16> EagleFlyTextures;
        array<uint16> EagleHurtTextures;

        uint16 BulletShotSound;
        uint16 BulletBaseTexture;
 
        assets(engine* Engine);
};

class menu
{
    engine* Engine;
    assets* Assets;

    public:
        menu(engine* Engine, assets* Assets);
        uint8 Update();

    private:
        uint16 Actor;
        uint16 TitleTextID;
        uint16 ButtonNormalOverlapboxID;
        uint16 ButtonNormalColorID;
        uint16 ButtonNormalTextID;
        uint16 ButtonInfiniteOverlapboxID;
        uint16 ButtonInfiniteColorID;
        uint16 ButtonInfiniteTextID;
};

class game
{
    engine* Engine;
    assets Assets;

    public:
        uint8 Update();
        game(engine* Engine);
        ~game();

    private:
        scene ActiveScene;
        menu* Menu;
};