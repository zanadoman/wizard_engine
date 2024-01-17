#include "SlayEngine.hpp"

namespace slay
{
    engine::timing::timing(uint16 FPS) : PrevTick(0), TargetFrameTime(1000 / FPS), FrameDelay(0), FrameTime(0), DeltaTime(0) {}

    uint8 engine::timing::UpdateTiming()
    {
        sint64 delay;

        delay = this->PrevTick + this->TargetFrameTime - SDL_GetTicks64();
        if (0 < delay)
        {
            SDL_Delay(delay);
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