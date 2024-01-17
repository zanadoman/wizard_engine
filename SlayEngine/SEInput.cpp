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

        return 0;
    }

    bool engine::KeyState(keys Key)
    {
        return this->KeyStates[Key];
    }
}