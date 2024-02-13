#pragma once

#include "../../src/WizardEngine.hpp"

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
    ACT_EAGLE,
    ACT_BULLET,
    ACT_PLATFORM,
    ACT_BORDER
} actor;

typedef enum
{
    BOX_NONE,
    BOX_PLAYER,
    BOX_EAGLE,
    BOX_BULLET,
    BOX_PLATFORM,
    BOX_BORDER
} overlapbox;

class assets;
class game;
class player;
class eagle;
class bullet;
class platform;
class border;
class pause;
class stats;
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
        ~assets();
};

class game
{
    engine* Engine;

    public:
        assets Assets;
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
    friend class bullet;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::overlapbox Overlapbox;
    engine::flipbook Idle;
    engine::flipbook Run;
    engine::flipbook Hurt;
    engine::texturebox Fall;
    engine::texturebox Jump;
    bool Alive;
    sint8 Facing;
    double VelocityX;
    double VelocityY;
    uint32 PrevShotTick;
    array<bullet*> Bullets;
    player(engine* Engine, game* Game, double X, double Y, double Layer, double CollisionLayer);
    ~player();
    uint8 Update();
};

class eagle
{
    friend class normal;
    friend class infinite;
    friend class bullet;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::overlapbox Overlapbox;
    engine::flipbook Fly;
    engine::flipbook Hurt;
    engine::actor Target;
    bool Alive;
    double Facing;
    double MinX;
    double MaxX;
    uint32 PrevShotTick;
    array<bullet*> Bullets;
    eagle(engine* Engine, game* Game, double Y, double Layer, engine::actor Target, double MinX, double MaxX);
    ~eagle();
    uint8 Update();
};

class bullet
{
    friend class normal;
    friend class infinite;
    friend class player;
    friend class eagle;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::overlapbox Overlapbox;
    engine::texturebox Texture;
    uint64 ParentID;
    actor ParentType;
    bullet(engine* Engine, game* Game, double X, double Y, double Layer, uint64 ParentID, actor ParentType, double Angle);
    ~bullet();
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
    ~platform();
};

class border
{
    friend class normal;
    friend class infinite;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::overlapbox Overlapbox;
    border(engine* Engine, game* Game, double X, double Y, uint16 Width, uint16 Height, double Layer, uint8 CollisionLayer);
    ~border();
};

class pause
{
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
    engine::colorbox Frame;
    engine::overlapbox ButtonResume;
    engine::colorbox ButtonResumeColor;
    engine::textbox ButtonResumeText;
    engine::overlapbox ButtonMenu;
    engine::colorbox ButtonMenuColor;
    engine::textbox ButtonMenuText;
    pause(engine* Engine, game* Game);
    ~pause();
    state Update();
};

class stats
{
    friend class normal;
    friend class infinite;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::textbox GameTime;
    engine::textbox RenderTime;
    engine::textbox FrameTime;
    stats(engine* Engine, game* Game);
    ~stats();
    uint8 Update();
};

//_________________________________________________________________

class menu
{
    friend class game;
    engine* Engine;
    game* Game;

    engine::actor Actor;
    engine::textbox Title;
    engine::overlapbox ButtonNormal;
    engine::colorbox ButtonNormalColor;
    engine::textbox ButtonNormalText;
    engine::overlapbox ButtonInfinite;
    engine::colorbox ButtonInfiniteColor;
    engine::textbox ButtonInfiniteText;
    menu(engine* Engine, game* Game);
    ~menu();
    scene Update();
};

class normal
{
    friend class game;
    engine* Engine;
    game* Game;

    pause Pause;
    stats Stats;
    player* Player;
    eagle* Eagle;
    array<platform*> Platforms;
    border* LeftBorder;
    border* RightBorder;
    border* TopBorder;
    engine::actor Background;
    engine::texturebox BackgroundTexture;
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
    ~infinite();
    scene Update();
};