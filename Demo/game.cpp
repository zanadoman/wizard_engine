#include "demo.hpp"

game::game(engine* Engine) : Engine(Engine)
{
    this->Assets = new assets(Engine);
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

    delete this->Assets;
}

uint8 game::Update()
{
    switch (this->ActiveScene)
    {
        case SCENE_MENU:
            if (this->Menu->Update())
            {
                delete this->Menu;
                this->Menu = NULL;
            }
        break;

        case SCENE_NORMAL:
            
        break;

        case SCENE_INFINITE:
            
        break;
    }

    return 0;
}