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

    Engine.Vector.Apply(5, 810, Player);

    while (Engine.Update())
    {
        printf("x: %lf, y: %lf\n", Engine.Mouse.GetX(1), Engine.Mouse.GetY(1));
    }

    return 0;
}