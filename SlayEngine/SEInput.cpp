#include "Includes/NeoTypes++.hpp"
#include "Includes/SDL_keyboard.h"
#include "SlayEngine.hpp"

namespace slay
{
    uint8 engine::UpdateInput()
    {
        memCopyTo(this->SDL_KeyStates, this->KeyStates, sizeof(uint8) * this->SDL_KeyStatesLength);

        return 0;
    }
}