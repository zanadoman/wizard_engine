#include "../demo.hpp"

menu::menu(engine* Engine, game* Game) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(NULL, ACT_MENU, this->Engine->Window.GetWidth() >> 1, this->Engine->Window.GetHeight() >> 1, 0, 0, 0);
    this->Title = this->Actor->Texts.New("Wizard Engine Demo", this->Game->Assets->FontFreeSansFont);
    this->ButtonNormal = this->Actor->Overlapboxes.New(BOX_BUTTON);
    this->ButtonNormalColor = this->Actor->Colors.New();
    this->ButtonNormalText = this->Actor->Texts.New("Normal Mode", this->Game->Assets->FontFreeSansFont);
    this->ButtonInfinite = this->Actor->Overlapboxes.New(BOX_BUTTON);
    this->ButtonInfiniteColor = this->Actor->Colors.New();
    this->ButtonInfiniteText = this->Actor->Texts.New("Infinite Mode", this->Game->Assets->FontFreeSansFont);

    this->Title->SetY(this->Actor->GetY() + 350);
    this->Title->SetHeight(100);

    this->ButtonNormal->SetY(this->Actor->GetY() + 75);
    this->ButtonNormal->SetWidth(250);
    this->ButtonNormal->SetHeight(75);
    this->ButtonNormalColor->SetY(ButtonNormal->GetY());
    this->ButtonNormalColor->Width = ButtonNormal->GetWidth();
    this->ButtonNormalColor->Height = ButtonNormal->GetHeight();
    this->ButtonNormalColor->ColorR = 128;
    this->ButtonNormalColor->ColorG = 128;
    this->ButtonNormalColor->ColorB = 128;
    this->ButtonNormalText->SetHeight(30);
    this->ButtonNormalText->SetY(ButtonNormal->GetY());

    this->ButtonInfinite->SetY(this->Actor->GetY() - 75);
    this->ButtonInfinite->SetWidth(250);
    this->ButtonInfinite->SetHeight(75);
    this->ButtonInfiniteColor->SetY(ButtonInfinite->GetY());
    this->ButtonInfiniteColor->Width = ButtonInfinite->GetWidth();
    this->ButtonInfiniteColor->Height = ButtonInfinite->GetHeight();
    this->ButtonInfiniteColor->ColorR = 128;
    this->ButtonInfiniteColor->ColorG = 128;
    this->ButtonInfiniteColor->ColorB = 128;
    this->ButtonInfiniteText->SetHeight(30);
    this->ButtonInfiniteText->SetY(ButtonInfinite->GetY());
}

uint8 menu::Update()
{
    if (this->ButtonNormal->GetButtonState() & BTN_HOVERED)
    {
        this->ButtonNormalColor->ColorR = 96;
        this->ButtonNormalColor->ColorG = 96;
        this->ButtonNormalColor->ColorB = 96;

        if (this->ButtonNormal->GetButtonState() & BTN_RELEASED_LMB)
        {
            this->Game->ActiveScene = SCENE_NORMAL;
            this->Engine->Actors.Purge({});
            return 0;
        }
    }
    else
    {
        this->ButtonNormalColor->ColorR = 128;
        this->ButtonNormalColor->ColorG = 128;
        this->ButtonNormalColor->ColorB = 128;
    }

    if (this->ButtonInfinite->GetButtonState() & BTN_HOVERED)
    {
        this->ButtonInfiniteColor->ColorR = 96;
        this->ButtonInfiniteColor->ColorG = 96;
        this->ButtonInfiniteColor->ColorB = 96;

        if (this->ButtonInfinite->GetButtonState() & BTN_RELEASED_LMB)
        {
            this->Game->ActiveScene = SCENE_INFINITE;
            this->Engine->Actors.Purge({});
            return 0;
        }
    }
    else
    {
        this->ButtonInfiniteColor->ColorR = 128;
        this->ButtonInfiniteColor->ColorG = 128;
        this->ButtonInfiniteColor->ColorB = 128;
    }

    return 0;
}