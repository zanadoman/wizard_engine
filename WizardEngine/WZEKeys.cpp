#include "WizardEngine.hpp"

namespace wze
{
    engine::keys::keys(engine* Engine) : Engine(Engine)
    {
        this->SDL_KeyStates = NULL;
    }

    bool engine::keys::operator [] (key Key)
    {
        if (KEY_COUNT <= Key)
        {
            printf("wze::engine.keys[]: Key does not exist\nParams: Key: %d\n", Key);
            exit(1);
        }

        return this->KeyStates[Key];
    }

    uint8 engine::keys::Update()
    {
        uint8 MouseState;

        memCopyTo(this->SDL_KeyStates, this->KeyStates, sizeof(uint8) * KEY_COUNT);

        MouseState = SDL_GetMouseState(NULL, NULL);
        if (MouseState & 1)
        {
            this->KeyStates[KEY_LMB] = true;
        }
        else
        {
            this->KeyStates[KEY_LMB] = false;
        }
        if (MouseState & 2)
        {
            this->KeyStates[KEY_MMB] = true;
        }
        else
        {
            this->KeyStates[KEY_MMB] = false;
        }
        if (MouseState & 4)
        {
            this->KeyStates[KEY_RMB] = true;
        }
        else
        {
            this->KeyStates[KEY_RMB] = false;
        }

        for (uint64 i = 0; i < this->Engine->EventQueue.Length(); i++)
        {
            if (this->Engine->EventQueue[i].type == SDL_MOUSEWHEEL)
            {
                if (this->Engine->EventQueue[i].wheel.y < 0)
                {
                    this->KeyStates[KEY_WHEELDOWN] = true;
                    this->KeyStates[KEY_WHEELUP] = false;
                }
                else if (0 < this->Engine->EventQueue[i].wheel.y)
                {
                    this->KeyStates[KEY_WHEELDOWN] = false;
                    this->KeyStates[KEY_WHEELUP] = true;
                }
                else
                {
                    this->KeyStates[KEY_WHEELDOWN] = false;
                    this->KeyStates[KEY_WHEELUP] = false;
                }
            }
        }

        return 0;
    }
}