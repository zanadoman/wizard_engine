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

    uint8 engine::control::UpdateDeltaTime()
    {
        this->DeltaTime = SDL_GetTicks() - this->PrevTick;
        this->PrevTick = SDL_GetTicks();

        if (40 < this->DeltaTime)
        {
            this->DeltaTime = 40;
        }

        return 0;
    }

    uint8 engine::control::CapFPS()
    {
        sint64 delay;

        delay = this->FrameTime - this->DeltaTime;
        if (0 < delay)
        {
            SDL_Delay(delay);
        }

        return 0;
    }
}