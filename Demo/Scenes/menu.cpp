#include "../demo.hpp"

menu::menu(engine* Engine, assets* Assets) : Engine(Engine), Assets(Assets)
{
    this->Actor = this->Engine->Actors.New(NULL, ACT_MENU, this->Engine->Window.GetWidth() >> 1, this->Engine->Window.GetHeight() >> 1, 0, 0, 0);
    this->ButtonNormalOverlapboxID = this->Engine->Actors[this->Actor].Overlapboxes.New(BOX_BUTTON);
    this->ButtonNormalColorID = this->Engine->Actors[this->Actor].Colors.New();
    this->ButtonInfiniteOverlapboxID = this->Engine->Actors[this->Actor].Overlapboxes.New(BOX_BUTTON);
    this->ButtonInfiniteColorID = this->Engine->Actors[this->Actor].Colors.New();

    engine::actor actor = this->Engine->Actors[this->Actor];
    engine::overlapbox ButtonNormalOverlapbox = this->Engine->Actors[this->Actor].Overlapboxes[this->ButtonNormalOverlapboxID];
    engine::color ButtonNormalColor = this->Engine->Actors[this->Actor].Colors[this->ButtonNormalColorID];
    engine::overlapbox ButtonInfiniteOverlapbox = this->Engine->Actors[this->Actor].Overlapboxes[this->ButtonInfiniteOverlapboxID];
    engine::color ButtonInfiniteColor = this->Engine->Actors[this->Actor].Colors[this->ButtonInfiniteColorID];

    ButtonNormalOverlapbox.SetY(actor.GetY() + 75);
    ButtonNormalOverlapbox.SetWidth(250);
    ButtonNormalOverlapbox.SetHeight(75);
    ButtonNormalColor.SetY(actor.GetY() + 75);
    ButtonNormalColor.Width = 250;
    ButtonNormalColor.Height = 75;

    ButtonInfiniteOverlapbox.SetY(actor.GetY() - 75);
    ButtonInfiniteOverlapbox.SetWidth(250);
    ButtonInfiniteOverlapbox.SetHeight(75);
    ButtonInfiniteColor.SetY(actor.GetY() - 75);
    ButtonInfiniteColor.Width = 250;
    ButtonInfiniteColor.Height = 75;
}

uint8 menu::Update()
{
    return 0;
}