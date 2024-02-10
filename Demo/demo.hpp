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
    ACT_NONE
} actor;

typedef enum
{
    BOX_NONE
} overlapbox;

class menu;
class normal;
class infinite;

//_________________________________________________________________

class assets
{
    friend class game;
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

    private:
        assets(engine* Engine);
};

class game
{
    friend class pause;
    friend class menu;
    friend class normal;
    friend class infinite;
    engine* Engine;
    assets Assets;

    public:
        uint8 Update();
        game(engine* Engine);
        ~game();

    private:
        scene ActiveScene;
        menu* Menu;
        normal* Normal;
        infinite* Infinite;
        uint8 SwitchScenes(scene Scene);
};

//_________________________________________________________________

class pause
{
    friend class game;
    friend class normal;
    friend class infinite;
    engine* Engine;
    game* Game;

    typedef enum
    {
        NONE,
        PAUSED,
        MENU
    } state;

    public:
        state Update();

    private:
        engine::actor Actor;
        engine::color Frame;
        engine::overlapbox ButtonResume;
        engine::color ButtonResumeColor;
        engine::text ButtonResumeText;
        engine::overlapbox ButtonMenu;
        engine::color ButtonMenuColor;
        engine::text ButtonMenuText;
        pause(engine* Engine, game* Game);
};

//_________________________________________________________________

class menu
{
    friend class game;
    engine* Engine;
    game* Game;

    menu(engine* Engine, game* Game);
    scene Update();

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
    friend class game;
    engine* Engine;
    game* Game;

    pause Pause;
    engine::actor Background;
    engine::texture BackgroundTexture;
    normal(engine* Engine, game* Game);
    scene Update();
};

class infinite
{
    friend class game;
    engine* Engine;
    game* Game;

    pause Pause;
    engine::actor Background;
    engine::texture BackgroundTexture;
    infinite(engine* Engine, game* Game);
    scene Update();
};