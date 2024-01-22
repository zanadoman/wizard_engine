#include "demo.hpp"

#undef main

using namespace slay;

typedef enum
{
    PLAYER
} actors;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 Player = Engine.Actors.New(0);
    uint64 PlayerTexture = Engine.Actors[Player].Textures.New();
    uint64 img = Engine.Assets.LoadTexture("test.png");

    Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].Textures[PlayerTexture].SetTextureID(img);
    Engine.Actors[Player].Textures[PlayerTexture].Width = 100;
    Engine.Actors[Player].Textures[PlayerTexture].Height = 100;

    while (Engine.Update())
    {
        
    }

    return 0;
}