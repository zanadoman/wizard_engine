/*
**Overlap system
**Collision system
**Particle system
**Bloom
**Networking
*/

#include "demo.hpp"

#undef main

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    background Background(Engine);
    player Player(Engine);

    Engine.Camera.Bind(Player.Actor);

    while (Engine.Update())
    {
        Player.Update();
    }

    return 0;
}