#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine("Demo", 800, 600, 10);

    while (Engine.Update())
    {

    }

    return 0;
}