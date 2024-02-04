#include "demo.hpp"

background::background(engine* Engine) : Engine(Engine)
{
    this->MainTextureTexture = this->Engine->Assets.LoadTexture("assets/background/back.png");

    this->Actor = this->Engine->Actors.New(BACKGROUND, 0, 0, 1280, 720, 1);
    this->MainTexture = this->Engine->Actors[this->Actor].Textures.New(this->MainTextureTexture);

    this->Engine->Actors[this->Actor].HitboxVisible = true;
}

background::~background()
{
    this->Engine->Assets.UnloadTexture(this->MainTextureTexture);
    this->Engine->Actors.Delete(this->Actor);
}