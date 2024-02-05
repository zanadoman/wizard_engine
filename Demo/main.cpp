/*
**  Collision system
**  Camera smoothing
**  Overlap system
**  Particle system
**  Bloom
**  Networking
*/

#include "demo.hpp"

#undef main

sint32 main()
{
    engine* Engine = new engine(NULL, NULL, 1920, 1080, 1000 / 165);

    background* Background = new background(Engine);
    player* Player = new player(Engine);
    crate* crate1 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate2 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate3 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate4 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate5 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));

    Engine->Camera.Bind(Player->Actor);

    while (Engine->Update())
    {
        Player->Update();

        printf("%d %d %d %d\n", Engine->Timing.GetGameTime(), Engine->Timing.GetRenderTime(), Engine->Timing.GetWorkingTime(), Engine->Timing.GetFrameTime());
    }

    delete crate5;
    delete crate4;
    delete crate3;
    delete crate2;
    delete crate1;
    delete Player;
    delete Background;
    delete Engine;

    return 0;
}