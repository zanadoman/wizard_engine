#pragma once

#include "../WizardEngine/WizardEngine.hpp"

using namespace neo;
using namespace wze;

class assets
{
    engine* Engine;

    public:
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

class game
{
    engine* Engine;
    assets Assets;

    public:
        uint8 Update();
        game(engine* Engine);
        ~game();

    private:
};