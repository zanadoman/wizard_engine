#include "../demo.hpp"

eagle::eagle(engine* Engine, game* Game, double Y, double Layer, engine::actor Target, double MinX, double MaxX) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_EAGLE, (MinX + MaxX) / 2, Y, 105, 105, Layer);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_EAGLE);
    this->Fly = this->Actor->Flipbooks.New(125, &this->Game->Assets.EagleFlyTextures);
    this->Hurt = this->Actor->Flipbooks.New(125, &this->Game->Assets.EagleHurtTextures);
    this->Target = Target;
    this->MinX = MinX;
    this->MaxX = MaxX;
    this->Facing = 1;
    this->PrevShotTick = this->Engine->Timing.GetCurrentTick();

    this->Overlapbox->SetWidth(this->Actor->GetWidth() + EPSILON * 2);
    this->Overlapbox->SetHeight(this->Actor->GetHeight() + EPSILON * 2);

    this->Fly->Width = 125;
    this->Fly->Height = 125;
    this->Fly->FlipHorizontal = true;

    this->Hurt->Width = 125;
    this->Hurt->Height = 125;
    this->Hurt->Visible = false;
}

eagle::~eagle()
{
    for (uint64 i = 0; i < this->Bullets.Length(); i++)
    {
        delete this->Bullets[i];
    }
    this->Engine->Actors.Delete(this->Actor->GetID());
}

uint8 eagle::Update()
{
    double cache;

    if (this->Actor->GetX() < this->MinX)
    {
        this->Actor->SetX(this->MinX);
        this->Facing = 1;
        this->Fly->FlipHorizontal = true;
    }
    else if (this->MaxX < this->Actor->GetX())
    {
        this->Actor->SetX(this->MaxX);
        this->Facing = -1;
        this->Fly->FlipHorizontal = false;
    }

    this->Actor->SetX(this->Actor->GetX() + 0.25 * this->Facing * this->Engine->Timing.GetDeltaTime());

    cache = this->Engine->Vector.Angle(this->Actor->GetX(), this->Actor->GetY(), this->Target->GetX(), this->Target->GetY());

    if (this->PrevShotTick + 200 < this->Engine->Timing.GetCurrentTick() && ((Facing == 1 && (cache <= 90 || 270 < cache)) || (Facing == -1 && cache <= 270 && 90 < cache)) && this->Engine->Vector.Length(this->Actor->GetX(), this->Actor->GetY(), this->Target->GetX(), this->Target->GetY()) < 500 && this->Engine->Vector.RayCast(this->Actor->GetX(), this->Actor->GetY(), this->Target->GetX(), this->Target->GetY(), 1, 1, {ACT_EAGLE, ACT_PLATFORM, ACT_BORDER}, {this->Actor->GetID()}, {}))
    {
        this->Bullets += {new bullet(this->Engine, this->Game, this->Actor->GetX(), this->Actor->GetY(), this->Actor->GetLayer(), this->Actor->GetID(), (actor)this->Actor->GetType(), this->Engine->Vector.Angle(this->Actor->GetX(), this->Actor->GetY(), this->Target->GetX(), this->Target->GetY()))};
        this->PrevShotTick = this->Engine->Timing.GetCurrentTick();
    }

    for (uint64 i = 0; i < this->Bullets.Length(); i++)
    {
        if (this->Bullets[i]->Update())
        {
            delete this->Bullets[i];
            this->Bullets.Remove(i, 1);
            i--;
        }
    }

    return 0;
}