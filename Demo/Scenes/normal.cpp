#include "../demo.hpp"

normal::normal(engine* Engine, game* Game) : Engine(Engine), Game(Game), Pause(Engine, Game), Stats(Engine, Game)
{
    this->Player = new player(this->Engine, this->Game, 0, 500, 1, 1);

    this->Background = this->Engine->Actors.New(NULL, ACT_NONE, 0, 0, 28800, 16200, 0.1);
    this->BackgroundTexture = this->Background->Textures.New(this->Game->Assets.MapBackgroundTexture);

    this->Platforms =
    {
        new platform(this->Engine, this->Game, 0, -500, 1500, 375, 1, 1),
        new platform(this->Engine, this->Game, 0, -150, 300, 50, 1, 1),
        new platform(this->Engine, this->Game, -250, 37.5, 200, 50, 1, 1),
        new platform(this->Engine, this->Game, 0, 225, 200, 50, 1, 1),
        new platform(this->Engine, this->Game, 250, 412.5, 200, 50, 1, 1)
    };

    this->Engine->Camera.Bind(this->Player->Actor->GetID());
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