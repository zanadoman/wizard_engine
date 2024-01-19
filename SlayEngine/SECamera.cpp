#include "Includes/SDL_rect.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine& Engine) : Engine(Engine), OffsetX(0), OffsetY(0), XActor(0), YActor(0), CameraX(0), CameraY(0), Zoom(1) {}

    double engine::camera::GetZoom()
    {
        return this->Zoom;
    }

    uint8 engine::camera::SetZoom(double Zoom)
    {
        if (Zoom <= 0)
        {
            printf("engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }

        this->Zoom = Zoom;

        return 0;
    }

    uint64 engine::camera::GetXActor()
    {
        return this->XActor;
    }

    uint64 engine::camera::GetYActor()
    {
        return this->YActor;
    }

    uint8 engine::camera::Bind(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.Bind(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->XActor = Actor;
        this->YActor = Actor;

        return 0;
    }

    uint8 engine::camera::BindX(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.BindX(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->XActor = Actor;

        return 0;
    }

    uint8 engine::camera::BindY(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.BindY(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->YActor = Actor;

        return 0;
    }

    uint8 engine::camera::Unbind()
    {
        this->XActor = 0;
        this->YActor = 0;

        return 0;
    }

    uint8 engine::camera::UnbindX()
    {
        this->XActor = 0;

        return 0;
    }

    uint8 engine::camera::UnbindY()
    {
        this->YActor = 0;

        return 0;
    }

    uint8 engine::camera::Update()
    {
        if (this->XActor != 0)
        {
            this->CameraX = this->Engine.Actors.Actors[this->XActor]->X + (this->Engine.Actors.Actors[this->XActor]->Width >> 1);
        }
        if (this->YActor != 0)
        {
            this->CameraY = this->Engine.Actors.Actors[this->YActor]->Y + (this->Engine.Actors.Actors[this->YActor]->Height >> 1);
        }

        return 0;
    }

    SDL_Rect engine::camera::Transform(double X, double Y, uint16 Width, uint16 Height, double Layer)
    {
        SDL_Rect result;

        double cache;

        cache = this->Zoom * Layer;
        result.x = round((X - (this->CameraX + this->OffsetX / cache)) * cache);
        result.y = round((Y - (this->CameraY + this->OffsetY / cache)) * cache);
        result.w = round(Width * cache);
        result.h = round(Height * cache);

        return result;
    }
}