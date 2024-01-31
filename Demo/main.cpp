/*
**ahol meglehet adni initializer listet ott arrayt is lehessen
**Overlap system
**Collision system
**Particle system
**Bloom
**Networking
*/

#include "demo.hpp"

#undef main

sint32 main()
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    background Background(Engine);
    player Player(Engine);

    Engine.Camera.Bind(Player.Actor);

    while (Engine.Update())
    {
        Player.Update();

        printf("%d %d %d %d\n", Engine.Timing.GetGameTime(), Engine.Timing.GetRenderTime(), Engine.Timing.GetWorkingTime(), Engine.Timing.GetFrameTime());
    }

    return 0;
}