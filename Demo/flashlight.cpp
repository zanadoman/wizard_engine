#include "demo.hpp"

flashlight::flashlight(engine* Engine) : Engine(Engine)
{
    this->TextureAsset = this->Engine->Assets.LoadTexture("assets/flashlight.png");

    this->Actor = this->Engine->Actors.New(FLASHLIGHT, 0, 0, 3000, 3000, 0);
    //this->Texture = this->Engine->Actors[this->Actor].Textures.New(this->TextureAsset);
    this->Engine->Actors[this->Actor].SetX(this->Engine->Window.GetWidth() >> 1);
    this->Engine->Actors[this->Actor].SetY(this->Engine->Window.GetHeight() >> 1);
}

flashlight::~flashlight()
{
    this->Engine->Assets.UnloadTexture(this->TextureAsset);
    this->Engine->Actors.Delete(this->Actor);
}

uint8 flashlight::Update()
{
    double angle;

    angle = this->Engine->Vector.Angle
    (
        this->Engine->Actors[this->Actor].GetX(),
        this->Engine->Actors[this->Actor].GetY(), 
        this->Engine->Mouse.GetX(0), 
        this->Engine->Mouse.GetY(0)
    );

    if (angle == angle)
    {
        this->Engine->Actors[this->Actor].SetAngle(angle);
    }

    return 0;
}