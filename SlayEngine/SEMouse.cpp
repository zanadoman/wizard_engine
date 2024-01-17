#include "Includes/SDL_events.h"
#include "Includes/SDL_mouse.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::mouse::mouse(engine& Engine) : Engine(Engine), Sensitivity(1) {}

    sint32 engine::mouse::GetX()
    {
        return this->X;
    }

    sint32 engine::mouse::GetY()
    {
        return this->Y;
    }

    uint8 engine::mouse::Update()
    {
        SDL_GetRelativeMouseState(&this->MovementX, &this->MovementY);
        this->MovementX *= this->Sensitivity;
        this->MovementY *= this->Sensitivity;

        for (uint64 i = 0; i < Engine.EventQueue.Length(); i++)
        {
            if (Engine.EventQueue[i].type == SDL_MOUSEMOTION)
            {
                this->X = Engine.EventQueue[i].motion.x;
                if (this->X < 0)
                {
                    this->X = 0;
                }
                else if (Engine.Window.Width <= this->X)
                {
                    this->X = Engine.Window.Width - 1;
                }

                this->Y = Engine.EventQueue[i].motion.y;
                if (this->Y < 0)
                {
                    this->Y = 0;
                }
                else if (Engine.Window.Height <= this->Y)
                {
                    this->Y = Engine.Window.Height - 1;
                }
            }
        }

        return 0;
    }
}