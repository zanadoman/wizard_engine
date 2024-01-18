#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 1000 / 165);

    int a = 10;
    int b = 20;

    while (Engine.Update())
    {
        a = b >> 1;
        printf("%d\n", a);
    }

    return 0;
}