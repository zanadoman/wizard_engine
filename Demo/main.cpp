#include "demo.hpp"

//Render queueben new ellenőrzése
//layer render border, alpha 0 akkor se render

#undef main

using namespace slay;

typedef enum
{
    PLAYER
} actors;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    while (Engine.Update())
    {
        exit(0);
    }

    return 0;
}