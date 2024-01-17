#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 1920, 1080, 1000 / 165);

    while (Engine.Update())
    {
        printf("WorkingTime: %lldms\n", Engine.Timing.GetWorkingTime());
        printf("IdleTime: %lldms\n", Engine.Timing.GetIdleTime());
        printf("FrameTime: %lldms\n", Engine.Timing.GetFrameTime());
        printf("DeltaTime: %lldms\n", Engine.Timing.GetDeltaTime());
    }

    return 0;
}