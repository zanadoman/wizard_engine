#include "../demo.hpp"

normal::normal(engine* Engine, game* Game) : Engine(Engine), Game(Game), Pause(Engine, Game), Stats(Engine, Game)
{
    this->Player = new player(this->Engine, this->Game, 0, 500, 1, 1);

    this->Background = this->Engine->Actors.New(NULL, ACT_NONE, 0, 0, 19200, 10800, 0.1);
    this->BackgroundTexture = this->Background->Textures.New(this->Game->Assets.MapBackgroundTexture);

    this->Platforms =
    {
        new platform(this->Engine, this->Game, 0, -200, 1000, 400, 1, 1),
        new platform(this->Engine, this->Game, 0, 100, 50, 30, 1, 1),
        new platform(this->Engine, this->Game, -150, 200, 50, 30, 1, 1),
        new platform(this->Engine, this->Game, 0, 400, 50, 30, 1, 1),
        new platform(this->Engine, this->Game, 150, 600, 50, 30, 1, 1)
    };
}

normal::~normal()
{
    for (uint8 i = 0; i < this->Platforms.Length(); i++)
    {
        delete this->Platforms[i];
    }

    delete this->Player;
}

scene normal::Update()
{
    pause::state Pause;

    this->Stats.Update();
    Pause = this->Pause.Update();

    if (Pause == pause::NONE)
    {
        this->Player->Update();
    }
    else if (Pause == pause::MENU)
    {
        return SCENE_MENU;
    }

    return SCENE_NORMAL;
}