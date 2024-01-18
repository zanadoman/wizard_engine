#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 1000 / 165);

    uint64 PlayerFiringSound = Engine.Assets.LoadSound("player_fire.wav");

    while (Engine.Update())
    {

    }

    return 0;
}