/*
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

    //button state;

    background* Background = new background(Engine);
    player* Player1 = new player(Engine, KEY_UP, KEY_DOWN, KEY_LEFT, KEY_RIGHT);
    player* Player2 = new player(Engine, KEY_W, KEY_S, KEY_A, KEY_D);
    flashlight* Flashlight = new flashlight(Engine);
    crate* crate1 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate2 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate3 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate4 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));
    crate* crate5 = new crate(Engine, Engine->Random(-500, 500), Engine->Random(-500, 500), Engine->Random(50, 150), Engine->Random(50, 150));

    Engine->Camera.Bind(Player1->Actor);
    Engine->Camera.Smoothing = true;
    Engine->Camera.SetMinSpeedX(0.2);
    Engine->Camera.SetMaxSpeedX(0.5);
    Engine->Camera.SetDecelerationRateX(0.001);
    Engine->Camera.SetAccelerationRateX(0.0002);
    Engine->Camera.SetSlowDownRangeX(100);
    Engine->Camera.SetMinSpeedY(0.2);
    Engine->Camera.SetMaxSpeedY(0.5);
    Engine->Camera.SetDecelerationRateY(0.001);
    Engine->Camera.SetAccelerationRateY(0.0002);
    Engine->Camera.SetSlowDownRangeY(100);

    Engine->Audio.Play(Engine->Assets.LoadSound("assets/ara_ara.mp3"), 1, 1);

    while (Engine->Update())
    {
        Player1->Update();
        Player2->Update();
        Flashlight->Update();

        //state = Engine->Actors[Player1->Actor].Overlapboxes[Player1->TextOverlapBox].GetButtonState();
        //printf("%d%d %d%d %d%d\n", (state & BTN_PRESSED_LMB) == BTN_PRESSED_LMB, (state & BTN_RELEASED_LMB) == BTN_RELEASED_LMB, (state & BTN_PRESSED_MMB) == BTN_PRESSED_MMB, (state & BTN_RELEASED_MMB) == BTN_RELEASED_MMB, (state & BTN_PRESSED_RMB) == BTN_PRESSED_RMB, (state & BTN_RELEASED_RMB) == BTN_RELEASED_RMB);
        //printf("%d %d %d %d\n", Engine->Timing.GetGameTime(), Engine->Timing.GetRenderTime(), Engine->Timing.GetWorkingTime(), Engine->Timing.GetFrameTime());
        printf("%d\n", Engine->Vector.RayCast(Engine->Actors[Player1->Actor].GetX(), Engine->Actors[Player1->Actor].GetY(), Engine->Actors[Player2->Actor].GetX(), Engine->Actors[Player2->Actor].GetY(), 1, 1, {CRATE}, {}, {}));
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