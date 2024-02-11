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
    ACT_NONE,
    ACT_PLAYER,
    ACT_PLATFORM
} actor;

typedef enum
{
    BOX_NONE,
    BOX_PLAYER,
    BOX_PLATFORM
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

        array<uint64> PlayerHurtTextures;
        array<uint64> PlayerIdleTextures;
        array<uint64> PlayerRunTextures;
        uint16 PlayerJumpTexture;
        uint16 PlayerFallTexture;

        array<uint64> EagleFlyTextures;
        array<uint64> EagleHurtTextures;

        uint16 BulletShotSound;
        uint16 BulletBaseTexture;

    private:
        assets(engine* Engine);
};

class game
{
    friend class player;
    friend class platform;
    friend class pause;
    friend class stats;
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

class player
{
    friend class normal;
    friend class infinite;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::overlapbox Overlapbox;
    engine::flipbook Idle;
    engine::flipbook Run;
    engine::flipbook Hurt;
    engine::texturebox Fall;
    engine::texturebox Jump;
    double VelocityX;
    double VelocityY;
    player(engine* Engine, game* Game, double X, double Y, double Layer, double CollisionLayer);
    uint8 Update();
};

class platform
{
    friend class normal;
    friend class infinite;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::overlapbox Overlapbox;
    engine::texturebox Texture;
    platform(engine* Engine, game* Game, double X, double Y, uint16 Width, uint16 Height, double Layer, uint8 CollisionLayer);
};

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

    engine::actor Actor;
    engine::color Frame;
    engine::overlapbox ButtonResume;
    engine::color ButtonResumeColor;
    engine::text ButtonResumeText;
    engine::overlapbox ButtonMenu;
    engine::color ButtonMenuColor;
    engine::text ButtonMenuText;
    pause(engine* Engine, game* Game);
    state Update();
};

class stats
{
    friend class normal;
    friend class infinite;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::text GameTime;
    engine::text RenderTime;
    engine::text FrameTime;
    stats(engine* Engine, game* Game);
    uint8 Update();
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
    stats Stats;
    player* Player;
    engine::actor Background;
    engine::texturebox BackgroundTexture;
    array<platform*> Platforms;
    normal(engine* Engine, game* Game);
    ~normal();
    scene Update();
};

class infinite
{
    friend class game;
    engine* Engine;
    game* Game;

    pause Pause;
    stats Stats;
    engine::actor Background;
    engine::texturebox BackgroundTexture;
    infinite(engine* Engine, game* Game);
    scene Update();
};