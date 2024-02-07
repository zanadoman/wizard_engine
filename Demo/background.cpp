#include "demo.hpp"

background::background(engine* Engine) : Engine(Engine)
{
    this->MainTextureTexture = this->Engine->Assets.LoadTexture("assets/background/back.png");

    this->Actor = this->Engine->Actors.New(this, BACKGROUND, 0, 0, 1920, 1080, 0.8);
    this->MainTexture = this->Engine->Actors[this->Actor].Textures.New(this->MainTextureTexture);
}

background::~background()
{
    this->Engine->Assets.UnloadTexture(this->MainTextureTexture);
    this->Engine->Actors.Delete(this->Actor);
}