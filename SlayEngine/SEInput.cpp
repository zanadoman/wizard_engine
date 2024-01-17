#include "SlayEngine.hpp"

namespace slay
{
    uint8 engine::UpdateInput()
    {
        uint32 MouseState;

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

        for (uint64 i = 0; i < this->EventQueue.Length(); i++)
        {
            if (this->EventQueue[i].type == SDL_MOUSEWHEEL)
            {
                if (this->EventQueue[i].wheel.y < 0)
                {
                    this->KeyStates[KEY_WHEELDOWN] = true;
                    this->KeyStates[KEY_WHEELUP] = false;
                }
                else if (0 < this->EventQueue[i].wheel.y)
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

    bool engine::GetKey(keys Key)
    {
        return this->KeyStates[Key];
    }
}