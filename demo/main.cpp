#include "demo.hpp"

sint32 main()
{
    engine* Engine;
    game* Game;

    Engine = new engine(NULL, NULL, 1920, 1080, 1000 / 60);
    Game = new game(Engine);

    while (Engine->Update())
    {
        Game->Update();
    }

    delete Game;
    delete Engine;

    return 0;
}