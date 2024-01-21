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

    uint64 Player = Engine.Actors.New(PLAYER);
    uint64 IdleTexture = Engine.Assets.LoadTexture("test.png");
    uint64 PlayerTexture = Engine.Actors[Player].Textures.New();

    Engine.Actors[Player].Textures[PlayerTexture].SetTextureID(IdleTexture);

    while (Engine.Update())
    {
        
    }

    return 0;
}