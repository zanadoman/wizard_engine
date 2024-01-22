#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    uint64 Player, PlayerTexture, PlayerText, Background, BackgroundTexture, Texture1, Texture2, Font;
    double PlayerAngle, TextX, TextY;

    engine Engine(NULL, 1920, 1080, 1000 / 165);
    
    Player = Engine.Actors.New(0);
    PlayerTexture = Engine.Actors[Player].Textures.New();
    PlayerText = Engine.Actors[Player].Texts.New();
    Texture1 = Engine.Assets.LoadPNG("test.png");
    Font = Engine.Assets.LoadTTF("crazy-pixel.ttf", 48);
    PlayerAngle = 0;

    Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].Textures[PlayerTexture].SetTextureID(Texture1);
    Engine.Actors[Player].Textures[PlayerTexture].Width = 100;
    Engine.Actors[Player].Textures[PlayerTexture].Height = 100;
    Engine.Actors[Player].Texts[PlayerText].String() = {"Player"};
    Engine.Actors[Player].Texts[PlayerText].SetFont(Font);
    Engine.Actors[Player].Texts[PlayerText].Height = 50;

    Background = Engine.Actors.New(0);
    BackgroundTexture = Engine.Actors[Background].Textures.New();
    Texture2 = Engine.Assets.LoadPNG("back.png");

    Engine.Actors[Background].SetLayer(1);
    Engine.Actors[Background].Textures[BackgroundTexture].SetTextureID(Texture2);
    Engine.Actors[Background].Textures[BackgroundTexture].Width = 1920;
    Engine.Actors[Background].Textures[BackgroundTexture].Height = 1080;
    Engine.Actors[Background].Textures[BackgroundTexture].Priority = 0;

    Engine.Camera.Bind(Player);

    while (Engine.Update())
    {
        if (Engine.Keys.GetState(KEY_LEFT))
        {
            PlayerAngle += 0.2 * Engine.Timing.GetDeltaTime();
        }
        else if (Engine.Keys.GetState(KEY_RIGHT))
        {
            PlayerAngle -= 0.2 * Engine.Timing.GetDeltaTime();
        }
        if (Engine.Keys.GetState(KEY_UP))
        {
            Engine.Vector.Apply(0.5 * Engine.Timing.GetDeltaTime(), PlayerAngle + 90, Player);
        }
        else if (Engine.Keys.GetState(KEY_DOWN))
        {
            Engine.Vector.Apply(-0.5 * Engine.Timing.GetDeltaTime(), PlayerAngle + 90, Player);
        }
        Engine.Vector.Terminal(Engine.Actors[Player].GetX(), Engine.Actors[Player].GetY(), 50, PlayerAngle + 90, &TextX, &TextY);
        Engine.Actors[Player].Texts[PlayerText].OffsetX = TextX - Engine.Actors[Player].GetX();
        Engine.Actors[Player].Texts[PlayerText].OffsetY = TextY - Engine.Actors[Player].GetY();
        Engine.Actors[Player].Texts[PlayerText].Angle = PlayerAngle;
        Engine.Actors[Player].Textures[PlayerTexture].Angle = PlayerAngle;
    }

    return 0;
}