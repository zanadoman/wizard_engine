#include "Includes/SDL_rect.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine& Engine) : Engine(Engine), BindX(NULL), BindY(NULL), BindWidth(NULL), BindHeight(NULL), OffsetX(0), OffsetY(0), CameraX(0), CameraY(0), Zoom(1) {}

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

    uint8 engine::camera::BindActorX(uint64 Actor)
    {
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.BindActorX(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->BindX = &this->Engine.Actors.Actors[Actor]->X;
        this->BindWidth = &this->Engine.Actors.Actors[Actor]->Width;

        return 0;
    }

    uint8 engine::camera::BindActorY(uint64 Actor)
    {
        if (this->Engine.Actors.Actors.Length() <= Actor || this->Engine.Actors.Actors[Actor] == NULL)
        {
            printf("engine.camera.BindActorY(): Actor does not exists\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->BindY = &this->Engine.Actors.Actors[Actor]->Y;
        this->BindHeight = &this->Engine.Actors.Actors[Actor]->Height;

        return 0;
    }

    uint8 engine::camera::UnbindActorX()
    {
        this->BindX = NULL;
        this->BindWidth = NULL;

        return 0;
    }

    uint8 engine::camera::UnbindActorY()
    {
        this->BindY = NULL;
        this->BindHeight = NULL;

        return 0;
    }

    uint8 engine::camera::Update()
    {
        if (this->BindX != NULL)
        {
            this->CameraX = *this->BindX;

            if (this->BindWidth != NULL)
            {
                this->CameraX += *this->BindWidth >> 1;
            }
        }
        else
        {
            this->CameraX = 0;
        }

        if (this->BindY != NULL)
        {
            this->CameraY = *this->BindY;

            if (this->BindHeight != NULL)
            {
                this->CameraY += *this->BindHeight >> 1;
            }
        }
        else
        {
            this->CameraY = 0;
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