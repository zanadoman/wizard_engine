#include "demo.hpp"

game::game(engine* Engine) : Engine(Engine), Assets(Engine)
{
    this->ActiveScene = SCENE_MENU;
    this->Menu = new menu(this->Engine, this);
    this->Normal = NULL;
    this->Infinite = NULL;
}

game::~game()
{
    switch (this->ActiveScene)
    {
        case SCENE_MENU:
            delete this->Menu;
        break;

        case SCENE_NORMAL:
            delete this->Normal;
        break;

        case SCENE_INFINITE:
            delete this->Infinite;
        break;
    }
}

uint8 game::Update()
{
    switch (this->ActiveScene)
    {
        case SCENE_MENU:
            this->SwitchScenes(this->Menu->Update());
        break;

        case SCENE_NORMAL:
            this->SwitchScenes(this->Normal->Update());
        break;

        case SCENE_INFINITE:
            this->SwitchScenes(this->Infinite->Update());
        break;
    }

    return 0;
}

uint8 game::SwitchScenes(scene Scene)
{
    if (this->ActiveScene != Scene)
    {
        switch (this->ActiveScene)
        {
            case SCENE_MENU:
                delete this->Menu;
                this->Menu = NULL;
            break;

            case SCENE_NORMAL:
                delete this->Normal;
                this->Normal = NULL;
            break;

            case SCENE_INFINITE:
                delete this->Infinite;
                this->Infinite = NULL;
            break;
        }

        this->Engine->Actors.Purge({});
        this->Engine->Camera.SetX(0);
        this->Engine->Camera.SetY(0);
        this->Engine->Camera.SetOffsetX(-(this->Engine->Window.GetWidth() >> 1));
        this->Engine->Camera.SetOffsetY(-(this->Engine->Window.GetHeight() >> 1));

        switch (Scene)
        {
            case SCENE_MENU:
                this->Menu = new menu(this->Engine, this);
            break;

            case SCENE_NORMAL:
                this->Normal = new normal(this->Engine, this);
            break;

            case SCENE_INFINITE:
                this->Infinite = new infinite(this->Engine, this);
            break;
        }

        this->ActiveScene = Scene;
    }

    return 0;
}