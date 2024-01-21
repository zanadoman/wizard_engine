#include "SlayEngine.hpp"

namespace slay
{
    engine::mouse::mouse(engine& Engine) : Engine(Engine)
    {
        this->Sensitivity = 0;
        this->X = 0;
        this->Y = 0;
        this->MotionX = 0;
        this->MotionY = 0;
        this->Mode = false;
    }

    double engine::mouse::GetX(double Layer)
    {
        double cache;

        if (Layer < 0)
        {
            printf("engine.mouse.GetY(): Layer must not be less than or equal to 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }

        if (Layer == 0)
        {
            return this->X;
        }
        
        cache = this->Engine.Camera.Zoom * Layer;
        return this->X / cache + this->Engine.Camera.CameraX + this->Engine.Camera.OffsetX / cache;
    }

    double engine::mouse::GetY(double Layer)
    {
        double cache;

        if (Layer < 0)
        {
            printf("engine.mouse.GetX(): Layer must not be less than or equal to 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }

        if (Layer == 0)
        {
            return this->Y;
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
        this->MotionY = y * this->Sensitivity * -1;

        for (uint64 i = 0; i < this->Engine.EventQueue.Length(); i++)
        {
            if (this->Engine.EventQueue[i].type == SDL_MOUSEMOTION)
            {
                this->X = this->Engine.EventQueue[i].motion.x;
                if (this->X < 0)
                {
                    this->X = 0;
                }
                else if (this->Engine.Window.Width <= this->X)
                {
                    this->X = this->Engine.Window.Width - 1;
                }

                this->Y = this->Engine.Render.ScreenY(this->Engine.EventQueue[i].motion.y);
                if (this->Y < 0)
                {
                    this->Y = 0;
                }
                else if (this->Engine.Window.Height <= this->Y)
                {
                    this->Y = this->Engine.Window.Height - 1;
                }
            }
        }

        return 0;
    }
}