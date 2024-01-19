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

    uint64 Player = Engine.Actors.New(PLAYER);
    uint64 PlayerColor = Engine.Actors[Player].Colors.New();

    Engine.Actors[Player].Colors[PlayerColor].ColorR = 128;
    Engine.Actors[Player].Colors[PlayerColor].ColorG = 255;
    Engine.Actors[Player].Colors[PlayerColor].ColorB = 196;

    Engine.Actors.Delete(Player);

    while (Engine.Update())
    {
        
    }

    return 0;
}