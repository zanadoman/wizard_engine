#include "demo.hpp"

#undef main

using namespace slay;

typedef enum
{
    ACT_PLAYER
} actors;

class player
{
    public:
        ~player() {printf("destroyed\n");}
};

sint32 main(sint32 argc, char* *argv)
{
    engine Engine(NULL, 1920, 1080, 1000 / 165);

    uint64 Player = Engine.Actors.New(ACT_PLAYER, new player);

    while (Engine.Update())
    {
        
    }

    return 0;
}