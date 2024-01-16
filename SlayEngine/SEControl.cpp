#include "SlayEngine.hpp"

namespace slay
{
    bool engine::Update()
    {
        SDL_Event event;

        while (SDL_PollEvent(&event))
        {
            if (event.type == SDL_QUIT)
            {
                return false;
            }
        }

        return true;
    }
}