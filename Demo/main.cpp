#include "demo.hpp"

#undef main

using namespace slay;

typedef enum
{
    PLAYER
} actors;

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 Player = Engine.Actors.New(0);
    //uint64 PlayerText = Engine.Actors[Player].Texts.New();
    uint64 font = Engine.Assets.LoadFont("crazy-pixel.ttf", 48);

    /*Engine.Actors[Player].SetLayer(1);
    Engine.Actors[Player].Texts[PlayerText].SetFont(font);
    Engine.Actors[Player].Texts[PlayerText].Text = {"Hello, World!"};
    Engine.Actors[Player].Texts[PlayerText].Height = 100;*/

    while (Engine.Update())
    {
        
    }

    return 0;
}