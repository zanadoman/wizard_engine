#include "SlayEngine.hpp"

namespace slay
{
    engine::mouse::mouse(engine& Engine) : Engine(Engine), Sensitivity(1), X(0), Y(0), MotionX(0), MotionY(0), Mode(false) {}

    sint32 engine::mouse::GetX()
    {
        return this->X;
    }

    sint32 engine::mouse::GetY()
    {
        return this->Y;
    }

    double engine::mouse::GetX(double Layer)
    {
        double cache;

        if (Layer <= 0)
        {
            printf("engine.mouse.GetY(): Layer must not be less than or equal to 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }
        
        cache = this->Engine.Camera.Zoom * Layer;
        return this->X / cache + this->Engine.Camera.CameraX + this->Engine.Camera.OffsetX / cache;
    }

    double engine::mouse::GetY(double Layer)
    {
        double cache;

        if (Layer <= 0)
        {
            printf("engine.mouse.GetX(): Layer must not be less than or equal to 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }
        
        cache = this->Engine.Camera.Zoom * Layer;
        return this->Y / cache + this->Engine.Camera.CameraY + this->Engine.Camera.OffsetY / cache;
    }

    double engine::mouse::GetMotionX()
    {
        return this->MotionX;
    }

    double engine::mouse::GetMotionY()
    {
        return this->MotionY;
    }

    bool engine::mouse::IsAbsolute()
    {
        return !this->Mode;
    }

    bool engine::mouse::IsRelative()
    {
        return this->Mode;
    }

    uint8 engine::mouse::SetAbsolute()
    {
        SDL_SetRelativeMouseMode(SDL_FALSE);
        this->Mode = false;

        return 0;
    }

    uint8 engine::mouse::SetRelative()
    {
        SDL_SetRelativeMouseMode(SDL_TRUE);
        this->Mode = true;

        return 0;
    }

    uint8 engine::mouse::Update()
    {
        sint32 x, y;

        SDL_GetRelativeMouseState(&x, &y);
        this->MotionX = x * this->Sensitivity;
        this->MotionY = y * this->Sensitivity;

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