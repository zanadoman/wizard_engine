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

    uint8 engine::SetFPS(uint16 FPS)
    {
        this->TargetFrameTime = 1000 / FPS;

        return 0;
    }

    uint8 engine::CapFPS()
    {
        sint64 delay;

        delay = this->TargetFrameTime - this->DeltaTime;
        if (0 < delay)
        {
            SDL_Delay(delay);
        }

        return 0;
    }

    uint8 engine::UpdateDeltaTime()
    {
        this->DeltaTime = SDL_GetTicks() - this->PrevTick;
        this->PrevTick = SDL_GetTicks();

        if (40 < this->DeltaTime)
        {
            this->DeltaTime = 40;
        }

        return 0;
    }
}