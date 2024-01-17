#include "Includes/SDL_events.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::mouse::mouse(engine& Engine) : Engine(Engine), Sensitivity(1) {}

    uint8 engine::mouse::SetSensitivity(double Sensitivity)
    {
        this->Sensitivity = Sensitivity;

        return 0;
    }

    uint8 engine::mouse::Update()
    {
        for (uint64 i = 0; i < Engine.EventQueue.Length(); i++)
        {
            if (Engine.EventQueue[i].type == SDL_MOUSEMOTION)
            {
                this->X = Engine.EventQueue[i].motion.x;
                if (this->X < 0)
                {
                    this->X = 0;
                }
                else if (Engine.Window.Width < this->X)
                {
                    this->X = Engine.Window.Width;
                }

                this->Y = Engine.EventQueue[i].motion.y;
                if (this->Y < 0)
                {
                    this->Y = 0;
                }
                else if (Engine.Window.Height < this->Y)
                {
                    this->Y = Engine.Window.Height;
                }
            }
        }

        return 0;
    }
}