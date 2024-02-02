#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine* Engine) : Engine(Engine)
    {
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->XActor = 0;
        this->YActor = 0;
        this->CameraX = 0;
        this->CameraY = 0;
        this->Zoom = 1;
    }

    double engine::camera::GetZoom()
    {
        return this->Zoom;
    }

    double engine::camera::SetZoom(double Zoom)
    {
        if (Zoom <= 0)
        {
            printf("slay::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }

        return this->Zoom = Zoom;
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
            printf("slay::engine.camera.Bind(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= Actor || this->Engine->Actors.Actors[Actor] == NULL)
        {
            printf("slay::engine.camera.Bind(): Actor does not exist\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors[Actor]->Layer == 0)
        {
            printf("slay::engine.camera.Bind(): Actor must be in layer 0\nParams: Actor: %lld\n", Actor);
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
            printf("slay::engine.camera.BindX(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= Actor || this->Engine->Actors.Actors[Actor] == NULL)
        {
            printf("slay::engine.camera.BindX(): Actor does not exist\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors[Actor]->Layer == 0)
        {
            printf("slay::engine.camera.BindX(): Actor must be in layer 0\nParams: Actor: %lld\n", Actor);
            exit(1);
        }

        this->XActor = Actor;

        return 0;
    }

    uint8 engine::camera::BindY(uint64 Actor)
    {
        if (Actor == 0)
        {
            printf("slay::engine.camera.BindY(): Illegal to bind to NULL Actor\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors.Length() <= Actor || this->Engine->Actors.Actors[Actor] == NULL)
        {
            printf("slay::engine.camera.BindY(): Actor does not exist\nParams: Actor: %lld\n", Actor);
            exit(1);
        }
        if (this->Engine->Actors.Actors[Actor]->Layer == 0)
        {
            printf("slay::engine.camera.BindY(): Actor must be in layer 0\nParams: Actor: %lld\n", Actor);
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
            this->CameraX = this->Engine->Actors.Actors[this->XActor]->X;
        }
        if (this->YActor != 0)
        {
            this->CameraY = this->Engine->Actors.Actors[this->YActor]->Y;
        }

        return 0;
    }

    SDL_Rect engine::camera::Transform(double X, double Y, uint16 Width, uint16 Height, double Layer)
    {
        SDL_Rect result;

        double cache;

        if (Layer == 0)
        {
            result.w = Width;
            result.h = Height;
            result.x = (sint32)round(X) - (result.w >> 1);
            result.y = -((sint32)round(Y) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }
        else
        {
            cache = this->Zoom * Layer;
            result.w = round(Width * cache);
            result.h = round(Height * cache);
            result.x = (sint32)round((X - (this->CameraX + this->OffsetX / cache)) * cache) - (result.w >> 1);
            result.y = -((sint32)round((Y - (this->CameraY + this->OffsetY / cache)) * cache) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }

        return result;
    }
}