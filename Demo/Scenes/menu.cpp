#include "../demo.hpp"

menu::menu(engine* Engine, assets* Assets) : Engine(Engine), Assets(Assets)
{
    this->Actor = this->Engine->Actors.New(NULL, ACT_MENU, this->Engine->Window.GetWidth() >> 1, this->Engine->Window.GetHeight() >> 1, 0, 0, 0);
    engine::actor actor = this->Engine->Actors[this->Actor];

    this->TitleTextID = actor.Texts.New("Wizard Engine Demo", this->Assets->FontFreeSansFont);
    this->ButtonNormalOverlapboxID = actor.Overlapboxes.New(BOX_BUTTON);
    this->ButtonNormalColorID = actor.Colors.New();
    this->ButtonNormalTextID = actor.Texts.New("Normal Mode", this->Assets->FontFreeSansFont);
    this->ButtonInfiniteOverlapboxID = actor.Overlapboxes.New(BOX_BUTTON);
    this->ButtonInfiniteColorID = actor.Colors.New();
    this->ButtonInfiniteTextID = actor.Texts.New("Infinite Mode", this->Assets->FontFreeSansFont);

    engine::text TitleText = actor.Texts[this->TitleTextID];
    engine::overlapbox ButtonNormalOverlapbox = actor.Overlapboxes[this->ButtonNormalOverlapboxID];
    engine::color ButtonNormalColor = actor.Colors[this->ButtonNormalColorID];
    engine::text ButtonNormalText = actor.Texts[this->ButtonNormalTextID];
    engine::overlapbox ButtonInfiniteOverlapbox = actor.Overlapboxes[this->ButtonInfiniteOverlapboxID];
    engine::color ButtonInfiniteColor = actor.Colors[this->ButtonInfiniteColorID];
    engine::text ButtonInfiniteText = actor.Texts[this->ButtonInfiniteTextID];

    TitleText.SetY(actor.GetY() + 350);
    TitleText.SetHeight(100);

    ButtonNormalOverlapbox.SetY(actor.GetY() + 75);
    ButtonNormalOverlapbox.SetWidth(250);
    ButtonNormalOverlapbox.SetHeight(75);
    ButtonNormalColor.SetY(ButtonNormalOverlapbox.GetY());
    ButtonNormalColor.Width = ButtonNormalOverlapbox.GetWidth();
    ButtonNormalColor.Height = ButtonNormalOverlapbox.GetHeight();
    ButtonNormalColor.ColorR = 128;
    ButtonNormalColor.ColorG = 128;
    ButtonNormalColor.ColorB = 128;
    ButtonNormalText.SetHeight(30);
    ButtonNormalText.SetY(ButtonNormalOverlapbox.GetY());

    ButtonInfiniteOverlapbox.SetY(actor.GetY() - 75);
    ButtonInfiniteOverlapbox.SetWidth(250);
    ButtonInfiniteOverlapbox.SetHeight(75);
    ButtonInfiniteColor.SetY(ButtonInfiniteOverlapbox.GetY());
    ButtonInfiniteColor.Width = ButtonInfiniteOverlapbox.GetWidth();
    ButtonInfiniteColor.Height = ButtonInfiniteOverlapbox.GetHeight();
    ButtonInfiniteColor.ColorR = 128;
    ButtonInfiniteColor.ColorG = 128;
    ButtonInfiniteColor.ColorB = 128;
    ButtonInfiniteText.SetHeight(30);
    ButtonInfiniteText.SetY(ButtonInfiniteOverlapbox.GetY());
}

uint8 menu::Update()
{
    engine::actor actor = this->Engine->Actors[this->Actor];
    engine::overlapbox ButtonNormalOverlapbox = actor.Overlapboxes[this->ButtonNormalOverlapboxID];
    engine::color ButtonNormalColor = actor.Colors[this->ButtonNormalColorID];
    engine::overlapbox ButtonInfiniteOverlapbox = actor.Overlapboxes[this->ButtonInfiniteOverlapboxID];
    engine::color ButtonInfiniteColor = actor.Colors[this->ButtonInfiniteColorID];

    if (ButtonNormalOverlapbox.GetButtonState() & BTN_HOVERED)
    {
        ButtonNormalColor.ColorR = 96;
        ButtonNormalColor.ColorG = 96;
        ButtonNormalColor.ColorB = 96;
    }
    else
    {
        ButtonNormalColor.ColorR = 128;
        ButtonNormalColor.ColorG = 128;
        ButtonNormalColor.ColorB = 128;
    }
    if (ButtonInfiniteOverlapbox.GetButtonState() & BTN_HOVERED)
    {
        ButtonInfiniteColor.ColorR = 96;
        ButtonInfiniteColor.ColorG = 96;
        ButtonInfiniteColor.ColorB = 96;
    }
    else
    {
        ButtonInfiniteColor.ColorR = 128;
        ButtonInfiniteColor.ColorG = 128;
        ButtonInfiniteColor.ColorB = 128;
    }

    return 0;
}