#include "demo.hpp"

crate::crate(engine* Engine, double X, double Y, uint16 Width, uint16 Height) : Engine(Engine)
{
    this->TextureAsset = this->Engine->Assets.LoadTexture("assets/crate.png");

    this->Actor = this->Engine->Actors.New(this, CRATE, X, Y, Width, Height, 1);
    this->Texture = this->Engine->Actors[this->Actor].Textures.New(this->TextureAsset);

    this->Engine->Actors[this->Actor].Resistance = 50;
    this->Engine->Actors[this->Actor].SetDepth(0.05);
    this->Engine->Actors[this->Actor].SetCollisionLayer(1);
}

crate::~crate()
{
    this->Engine->Assets.UnloadTexture(this->TextureAsset);
    this->Engine->Actors.Delete(this->Actor);
}