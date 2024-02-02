#include "SlayEngine.hpp"

namespace slay
{
    engine::timing::timing(engine* Engine) : Engine(Engine)
    {
        this->TargetFrameTime = 0;
        this->PrevTick = 0;
        this->GameTime = 0;
        this->RenderTime = 0;
        this->WorkingTime = 0;
        this->IdleTime = 0;
        this->FrameTime = 0;
        this->DeltaTime = 0;
    }

    uint32 engine::timing::GetPrevTick()
    {
        return this->PrevTick;
    }

    uint32 engine::timing::GetGameTime()
    {
        return this->GameTime;
    }

    uint32 engine::timing::GetRenderTime()
    {
        return this->RenderTime;
    }

    uint32 engine::timing::GetWorkingTime()
    {
        return this->WorkingTime;
    }

    sint16 engine::timing::GetIdleTime()
    {
        return this->IdleTime;
    }

    uint32 engine::timing::GetFrameTime()
    {
        return this->FrameTime;
    }

    uint32 engine::timing::GetDeltaTime()
    {
        return this->DeltaTime;
    }

    uint8 engine::timing::Update()
    {
        this->WorkingTime = SDL_GetTicks() - this->PrevTick;
        if (0 < (this->IdleTime = this->PrevTick + this->TargetFrameTime - SDL_GetTicks()))
        {
            SDL_Delay(this->IdleTime);
        }
        this->FrameTime = SDL_GetTicks() - this->PrevTick;
        this->PrevTick = SDL_GetTicks();

        if (40 < (this->DeltaTime = this->FrameTime))
        {
            this->DeltaTime = 40;
        }

        return 0;
    }
}