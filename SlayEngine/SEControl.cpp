#include "SlayEngine.hpp"

namespace slay
{
    bool engine::Update()
    {
        SDL_Event event;
        uint64 i;

        for (i = 0; SDL_PollEvent(&event); i++)
        {
            if (event.type == SDL_QUIT)
            {
                return false;
            }

            if (this->EventQueue.Length() == i)
            {
                this->EventQueue += {event};
            }
            else
            {
                this->EventQueue[i] = {event};
            }
        }
        if (i < this->EventQueue.Length())
        {
            this->EventQueue.Remove(i, this->EventQueue.Length() - i);
        }

        this->UpdateInput();
        this->Mouse.Update();

        this->UpdateTiming();

        return true;
    }

    uint8 engine::SetFPS(uint16 FPS)
    {
        this->TargetFrameTime = 1000 / FPS;

        return 0;
    }

    uint32 engine::GetDeltaTime()
    {
        return this->DeltaTime;
    }

    uint8 engine::UpdateTiming()
    {
        sint64 delay;

        delay = this->PrevTick + this->TargetFrameTime - SDL_GetTicks64();
        if (0 < delay)
        {
            SDL_Delay(delay);
        }
        this->DeltaTime = SDL_GetTicks64() - this->PrevTick;
        this->PrevTick = SDL_GetTicks64();

        if (40 < DeltaTime)
        {
            DeltaTime = 40;
        }

        return 0;
    }
}