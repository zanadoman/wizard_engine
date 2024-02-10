#include "demo.hpp"

game::game(engine* Engine) : Engine(Engine), Assets(Engine)
{
    this->ActiveScene = SCENE_MENU;
    this->Menu = new menu(this->Engine, &this->Assets);
}

game::~game()
{
    switch (this->ActiveScene)
    {
        case SCENE_MENU:
            delete this->Menu;
        break;
    }
}

uint8 game::Update()
{
    switch (this->ActiveScene)
    {
        case SCENE_MENU:
            this->Menu->Update();
        break;
    }

    return 0;
}