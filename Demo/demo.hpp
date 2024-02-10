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
        engine::actor Actor;
        engine::text Title;
        engine::overlapbox ButtonNormal;
        engine::color ButtonNormalColor;
        engine::text ButtonNormalText;
        engine::overlapbox ButtonInfinite;
        engine::color ButtonInfiniteColor;
        engine::text ButtonInfiniteText;
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