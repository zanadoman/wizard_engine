#include "SlayEngine.hpp"

namespace slay
{
    engine::timing::timing(engine& Engine) : Engine(Engine), PrevTick(0), TargetFrameTime(0), FrameDelay(0), FrameTime(0), DeltaTime(0) {}

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

    uint64 engine::timing::GetDeltaTime()
    {
        return this->DeltaTime;
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

    uint8 engine::timing::Update()
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
            this->DeltaTime = 40;
        }

        return 0;
    }
}