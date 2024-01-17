#include "Includes/SDL_events.h"
#include "Includes/SDL_mouse.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::mouse::mouse(engine& Engine) : Engine(Engine), Sensitivity(1) {}

    uint8 engine::mouse::SetSensitivity(double Sensitivity)
    {
        this->Sensitivity = Sensitivity;

        return 0;
    }

    sint32 engine::mouse::X()
    {
        return this->X_;
    }

    sint32 engine::mouse::Y()
    {
        return this->Y_;
    }

    uint8 engine::mouse::Update()
    {
        SDL_GetRelativeMouseState(&this->MovementX_, &this->MovementY_);

        for (uint64 i = 0; i < Engine.EventQueue.Length(); i++)
        {
            if (Engine.EventQueue[i].type == SDL_MOUSEMOTION)
            {
                this->X_ = Engine.EventQueue[i].motion.x;
                if (this->X_ < 0)
                {
                    this->X_ = 0;
                }
                else if (Engine.Window.Width <= this->X_)
                {
                    this->X_ = Engine.Window.Width - 1;
                }

                this->Y_ = Engine.EventQueue[i].motion.y;
                if (this->Y_ < 0)
                {
                    this->Y_ = 0;
                }
                else if (Engine.Window.Height <= this->Y_)
                {
                    this->Y_= Engine.Window.Height - 1;
                }
            }
        }

        return 0;
    }
}