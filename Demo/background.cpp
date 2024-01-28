#include "demo.hpp"

background::background(engine& Engine) : Engine(Engine)
{
    this->MainTextureTexture = this->Engine.Assets.LoadTexture("assets/background/back.png");

    this->Actor = this->Engine.Actors.New(BACKGROUND);
    this->MainTexture = this->Engine.Actors[this->Actor].Textures.New();

    this->Engine.Actors[this->Actor].SetLayer(1);

    this->Engine.Actors[this->Actor].Textures[this->MainTexture].Width = 1280;
    this->Engine.Actors[this->Actor].Textures[this->MainTexture].Height = 720;
    this->Engine.Actors[this->Actor].Textures[this->MainTexture].SetTextureID(this->MainTextureTexture);
}

background::~background()
{
    this->Engine.Assets.UnloadTexture(this->MainTextureTexture);
    this->Engine.Actors.Delete(this->Actor);
}