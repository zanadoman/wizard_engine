/*
**Overlap system
**Collision system
**Particle system
**Bloom
**Networking
*/

#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    uint64 Player, PlayerText, Background, BackgroundTexture, Texture1, Texture2, Font;
    uint64 PlayerFlipbook;

    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 PlayerTextures[] = {
        Engine.Assets.LoadTexture("player1.png"),
        Engine.Assets.LoadTexture("player2.png"),
        Engine.Assets.LoadTexture("player3.png"),
        Engine.Assets.LoadTexture("player4.png"),
        Engine.Assets.LoadTexture("player5.png"),
        Engine.Assets.LoadTexture("player6.png")
    };
    
    Player = Engine.Actors.New(0);
    PlayerFlipbook = Engine.Actors[Player].Flipbooks.New({
        PlayerTextures[0],
        PlayerTextures[1],
        PlayerTextures[2],
        PlayerTextures[3],
        PlayerTextures[4],
        PlayerTextures[5]
    });
    Engine.Actors[Player].Flipbooks[PlayerFlipbook].Width = 100;
    Engine.Actors[Player].Flipbooks[PlayerFlipbook].Height = 100;
    Engine.Actors[Player].Flipbooks[PlayerFlipbook].OffsetLocked = true;
    Engine.Actors[Player].Flipbooks[PlayerFlipbook].AngleLocked = true;
    PlayerText = Engine.Actors[Player].Texts.New();
    Font = Engine.Assets.LoadFont("crazy-pixel.ttf", 48);

    Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].SetDepth(0.025);
    *Engine.Actors[Player].Texts[PlayerText].String() = {"Player"};
    Engine.Actors[Player].Texts[PlayerText].SetFont(Font);
    Engine.Actors[Player].Texts[PlayerText].Height = 50;
    Engine.Actors[Player].Texts[PlayerText].SetOffsetY(50);
    Engine.Actors[Player].Texts[PlayerText].OffsetLocked = true;
    Engine.Actors[Player].Texts[PlayerText].AngleLocked = true;

    Background = Engine.Actors.New(0);
    BackgroundTexture = Engine.Actors[Background].Textures.New();
    Texture2 = Engine.Assets.LoadTexture("back.png");

    Engine.Actors[Background].SetLayer(1);
    Engine.Actors[Background].Textures[BackgroundTexture].SetTextureID(Texture2);
    Engine.Actors[Background].Textures[BackgroundTexture].Width = 1280;
    Engine.Actors[Background].Textures[BackgroundTexture].Height = 720;
    Engine.Actors[Background].Textures[BackgroundTexture].Priority = 0;

    Engine.Camera.Bind(Player);

    while (Engine.Update())
    {
        if (Engine.Keys[KEY_LEFT])
        {
            Engine.Actors[Player].SetAngle(Engine.Actors[Player].GetAngle() + 0.2 * Engine.Timing.GetDeltaTime());
        }
        else if (Engine.Keys[KEY_RIGHT])
        {
            Engine.Actors[Player].SetAngle(Engine.Actors[Player].GetAngle() - 0.2 * Engine.Timing.GetDeltaTime());
        }
        if (Engine.Keys[KEY_UP])
        {
            Engine.Actors[Player].SetX(Engine.Vector.TerminalX(Engine.Actors[Player].GetX(), 0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
            Engine.Actors[Player].SetY(Engine.Vector.TerminalY(Engine.Actors[Player].GetY(), 0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
        }
        else if (Engine.Keys[KEY_DOWN])
        {
            Engine.Actors[Player].SetX(Engine.Vector.TerminalX(Engine.Actors[Player].GetX(), -0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
            Engine.Actors[Player].SetY(Engine.Vector.TerminalY(Engine.Actors[Player].GetY(), -0.5 * Engine.Timing.GetDeltaTime(), Engine.Actors[Player].GetAngle() + 90));
        }

        printf("%d %d %d %d\n", Engine.Timing.GetGameTime(), Engine.Timing.GetRenderTime(), Engine.Timing.GetWorkingTime(), Engine.Timing.GetFrameTime());
    }

    return 0;
}