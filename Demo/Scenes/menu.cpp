#include "../demo.hpp"

menu::menu(engine* Engine, assets* Assets) : Engine(Engine), Assets(Assets),
Actor(this->Engine->Actors.New(NULL, ACT_MENU, this->Engine->Window.GetWidth() >> 1, this->Engine->Window.GetHeight() >> 1, 0, 0, 0)),
Title(this->Actor.Texts.New("Wizard Engine Demo", this->Assets->FontFreeSansFont)),
ButtonNormal(this->Actor.Overlapboxes.New(BOX_BUTTON)),
ButtonNormalColor(this->Actor.Colors.New()),
ButtonNormalText(this->Actor.Texts.New("Normal Mode", this->Assets->FontFreeSansFont)),
ButtonInfinite(this->Actor.Overlapboxes.New(BOX_BUTTON)),
ButtonInfiniteColor(this->Actor.Colors.New()),
ButtonInfiniteText(this->Actor.Texts.New("Infinite Mode", this->Assets->FontFreeSansFont))
{
    this->Title.SetY(this->Actor.GetY() + 350);
    this->Title.SetHeight(100);

    this->ButtonNormal.SetY(this->Actor.GetY() + 75);
    this->ButtonNormal.SetWidth(250);
    this->ButtonNormal.SetHeight(75);
    this->ButtonNormalColor.SetY(ButtonNormal.GetY());
    this->ButtonNormalColor.Width = ButtonNormal.GetWidth();
    this->ButtonNormalColor.Height = ButtonNormal.GetHeight();
    this->ButtonNormalColor.ColorR = 128;
    this->ButtonNormalColor.ColorG = 128;
    this->ButtonNormalColor.ColorB = 128;
    this->ButtonNormalText.SetHeight(30);
    this->ButtonNormalText.SetY(ButtonNormal.GetY());

    this->ButtonInfinite.SetY(this->Actor.GetY() - 75);
    this->ButtonInfinite.SetWidth(250);
    this->ButtonInfinite.SetHeight(75);
    this->ButtonInfiniteColor.SetY(ButtonInfinite.GetY());
    this->ButtonInfiniteColor.Width = ButtonInfinite.GetWidth();
    this->ButtonInfiniteColor.Height = ButtonInfinite.GetHeight();
    this->ButtonInfiniteColor.ColorR = 128;
    this->ButtonInfiniteColor.ColorG = 128;
    this->ButtonInfiniteColor.ColorB = 128;
    this->ButtonInfiniteText.SetHeight(30);
    this->ButtonInfiniteText.SetY(ButtonInfinite.GetY());
}

uint8 menu::Update()
{
    if (this->ButtonNormal.GetButtonState() & BTN_HOVERED)
    {
        this->ButtonNormalColor.ColorR = 96;
        this->ButtonNormalColor.ColorG = 96;
        this->ButtonNormalColor.ColorB = 96;
    }
    else
    {
        this->ButtonNormalColor.ColorR = 128;
        this->ButtonNormalColor.ColorG = 128;
        this->ButtonNormalColor.ColorB = 128;
    }
    if (this->ButtonInfinite.GetButtonState() & BTN_HOVERED)
    {
        this->ButtonInfiniteColor.ColorR = 96;
        this->ButtonInfiniteColor.ColorG = 96;
        this->ButtonInfiniteColor.ColorB = 96;
    }
    else
    {
        this->ButtonInfiniteColor.ColorR = 128;
        this->ButtonInfiniteColor.ColorG = 128;
        this->ButtonInfiniteColor.ColorB = 128;
    }

    return 0;
}