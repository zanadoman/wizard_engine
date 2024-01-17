#include "SlayEngine.hpp"

namespace slay
{
    engine::timing::timing(engine& Engine) : Engine(Engine), TargetFrameTime(0), PrevTick(0), WorkingTime(0), IdleTime(0), FrameTime(0), DeltaTime(0) {}

    uint64 engine::timing::GetPrevTick()
    {
        return this->PrevTick;
    }

    uint64 engine::timing::GetWorkingTime()
    {
        return this->WorkingTime;
    }

    sint64 engine::timing::GetIdleTime()
    {
        return this->IdleTime;
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
        this->WorkingTime = SDL_GetTicks64() - PrevTick;
        this->IdleTime = this->PrevTick + this->TargetFrameTime - SDL_GetTicks64();
        if (0 < this->IdleTime)
        {
            SDL_Delay(this->IdleTime);
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