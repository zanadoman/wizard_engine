#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 165);

    while (Engine.Update())
    {
        printf("Working time: %lldms\n", Engine.Timing.GetFrameTime() - Engine.Timing.GetIdleTime());
        printf("Frametime: %lldms\n", Engine.Timing.GetFrameTime());
    }

    return 0;
}