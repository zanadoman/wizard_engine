#include "Includes/SDL_rect.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine& Engine) : Engine(Engine), XBinded(false), YBinded(false), BindedXActor(0), BindedYActor(0), OffsetX(0), OffsetY(0), CameraX(0), CameraY(0), Zoom(1) {}

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

    uint8 engine::camera::BindX(uint64 Actor)
    {
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.BindX(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->XBinded = true;
        this->BindedXActor = Actor;

        return 0;
    }

    uint8 engine::camera::BindY(uint64 Actor)
    {
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.BindY(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->YBinded = true;
        this->BindedYActor = Actor;

        return 0;
    }

    uint8 engine::camera::UnbindX()
    {
        this->XBinded = false;
        this->BindedXActor = 0;

        return 0;
    }

    uint8 engine::camera::UnbindY()
    {
        this->YBinded = false;
        this->BindedYActor = 0;

        return 0;
    }

    uint8 engine::camera::Update()
    {
        if (XBinded)
        {
            this->CameraX = this->Engine.Actors.Actors[this->BindedXActor]->X + (this->Engine.Actors.Actors[this->BindedXActor]->Width >> 1);
        }
        if (YBinded)
        {
            this->CameraY = this->Engine.Actors.Actors[this->BindedYActor]->Y + (this->Engine.Actors.Actors[this->BindedYActor]->Height >> 1);
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