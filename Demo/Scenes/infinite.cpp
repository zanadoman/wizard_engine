#include "../demo.hpp"

infinite::infinite(engine* Engine, game* Game) : Engine(Engine), Game(Game), Pause(Engine, Game), Stats(Engine, Game)
{
    this->Background = this->Engine->Actors.New(NULL, ACT_NONE, 0, 0, 19200, 10800, 0.1);
    this->BackgroundTexture = this->Background->Textureboxes.New(this->Game->Assets.MapBackgroundTexture);
}

scene infinite::Update()
{
    pause::state Pause;

    this->Stats.Update();
    Pause = this->Pause.Update();

    if (Pause == pause::NONE)
    {
        
    }
    else if (Pause == pause::MENU)
    {
        return SCENE_MENU;
    }

    return SCENE_INFINITE;
}