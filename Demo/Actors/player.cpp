#include "../demo.hpp"

player::player(engine* Engine, game* Game, double X, double Y, double Layer, double CollisionLayer) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_PLAYER, X, Y, 42, 66, Layer);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_PLAYER);
    this->Idle = this->Actor->Flipbooks.New(100, &this->Game->Assets.PlayerIdleTextures);
    this->Run = this->Actor->Flipbooks.New(100, &this->Game->Assets.PlayerRunTextures);
    this->Hurt = this->Actor->Flipbooks.New(100, &this->Game->Assets.PlayerHurtTextures);
    this->Fall = this->Actor->Textures.New(this->Game->Assets.PlayerFallTexture);
    this->Jump = this->Actor->Textures.New(this->Game->Assets.PlayerJumpTexture);
    this->VelocityY = 0;

    this->Actor->SetCollisionLayer(CollisionLayer);
    this->Actor->HitboxVisible = true;

    this->Overlapbox->SetWidth(this->Actor->GetWidth() + EPSILON * 2);
    this->Overlapbox->SetHeight(this->Actor->GetHeight() + EPSILON * 2);

    this->Idle->Width = 83;
    this->Idle->Height = 80;
    this->Idle->SetY(this->Actor->GetY() + 14);

    this->Run->Width = 83;
    this->Run->Height = 80;
    this->Run->SetY(this->Actor->GetY() + 14);
    this->Run->Paused = true;
    this->Run->Visible = false;

    this->Hurt->Width = 83;
    this->Hurt->Height = 80;
    this->Hurt->SetY(this->Actor->GetY() + 14);
    this->Hurt->Paused = true,
    this->Hurt->Visible = false;

    this->Fall->Width = 83;
    this->Fall->Height = 80;
    this->Fall->SetY(this->Actor->GetY() + 14);
    this->Fall->Visible = false;

    this->Jump->Width = 83;
    this->Jump->Height = 80;
    this->Jump->SetY(this->Actor->GetY() + 14);
    this->Jump->Visible = false;
}

uint8 player::Update()
{
    array<array<uint64>> overlaps;
    double PrevY;

    if (this->Engine->Keys[KEY_A] && !this->Engine->Keys[KEY_D])
    {
        this->Actor->SetX(this->Actor->GetX() + -0.5 * this->Engine->Timing.GetDeltaTime());
        this->Idle->FlipHorizontal = true;
        this->Run->FlipHorizontal = true;
        this->Fall->FlipHorizontal = true;
        this->Jump->FlipHorizontal = true;
    }
    if (this->Engine->Keys[KEY_D] && !this->Engine->Keys[KEY_A])
    {
        this->Actor->SetX(this->Actor->GetX() + 0.5 * this->Engine->Timing.GetDeltaTime());
        this->Idle->FlipHorizontal = false;
        this->Run->FlipHorizontal = false;
        this->Fall->FlipHorizontal = false;
        this->Jump->FlipHorizontal = false;
    }

    this->VelocityY -= 0.004 * this->Engine->Timing.GetDeltaTime();

    PrevY = this->Actor->GetY();
    this->Actor->SetY(this->Actor->GetY() + this->VelocityY * this->Engine->Timing.GetDeltaTime());

    if (this->Actor->GetY() == PrevY)
    {
        this->VelocityY = 0;
    }

    if (this->Engine->Keys[KEY_SPACE] && this->VelocityY == 0)
    {
        this->VelocityY = 1.25;
    }

    return 0;
}