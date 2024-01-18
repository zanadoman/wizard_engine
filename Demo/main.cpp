#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 player = Engine.Actors.New();

    while (Engine.Update())
    {
        
    }

    return 0;
}