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

    Engine->Camera.Bind(Player->Actor);

    while (Engine->Update())
    {
        Player->Update();

        //Engine->Collision.CheckCollision(&Engine->Actors[Player->Actor], &Engine->Actors[Background->Actor]);

        printf("%d %d %d %d\n", Engine->Timing.GetGameTime(), Engine->Timing.GetRenderTime(), Engine->Timing.GetWorkingTime(), Engine->Timing.GetFrameTime());
    }

    delete Background;
    delete Player;
    delete Engine;

    return 0;
}