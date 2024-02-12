#include "../demo.hpp"

normal::normal(engine* Engine, game* Game) : Engine(Engine), Game(Game), Pause(Engine, Game), Stats(Engine, Game)
{
    this->Player = new player(this->Engine, this->Game, 0, 42, 1, 1);
    this->Eagle = new eagle(this->Engine, this->Game, 900, 1, this->Player->Actor, -700, 700);

    this->Platforms =
    {
        new platform(this->Engine, this->Game, 0, -187.5, 1500, 375, 1, 1),
        new platform(this->Engine, this->Game, 0, 162.5, 300, 50, 1, 1),
        new platform(this->Engine, this->Game, -250, 350, 200, 50, 1, 1),
        new platform(this->Engine, this->Game, 0, 537.5, 200, 50, 1, 1),
        new platform(this->Engine, this->Game, 250, 725, 200, 50, 1, 1)
    };

    this->LeftBorder = new border(this->Engine, this->Game, -755, 0, 10, 2000, 1, 1);
    this->RightBorder = new border(this->Engine, this->Game, 755, 0, 10, 2000, 1, 1);
    this->TopBorder = new border(this->Engine, this->Game, 0, 1000, 1520, 10, 1, 1);

    this->Engine->Camera.Bind(this->Player->Actor->GetID());
    this->Engine->Camera.SetOffsetY(-400);

    this->Background = this->Engine->Actors.New(NULL, ACT_NONE, 0, 0, 28800, 16200, 0.1);
    this->BackgroundTexture = this->Background->Textureboxes.New(this->Game->Assets.MapBackgroundTexture);
}

normal::~normal()
{
    delete this->Player;
    delete this->Eagle;
    delete this->LeftBorder;
    delete this->RightBorder;
    delete this->TopBorder;
    for (uint8 i = 0; i < this->Platforms.Length(); i++)
    {
        delete this->Platforms[i];
    }
}

scene normal::Update()
{
    pause::state Pause;

    this->Stats.Update();
    Pause = this->Pause.Update();

    if (Pause == pause::NONE)
    {
        this->Player->Update();
        this->Eagle->Update();
    }
    else if (Pause == pause::MENU)
    {
        return SCENE_MENU;
    }

    return SCENE_NORMAL;
}