#include "Includes/SDL_rect.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine& Engine) : Engine(Engine), XActor(0), YActor(0), OffsetX(0), OffsetY(0), CameraX(0), CameraY(0), Zoom(1) {}

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

    uint8 engine::camera::Bind(uint64 Actor)
    {
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

    uint64 engine::camera::GetXActor()
    {
        return this->XActor;
    }

    uint64 engine::camera::GetYActor()
    {
        return this->YActor;
    }

    uint8 engine::camera::Update()
    {
        if (this->Engine.Actors.Actors.Length() <= this->XActor || this->Engine.Actors.Actors[this->XActor] == NULL)
        {
            this->XActor = 0;
        }
        if (this->Engine.Actors.Actors.Length() <= this->YActor || this->Engine.Actors.Actors[this->YActor] == NULL)
        {
            this->YActor = 0;
        }

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

    uint8 engine::camera::Apply(SDL_Rect* Object, double Layer)
    {
        double cache;

        cache = this->Zoom * Layer;
        Object->x = round((Object->x - (this->CameraX + this->OffsetX / cache)) * cache);
        Object->y = round((Object->y - (this->CameraY + this->OffsetY / cache)) * cache);
        Object->w = round(Object->w * cache);
        Object->h = round(Object->h * cache);

        return 0;
    }
}