#include "../demo.hpp"

platform::platform(engine* Engine, game* Game, double X, double Y, uint16 Width, uint16 Height, double Layer, uint8 CollisionLayer) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_PLATFORM, X, Y, Width, Height, Layer);
    this->Texture = this->Actor->Textureboxes.New(this->Game->Assets.MapPlatformTexture);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_PLATFORM);

    this->Actor->SetDepth(0.05);
    this->Actor->SetCollisionLayer(CollisionLayer);

    this->Overlapbox->SetWidth(this->Actor->GetWidth() + EPSILON * 2);
    this->Overlapbox->SetHeight(this->Actor->GetHeight() + EPSILON * 2);
}

platform::~platform()
{
    this->Engine->Actors.Delete(this->Actor->GetID());
}