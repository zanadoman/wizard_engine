#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 256, 1000 / 165);

    while (Engine.Update())
    {
        printf("x: %lf, y: %lf\n", Engine.Mouse.GetMotionX(), Engine.Mouse.GetMotionY());
    }

    return 0;
}