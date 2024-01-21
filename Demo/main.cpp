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

    printf("removing 1\n");
    Engine.Assets.UnloadSound(Sound1);
    printf("removing 2\n");
    Engine.Assets.UnloadSound(Sound2);
    printf("removing 3\n");
    Engine.Assets.UnloadSound(Sound3);

    while (Engine.Update())
    {
        
    }

    return 0;
}