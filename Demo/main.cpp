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
    player* Player1 = new player(Engine, KEY_UP, KEY_DOWN, KEY_LEFT, KEY_RIGHT);
    player* Player2 = new player(Engine, KEY_W, KEY_S, KEY_A, KEY_D);
    flashlight* Flashlight = new flashlight(Engine);
    crate* crate1 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate2 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate3 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate4 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate5 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));

    Engine->Camera.Bind(Player2->Actor);

    while (Engine->Update())
    {
        Player1->Update();
        Player2->Update();
        Flashlight->Update();

        printf("%d %d %d %d\n", Engine->Timing.GetGameTime(), Engine->Timing.GetRenderTime(), Engine->Timing.GetWorkingTime(), Engine->Timing.GetFrameTime());
    }

    delete crate5;
    delete crate4;
    delete crate3;
    delete crate2;
    delete crate1;
    delete Flashlight;
    delete Player2;
    delete Player1;
    delete Background;
    delete Engine;

    return 0;
}