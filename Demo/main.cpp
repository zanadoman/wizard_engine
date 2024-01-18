#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 player = Engine.Actors.New();

    Engine.Actors[player].SetX(12);

    printf("Player X: %lf\n", Engine.Actors[player].GetX());

    while (Engine.Update())
    {
        
    }

    return 0;
}