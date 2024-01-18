#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 1000 / 165);

    while (Engine.Update())
    {
        printf("X: %lf, Y: %lf\n", Engine.Mouse.GetX(1), Engine.Mouse.GetY(1));
    }

    return 0;
}