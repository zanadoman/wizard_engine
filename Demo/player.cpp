#include "demo.hpp"

player::player(engine* Engine) : Engine(Engine)
{
    this->MainFlipbookTextures = 
    {
        this->Engine->Assets.LoadTexture("assets/player/player1.png"),
        this->Engine->Assets.LoadTexture("assets/player/player2.png"),
        this->Engine->Assets.LoadTexture("assets/player/player3.png"),
        this->Engine->Assets.LoadTexture("assets/player/player4.png"),
        this->Engine->Assets.LoadTexture("assets/player/player5.png"),
        this->Engine->Assets.LoadTexture("assets/player/player6.png")
    };
    this->NameTextFont = this->Engine->Assets.LoadFont("engine/FreeSans.ttf", 48);

    this->Actor = this->Engine->Actors.New(PLAYER, 0, 0, 46, 70, 1);
    this->MainFlipbook = this->Engine->Actors[this->Actor].Flipbooks.New(100, &this->MainFlipbookTextures);
    this->NameText = this->Engine->Actors[this->Actor].Texts.New("Player", this->NameTextFont);

    this->Engine->Actors[this->Actor].Force = 0;
    this->Engine->Actors[this->Actor].SetDepth(0.05);
    this->Engine->Actors[this->Actor].SetCollisionLayer(1);
    this->Engine->Actors[this->Actor].HitboxVisible = true;

    this->Engine->Actors[this->Actor].Flipbooks[this->MainFlipbook].Width = 100;
    this->Engine->Actors[this->Actor].Flipbooks[this->MainFlipbook].Height = 100;
    this->Engine->Actors[this->Actor].Flipbooks[this->MainFlipbook].SetY(this->Engine->Actors[this->Actor].GetY() + 16);

    this->Engine->Actors[this->Actor].Texts[this->NameText].Height = 20;
    this->Engine->Actors[this->Actor].Texts[this->NameText].SetY(this->Engine->Actors[this->Actor].GetY() + 56);
}

player::~player()
{
    for (uint8 i = 0; i < this->MainFlipbookTextures.Length(); i++)
    {
        this->Engine->Assets.UnloadTexture(this->MainFlipbookTextures[i]);
    }
    this->Engine->Assets.UnloadFont(this->NameTextFont);
    
    this->Engine->Actors.Delete(this->Actor);
}

uint8 player::Update()
{
    if (this->Engine->Keys[KEY_UP] && !this->Engine->Keys[KEY_DOWN])
    {
        this->Engine->Actors[this->Actor].SetX(this->Engine->Vector.TerminalX(this->Engine->Actors[this->Actor].GetX(), 0.5 * this->Engine->Timing.GetDeltaTime(), this->Engine->Actors[this->Actor].GetAngle() + 90));
        this->Engine->Actors[this->Actor].SetY(this->Engine->Vector.TerminalY(this->Engine->Actors[this->Actor].GetY(), 0.5 * this->Engine->Timing.GetDeltaTime(), this->Engine->Actors[this->Actor].GetAngle() + 90));
    }
    if (this->Engine->Keys[KEY_DOWN] && !this->Engine->Keys[KEY_UP])
    {
        this->Engine->Actors[this->Actor].SetX(this->Engine->Vector.TerminalX(this->Engine->Actors[this->Actor].GetX(), -0.5 * this->Engine->Timing.GetDeltaTime(), this->Engine->Actors[this->Actor].GetAngle() + 90));
        this->Engine->Actors[this->Actor].SetY(this->Engine->Vector.TerminalY(this->Engine->Actors[this->Actor].GetY(), -0.5 * this->Engine->Timing.GetDeltaTime(), this->Engine->Actors[this->Actor].GetAngle() + 90));
    }
    if (this->Engine->Keys[KEY_LEFT] && !this->Engine->Keys[KEY_RIGHT])
    {
        this->Engine->Actors[this->Actor].SetAngle(this->Engine->Actors[this->Actor].GetAngle() + 0.2 * this->Engine->Timing.GetDeltaTime());
    }
    if (this->Engine->Keys[KEY_RIGHT] && !this->Engine->Keys[KEY_LEFT])
    {
        this->Engine->Actors[this->Actor].SetAngle(this->Engine->Actors[this->Actor].GetAngle() - 0.2 * this->Engine->Timing.GetDeltaTime());
    }

    if (this->Engine->Keys[KEY_G])
    {
        this->Engine->Actors[this->Actor].Texts[this->NameText].SetY(this->Engine->Actors[this->Actor].GetY() + 56);
        this->Engine->Actors[this->Actor].Texts[this->NameText].SetX(this->Engine->Actors[this->Actor].GetX());
    }
    if (this->Engine->Keys[KEY_H])
    {
        this->Engine->Actors[this->Actor].SetWidth(100);
    }
    if (this->Engine->Keys[KEY_J])
    {
        this->Engine->Actors[this->Actor].SetWidth(46);
    }

    return 0;
}