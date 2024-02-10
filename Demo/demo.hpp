#pragma once

#include "../WizardEngine/WizardEngine.hpp"

using namespace neo;
using namespace wze;

typedef enum
{
    SCENE_MENU,
    SCENE_NORMAL,
    SCENE_INFINITE
} scene;

typedef enum
{
    ACT_MENU,
    ACT_DECOR
} actor;

typedef enum
{
    BOX_BUTTON
} overlapbox;

class assets;
class game;
class menu;
class normal;
class infinite;

class game
{
    friend class menu;
    engine* Engine;

    public:
        uint8 Update();
        game(engine* Engine);
        ~game();

    private:
        assets* Assets;
        scene ActiveScene;
        menu* Menu;
        normal* Normal;
        infinite* Infinite;
};

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
    game* Game;

    public:
        menu(engine* Engine, game* Game);
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

class normal
{
    engine* Engine;
    game* Game;

    public:
        normal(engine* Engine, game* Game);

    private:
        engine::actor Background;
        engine::texture BackgroundTexture;
};

class infinite
{
    
};