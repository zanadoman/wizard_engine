#include "SlayEngine.hpp"

namespace slay
{
    uint64 engine::GetDeltaTime()
    {
        return this->Timing.DeltaTime;
    }

    engine::timing::timing(uint16 FPS) : PrevTick(0), TargetFrameTime(1000 / FPS), FrameDelay(0), FrameTime(0), DeltaTime(0) {}

    uint64 engine::timing::GetPrevTick()
    {
        return this->PrevTick;
    }

    sint64 engine::timing::GetFrameDelay()
    {
        return this->FrameDelay;
    }

    uint64 engine::timing::GetFrameTime()
    {
        return this->FrameTime;
    }

    uint16 engine::timing::GetFPS()
    {
        return 1000 / this->TargetFrameTime;
    }

    uint8 engine::timing::SetFPS(uint16 FPS)
    {
        this->TargetFrameTime = 1000 / FPS;

        return 0;
    }

    uint8 engine::timing::UpdateTiming()
    {
        this->FrameDelay = this->PrevTick + this->TargetFrameTime - SDL_GetTicks64();
        if (0 < this->FrameDelay)
        {
            SDL_Delay(this->FrameDelay);
        }
        this->FrameTime = SDL_GetTicks64() - this->PrevTick;
        this->PrevTick = SDL_GetTicks64();

        if (40 < (this->DeltaTime = this->FrameTime))
        {
            DeltaTime = 40;
        }

        return 0;
    }
}