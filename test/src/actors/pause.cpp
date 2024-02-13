#include "../demo.hpp"


pause::pause(engine* Engine, game* Game) : Engine(Engine), Game(Game)
{
    this->Actor = this->Engine->Actors.New(NULL, ACT_NONE, this->Engine->Window.GetWidth() >> 1, this->Engine->Window.GetHeight() >> 1, 0, 0, 0);
    this->Frame = this->Actor->Colorboxes.New();
    this->ButtonResume = this->Actor->Overlapboxes.New(BOX_NONE);
    this->ButtonResumeColor = this->Actor->Colorboxes.New();
    this->ButtonResumeText = this->Actor->Textboxes.New("Resume", this->Game->Assets.FontFreeSansFont);
    this->ButtonMenu = this->Actor->Overlapboxes.New(BOX_NONE);
    this->ButtonMenuColor = this->Actor->Colorboxes.New();
    this->ButtonMenuText = this->Actor->Textboxes.New("Menu", this->Game->Assets.FontFreeSansFont);

    this->Actor->Visible = false;

    this->Frame->Height = 600;
    this->Frame->Width = 350;
    this->Frame->ColorR = 48;
    this->Frame->ColorG = 48;
    this->Frame->ColorB = 48;
    this->Frame->ColorA = 196;

    this->ButtonResume->SetY(this->Actor->GetY() + 75);
    this->ButtonResume->SetWidth(250);
    this->ButtonResume->SetHeight(75);
    this->ButtonResumeColor->SetY(ButtonResume->GetY());
    this->ButtonResumeColor->Width = ButtonResume->GetWidth();
    this->ButtonResumeColor->Height = ButtonResume->GetHeight();
    this->ButtonResumeColor->ColorR = 128;
    this->ButtonResumeColor->ColorG = 128;
    this->ButtonResumeColor->ColorB = 128;
    this->ButtonResumeText->SetHeight(30);
    this->ButtonResumeText->SetY(ButtonResume->GetY());

    this->ButtonMenu->SetY(this->Actor->GetY() - 75);
    this->ButtonMenu->SetWidth(250);
    this->ButtonMenu->SetHeight(75);
    this->ButtonMenuColor->SetY(ButtonMenu->GetY());
    this->ButtonMenuColor->Width = ButtonMenu->GetWidth();
    this->ButtonMenuColor->Height = ButtonMenu->GetHeight();
    this->ButtonMenuColor->ColorR = 128;
    this->ButtonMenuColor->ColorG = 128;
    this->ButtonMenuColor->ColorB = 128;
    this->ButtonMenuText->SetHeight(30);
    this->ButtonMenuText->SetY(ButtonMenu->GetY());
}

pause::~pause()
{
    this->Engine->Actors.Delete(this->Actor->GetID());
}

pause::state pause::Update()
{
    if (this->Engine->Keys[KEY_ESCAPE] && !this->Actor->Visible)
    {
        this->Actor->Visible = true;
        return PAUSED;
    }

    if (this->Actor->Visible)
    {
        if (this->ButtonResume->GetButtonState() & BTN_HOVERED)
        {
            this->ButtonResumeColor->ColorR = 96;
            this->ButtonResumeColor->ColorG = 96;
            this->ButtonResumeColor->ColorB = 96;

            if (this->ButtonResume->GetButtonState() & BTN_RELEASED_LMB)
            {
                this->Actor->Visible = false;
                return NONE;
            }
        }
        else
        {
            this->ButtonResumeColor->ColorR = 128;
            this->ButtonResumeColor->ColorG = 128;
            this->ButtonResumeColor->ColorB = 128;
        }

        if (this->ButtonMenu->GetButtonState() & BTN_HOVERED)
        {
            this->ButtonMenuColor->ColorR = 96;
            this->ButtonMenuColor->ColorG = 96;
            this->ButtonMenuColor->ColorB = 96;

            if (this->ButtonMenu->GetButtonState() & BTN_RELEASED_LMB)
            {
                return MENU;
            }
        }
        else
        {
            this->ButtonMenuColor->ColorR = 128;
            this->ButtonMenuColor->ColorG = 128;
            this->ButtonMenuColor->ColorB = 128;
        }

        return PAUSED;
    }

    return NONE;
}