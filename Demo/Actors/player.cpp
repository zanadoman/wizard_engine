#include "../demo.hpp"

player::player(engine* Engine, game* Game, double X, double Y, double Layer, double CollisionLayer) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(this, ACT_PLAYER, X, Y, 60, 82, Layer);
    this->Overlapbox = this->Actor->Overlapboxes.New(BOX_PLAYER);
    this->Idle = this->Actor->Flipbooks.New(125, &this->Game->Assets.PlayerIdleTextures);
    this->Run = this->Actor->Flipbooks.New(125, &this->Game->Assets.PlayerRunTextures);
    this->Hurt = this->Actor->Flipbooks.New(125, &this->Game->Assets.PlayerHurtTextures);
    this->Fall = this->Actor->Textureboxes.New(this->Game->Assets.PlayerFallTexture);
    this->Jump = this->Actor->Textureboxes.New(this->Game->Assets.PlayerJumpTexture);
    this->VelocityX = 0;
    this->VelocityY = 0;

    this->Actor->SetCollisionLayer(CollisionLayer);

    this->Overlapbox->SetWidth(this->Actor->GetWidth() + EPSILON * 2);
    this->Overlapbox->SetHeight(this->Actor->GetHeight() + EPSILON * 2);

    this->Idle->Width = 132;
    this->Idle->Height = 128;
    this->Idle->SetY(this->Actor->GetY() + 22);

    this->Run->Width = 132;
    this->Run->Height = 128;
    this->Run->SetY(this->Actor->GetY() + 22);
    this->Run->Visible = false;

    this->Hurt->Width = 132;
    this->Hurt->Height = 128;
    this->Hurt->SetY(this->Actor->GetY() + 22);
    this->Hurt->Visible = false;

    this->Fall->Width = 132;
    this->Fall->Height = 128;
    this->Fall->SetY(this->Actor->GetY() + 22);
    this->Fall->Visible = false;

    this->Jump->Width = 132;
    this->Jump->Height = 128;
    this->Jump->SetY(this->Actor->GetY() + 22);
    this->Jump->Visible = false;
}

player::~player()
{
    for (uint64 i = 0; i < this->Bullets.Length(); i++)
    {
        delete this->Bullets[i];
    }
    this->Engine->Actors.Delete(this->Actor->GetID());
}

uint8 player::Update()
{
    //Horizontal movement

    if (this->Engine->Keys[KEY_A] && !this->Engine->Keys[KEY_D])
    {
        this->VelocityX -= 0.003 * this->Engine->Timing.GetDeltaTime();
        if (this->VelocityX < -0.5)
        {
            this->VelocityX = -0.5;
        }
        this->Idle->FlipHorizontal = true;
        this->Run->FlipHorizontal = true;
        this->Fall->FlipHorizontal = true;
        this->Jump->FlipHorizontal = true;
    }
    else if (this->VelocityX < 0)
    {
        this->VelocityX += 0.003 * this->Engine->Timing.GetDeltaTime();
        if (0 < this->VelocityX)
        {
             this->VelocityX = 0;
        }
    }
    if (this->Engine->Keys[KEY_D] && !this->Engine->Keys[KEY_A])
    {
        this->VelocityX += 0.003 * this->Engine->Timing.GetDeltaTime();
        if (0.5 < this->VelocityX)
        {
            this->VelocityX = 0.5;
        }
        this->Idle->FlipHorizontal = false;
        this->Run->FlipHorizontal = false;
        this->Fall->FlipHorizontal = false;
        this->Jump->FlipHorizontal = false;
    }
    else if (0 < this->VelocityX)
    {
        this->VelocityX -= 0.003 * this->Engine->Timing.GetDeltaTime();
        if (this->VelocityX < 0)
        {
            this->VelocityX = 0;
        }
    }

    this->Actor->SetX(this->Actor->GetX() + this->VelocityX * this->Engine->Timing.GetDeltaTime());

    //Vertical movement

    if (this->Engine->Keys[KEY_SPACE] && this->VelocityY == 0)
    {
        this->VelocityY = 1.25;
    }

    this->VelocityY -= 0.003 * this->Engine->Timing.GetDeltaTime();

    if (this->Actor->GetY() + this->VelocityY * this->Engine->Timing.GetDeltaTime() != this->Actor->SetY(this->Actor->GetY() + this->VelocityY * this->Engine->Timing.GetDeltaTime()))
    {
        if (0 < this->VelocityY)
        {
            this->VelocityY = -0.003 * this->Engine->Timing.GetDeltaTime();
        }
        else if (this->VelocityY < 0)
        {
            this->VelocityY = 0;
        }
    }

    //Shooting

    if (this->Engine->Keys[KEY_LMB])
    {
        this->Bullets += {new bullet(this->Engine, this->Game, this->Actor->GetX(), this->Actor->GetY(), this->Actor->GetLayer(), this->Actor->GetID(), (actor)this->Actor->GetType(), this->Engine->Vector.Angle(this->Actor->GetX(), this->Actor->GetY(), this->Engine->Mouse.GetX(this->Actor->GetLayer()), this->Engine->Mouse.GetY(this->Actor->GetLayer())))};
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

    //Animation

    if (this->VelocityY < 0)
    {
        this->Idle->Visible = false;
        this->Run->Visible = false;
        this->Hurt->Visible = false;
        this->Fall->Visible = true;
        this->Jump->Visible = false;
    }
    else if (0 < this->VelocityY)
    {
        this->Idle->Visible = false;
        this->Run->Visible = false;
        this->Hurt->Visible = false;
        this->Fall->Visible = false;
        this->Jump->Visible = true;
    }
    else if (this->VelocityX != 0)
    {
        this->Idle->Visible = false;
        this->Run->Visible = true;
        this->Hurt->Visible = false;
        this->Fall->Visible = false;
        this->Jump->Visible = false;
    }
    else
    {
        this->Idle->Visible = true;
        this->Run->Visible = false;
        this->Hurt->Visible = false;
        this->Fall->Visible = false;
        this->Jump->Visible = false;
    }

    return 0;
}