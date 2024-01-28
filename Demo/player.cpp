#include "demo.hpp"

player::player(engine& Engine) : Engine(Engine)
{
    this->MainFlipbookTextures = 
    {
        this->Engine.Assets.LoadTexture("assets/player/player1.png"),
        this->Engine.Assets.LoadTexture("assets/player/player2.png"),
        this->Engine.Assets.LoadTexture("assets/player/player3.png"),
        this->Engine.Assets.LoadTexture("assets/player/player4.png"),
        this->Engine.Assets.LoadTexture("assets/player/player5.png"),
        this->Engine.Assets.LoadTexture("assets/player/player6.png")
    };
    this->NameTextFont = this->Engine.Assets.LoadFont("assets/crazy-pixel.ttf", 48);

    this->Actor = Engine.Actors.New(PLAYER);
    this->MainFlipbook = Engine.Actors[this->Actor].Flipbooks.New(&this->MainFlipbookTextures);
    this->NameText = Engine.Actors[this->Actor].Texts.New();

    this->Engine.Actors[this->Actor].SetLayer(1);
    this->Engine.Actors[this->Actor].SetDepth(0.05);

    this->Engine.Actors[this->Actor].Flipbooks[this->MainFlipbook].SetDelay(100);
    this->Engine.Actors[this->Actor].Flipbooks[this->MainFlipbook].Width = 100;
    this->Engine.Actors[this->Actor].Flipbooks[this->MainFlipbook].Height = 100;
    this->Engine.Actors[this->Actor].Flipbooks[this->MainFlipbook].OffsetLocked = true;
    this->Engine.Actors[this->Actor].Flipbooks[this->MainFlipbook].AngleLocked = true;

    *this->Engine.Actors[this->Actor].Texts[this->NameText].String() = {"Player"};
    this->Engine.Actors[this->Actor].Texts[this->NameText].SetFont(this->NameTextFont);
    this->Engine.Actors[this->Actor].Texts[this->NameText].SetOffsetY(50);
    this->Engine.Actors[this->Actor].Texts[this->NameText].Height = 50;
    this->Engine.Actors[this->Actor].Texts[this->NameText].OffsetLocked = true;
    this->Engine.Actors[this->Actor].Texts[this->NameText].AngleLocked = true;
}

player::~player()
{
    for (uint8 i = 0; i < this->MainFlipbookTextures.Length(); i++)
    {
        this->Engine.Assets.UnloadTexture(this->MainFlipbookTextures[i]);
    }
    this->Engine.Assets.UnloadFont(this->NameTextFont);
    this->Engine.Actors.Delete(this->Actor);
}

uint8 player::Update()
{
    if (this->Engine.Keys[KEY_UP])
    {
        this->Engine.Actors[this->Actor].SetX(this->Engine.Vector.TerminalX(this->Engine.Actors[this->Actor].GetX(), 0.5 * this->Engine.Timing.GetDeltaTime(), this->Engine.Actors[this->Actor].GetAngle() + 90));
        this->Engine.Actors[this->Actor].SetY(this->Engine.Vector.TerminalY(this->Engine.Actors[this->Actor].GetY(), 0.5 * this->Engine.Timing.GetDeltaTime(), this->Engine.Actors[this->Actor].GetAngle() + 90));
    }
    else if (this->Engine.Keys[KEY_DOWN])
    {
        this->Engine.Actors[this->Actor].SetX(this->Engine.Vector.TerminalX(this->Engine.Actors[this->Actor].GetX(), -0.5 * this->Engine.Timing.GetDeltaTime(), this->Engine.Actors[this->Actor].GetAngle() + 90));
        this->Engine.Actors[this->Actor].SetY(this->Engine.Vector.TerminalY(this->Engine.Actors[this->Actor].GetY(), -0.5 * this->Engine.Timing.GetDeltaTime(), this->Engine.Actors[this->Actor].GetAngle() + 90));
    }
    if (this->Engine.Keys[KEY_LEFT])
    {
        this->Engine.Actors[this->Actor].SetAngle(this->Engine.Actors[this->Actor].GetAngle() + 0.2 * this->Engine.Timing.GetDeltaTime());
    }
    else if (this->Engine.Keys[KEY_RIGHT])
    {
        this->Engine.Actors[this->Actor].SetAngle(this->Engine.Actors[this->Actor].GetAngle() - 0.2 * this->Engine.Timing.GetDeltaTime());
    }

    return 0;
}