#include "Includes/SDL_keyboard.h"
#include "SlayEngine.hpp"

namespace slay
{
    uint8 engine::UpdateKeyStates()
    {
        const uint8* state = SDL_GetKeyboardState(NULL);

        return 0;
    }
}