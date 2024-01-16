#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 60);

    while (Engine.Update())
    {
        printf("%d\n", Engine.DeltaTime());
    }

    return 0;
}