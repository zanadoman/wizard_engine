#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 60);

    while (Engine.Update())
    {
        printf("LMB: %d\n", Engine.KeyState(slay::KEY_LMB));
        printf("MMB: %d\n", Engine.KeyState(slay::KEY_MMB));
        printf("RMB: %d\n", Engine.KeyState(slay::KEY_RMB));
    }

    return 0;
}