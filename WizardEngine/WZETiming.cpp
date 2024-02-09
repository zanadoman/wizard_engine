#include "WizardEngine.hpp"

using namespace neo;

namespace wze
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

    uint8 engine::timing::GetTargetFrameTime()
    {
        return this->TargetFrameTime;
    }

    uint8 engine::timing::SetTargetFrameTime(uint8 TargetFrameTime)
    {
        if (TargetFrameTime == 0)
        {
            printf("wze::engine.timing.SetTargetFrameTime(): TargetFrameTime must not be equal to 0\nParams: TargetFrameTime: %d\n", TargetFrameTime);
            exit(1);
        }

        return this->TargetFrameTime = TargetFrameTime;
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