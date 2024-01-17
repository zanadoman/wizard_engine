#include "Includes/NeoTypes++.hpp"
#include "Includes/SDL_keyboard.h"
#include "SlayEngine.hpp"

namespace slay
{
    uint8 engine::UpdateInput()
    {
        memCopyTo(this->SDL_KeyStates, this->KeyStates, sizeof(uint8) * KEY_COUNT);



        return 0;
    }

    bool engine::KeyState(keys Key)
    {
        return this->KeyStates[Key];
    }
}