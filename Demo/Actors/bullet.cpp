#include "../demo.hpp"

bullet::bullet(engine* Engine, game* Game, double X, double Y, double Layer, uint64 ParentID, actor ParentType, double Angle) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_BULLET, X, Y, 10, 3, Layer);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_BULLET);
    this->Texture = this->Actor->Textureboxes.New(this->Game->Assets.BulletBaseTexture);
    this->ParentID = ParentID;
    this->ParentType = ParentType;

    this->Actor->SetAngle(Angle);

    this->Engine->Audio.Play(this->Game->Assets.BulletShotSound, 1, 0.25);
}

bullet::~bullet()
{
    this->Engine->Actors.Delete(this->Actor->GetID());
}

uint8 bullet::Update()
{
    array<array<uint64>> overlap;

    this->Actor->SetX(this->Engine->Vector.TerminalX(this->Actor->GetX(), 1 * this->Engine->Timing.GetDeltaTime(), this->Actor->GetAngle()));
    this->Actor->SetY(this->Engine->Vector.TerminalY(this->Actor->GetY(), 1 * this->Engine->Timing.GetDeltaTime(), this->Actor->GetAngle()));

    this->Overlapbox->GetOverlapState(&overlap, {ACT_PLAYER, ACT_EAGLE, ACT_PLATFORM, }, {ParentID});

    switch (ParentType)
    {
        case ACT_PLAYER:
            for (uint64 i = 1; i < overlap.Length(); i++)
            {
                if (this->Engine->Actors[i].GetType() == ACT_EAGLE && 0 < overlap[i].Length())
                {
                    printf("eagle hit\n");
                    return 1;
                }
                else if (0 < overlap[i].Length())
                {
                    return 1;
                }
            }
        break;

        case ACT_EAGLE:
            for (uint64 i = 1; i < overlap.Length(); i++)
            {
                if (this->Engine->Actors[i].GetType() == ACT_PLAYER && 0 < overlap[i].Length())
                {
                    printf("player hit\n");
                    return 1;
                }
                else if (0 < overlap[i].Length())
                {
                    return 1;
                }
            }
        break;

        default:
        break;
    }

    return 0;
}