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

    array<uint64> test;
    for (uint8 i = 0; i < 30; i++)
    {
        test += {Engine.Actors[Player].Colors.New(), Engine.Actors[Player].Textures.New(), Engine.Actors[Player].Texts.New()};

        Engine.Actors[Player].Colors[test.Length() - 3].Layer = Engine.Random(0, 255);
        Engine.Actors[Player].Colors[test.Length() - 3].Priority = Engine.Random(0, 255);
        Engine.Actors[Player].Textures[test.Length() - 2].Layer = Engine.Random(0, 255);
        Engine.Actors[Player].Textures[test.Length() - 2].Priority = Engine.Random(0, 255);
        Engine.Actors[Player].Texts[test.Length() - 1].Layer = Engine.Random(0, 255);
        Engine.Actors[Player].Texts[test.Length() - 1].Priority = Engine.Random(0, 255);
    }

    while (Engine.Update())
    {
        exit(0);
    }

    return 0;
}