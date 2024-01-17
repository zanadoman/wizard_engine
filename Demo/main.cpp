#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 800, 600, 60);

    while (Engine.Update())
    {
        printf("%d %d\n", Engine.Mouse.X(), Engine.Mouse.Y());
    }

    return 0;
}