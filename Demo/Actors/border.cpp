#include "../demo.hpp"

border::border(engine* Engine, game* Game, double X, double Y, uint16 Width, uint16 Height, double Layer, uint8 CollisionLayer) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_BORDER, X, Y, Width, Height, Layer);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_BORDER);
    
    this->Actor->Resistance = 1000;
    this->Actor->SetCollisionLayer(CollisionLayer);

    this->Overlapbox->SetWidth(this->Actor->GetWidth() + EPSILON * 2);
    this->Overlapbox->SetHeight(this->Actor->GetHeight() + EPSILON * 2);
}

border::~border()
{
    this->Engine->Actors.Delete(this->Actor->GetID());    
}