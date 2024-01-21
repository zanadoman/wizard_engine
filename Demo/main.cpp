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

    uint64 Sound1 = Engine.Assets.LoadSound("player_fire.wav");
    uint64 Sound2 = Engine.Assets.LoadSound("player_fire.wav");
    uint64 Sound3 = Engine.Assets.LoadSound("player_fire.wav");

    while (Engine.Update())
    {
        
    }

    return 0;
}