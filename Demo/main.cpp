#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    uint64 Player, PlayerTexture, Texture;

    engine Engine(NULL, 1920, 1080, 1000 / 165);
    
    Player = Engine.Actors.New(0);
    PlayerTexture = Engine.Actors[Player].Textures.New();
    Texture = Engine.Assets.LoadPNG("test.png");

    Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].SetDepth(0.02);
    Engine.Actors[Player].Textures[PlayerTexture].SetTextureID(Texture);
    Engine.Actors[Player].Textures[PlayerTexture].Width = 100;
    Engine.Actors[Player].Textures[PlayerTexture].Height = 100;

    while (Engine.Update())
    {
        if (Engine.Keys.GetState(KEY_LEFT))
        {
            Engine.Actors[Player].SetX(Engine.Actors[Player].GetX() - 0.5 * Engine.Timing.GetDeltaTime());
            Engine.Actors[Player].Textures[PlayerTexture].FlipHorizontal = true;
        }
        else if (Engine.Keys.GetState(KEY_RIGHT))
        {
            Engine.Actors[Player].SetX(Engine.Actors[Player].GetX() + 0.5 * Engine.Timing.GetDeltaTime());
            Engine.Actors[Player].Textures[PlayerTexture].FlipHorizontal = false;
        }
        if (Engine.Keys.GetState(KEY_UP))
        {
            Engine.Actors[Player].SetY(Engine.Actors[Player].GetY() + 0.5 * Engine.Timing.GetDeltaTime());
        }
        else if (Engine.Keys.GetState(KEY_DOWN))
        {
            Engine.Actors[Player].SetY(Engine.Actors[Player].GetY() - 0.5 * Engine.Timing.GetDeltaTime());
        }
    }

    return 0;
}