#include "demo.hpp"

#undef main

using namespace slay;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 Player = Engine.Actors.New(0);
    uint64 PlayerText = Engine.Actors[Player].Texts.New();
    uint64 Font = Engine.Assets.LoadTTF("crazy-pixel.ttf");

    Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].SetDepth(0);
    Engine.Actors[Player].Texts[PlayerText].Text = {"Hello, World!"};
    Engine.Actors[Player].Texts[PlayerText].Height = 100;
    Engine.Actors[Player].Texts[PlayerText].SetFont(Font);

    while (Engine.Update())
    {
        if (Engine.Keys.GetState(KEY_LEFT))
        {
            Engine.Actors[Player].SetX(Engine.Actors[Player].GetX() - 0.5 * Engine.Timing.GetDeltaTime());
        }
        else if (Engine.Keys.GetState(KEY_RIGHT))
        {
            Engine.Actors[Player].SetX(Engine.Actors[Player].GetX() + 0.5 * Engine.Timing.GetDeltaTime());
        }
        if (Engine.Keys.GetState(KEY_UP))
        {
            Engine.Actors[Player].SetY(Engine.Actors[Player].GetY() + 0.5 * Engine.Timing.GetDeltaTime());
        }
        else if (Engine.Keys.GetState(KEY_DOWN))
        {
            Engine.Actors[Player].SetY(Engine.Actors[Player].GetY() - 0.5 * Engine.Timing.GetDeltaTime());
        }
    }

    return 0;
}