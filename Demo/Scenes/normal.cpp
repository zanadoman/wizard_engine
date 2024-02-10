#include "../demo.hpp"

normal::normal(engine* Engine, game* Game) : Engine(Engine), Game(Game)
{
    this->Background = this->Engine->Actors.New(NULL, ACT_DECOR, 0, 0, 19200, 10800, 0.1);
    this->BackgroundTexture = this->Background->Textures.New(this->Game->Assets.MapBackgroundTexture);
}

scene normal::Update()
{
    return SCENE_NORMAL;
}