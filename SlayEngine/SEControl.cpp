#include "SlayEngine.hpp"

namespace slay
{
    bool engine::Update()
    {
        SDL_Event event;

        this->CapFPS();
        //this->UpdateDeltaTime();

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
        sint64 delay = 0;

        delay = this->PrevTick + this->TargetFrameTime - SDL_GetTicks64();
        if (0 < delay)
        {
            SDL_Delay(delay);
        }
        this->PrevTick = SDL_GetTicks();

        return 0;
    }

    uint32 engine::DeltaTime()
    {
        return this->DeltaTime_;
    }

    uint8 engine::UpdateDeltaTime()
    {
        this->DeltaTime_ = SDL_GetTicks() - this->PrevTick;

        if (40 < this->DeltaTime_)
        {
            this->DeltaTime_ = 40;
        }

        return 0;
    }
}