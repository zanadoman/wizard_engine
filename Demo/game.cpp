#include "demo.hpp"

game::game(engine* Engine) : Engine(Engine), Assets(Engine)
{
    this->ActiveScene = SCENE_MENU;
    this->Menu = new menu(this->Engine, &this->Assets);
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