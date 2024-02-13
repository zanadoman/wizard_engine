#include "demo.hpp"

assets::assets(engine* Engine) : Engine(Engine)
{
    this->FontFreeSansFont = this->Engine->Assets.LoadFont("assets/font/Hack-Regular.ttf", 72);

    this->MapBackgroundTexture = this->Engine->Assets.LoadTexture("assets/map/background.png");
    this->MapBushTexture = this->Engine->Assets.LoadTexture("assets/map/bush.png");
    this->MapCrateTexture = this->Engine->Assets.LoadTexture("assets/map/crate.png");
    this->MapMountainTexture = this->Engine->Assets.LoadTexture("assets/map/mountain.png");
    this->MapPlatformTexture = this->Engine->Assets.LoadTexture("assets/map/platform.png");
    this->MapShroomTexture = this->Engine->Assets.LoadTexture("assets/map/shroom.png");

    this->PlayerHurtTextures =
    {
        (uint16)this->Engine->Assets.LoadTexture("assets/player/hurt/hurt1.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/player/hurt/hurt2.png")
    };
    this->PlayerIdleTextures =
    {
        (uint16)this->Engine->Assets.LoadTexture("assets/player/idle/idle1.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/player/idle/idle2.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/player/idle/idle3.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/player/idle/idle4.png")
    };
    this->PlayerRunTextures =
    {
          (uint16)this->Engine->Assets.LoadTexture("assets/player/run/run1.png"),
          (uint16)this->Engine->Assets.LoadTexture("assets/player/run/run2.png"),
          (uint16)this->Engine->Assets.LoadTexture("assets/player/run/run3.png"),
          (uint16)this->Engine->Assets.LoadTexture("assets/player/run/run4.png"),
          (uint16)this->Engine->Assets.LoadTexture("assets/player/run/run5.png"),
          (uint16)this->Engine->Assets.LoadTexture("assets/player/run/run6.png")
    };
    this->PlayerFallTexture = this->Engine->Assets.LoadTexture("assets/player/fall.png");
    this->PlayerJumpTexture = this->Engine->Assets.LoadTexture("assets/player/jump.png");

    this->EagleFlyTextures =
    {
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/fly/fly1.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/fly/fly2.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/fly/fly3.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/fly/fly4.png")
    };
    this->EagleHurtTextures =
    {
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/hurt/hurt1.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/hurt/hurt2.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/hurt/hurt3.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/hurt/hurt4.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/hurt/hurt5.png"),
        (uint16)this->Engine->Assets.LoadTexture("assets/eagle/hurt/hurt6.png"),
    };

    this->BulletBaseTexture = this->Engine->Assets.LoadTexture("assets/bullet/base.png");
    this->BulletShotSound = this->Engine->Assets.LoadSound("assets/bullet/shot.mp3");
}

assets::~assets()
{
    this->Engine->Assets.PurgeTextures({});
    this->Engine->Assets.PurgeSounds({});
    this->Engine->Assets.PurgeFonts({});
    this->Engine->Assets.PurgeCursorTextures({});
}