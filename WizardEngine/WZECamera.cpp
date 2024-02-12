#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::camera::camera(engine* Engine) : Engine(Engine)
    {
        this->OriginX = 0;
        this->OriginY = 0;
        this->BaseOffsetX = 0;
        this->OffsetX = 0;
        this->BaseOffsetY = 0;
        this->OffsetY = 0;
        this->Zoom = 1;
        this->XActor = 0;
        this->YActor = 0;
    }

    double engine::camera::GetOriginX()
    {
        return this->OriginX;
    }

    double engine::camera::SetOriginX(double OriginX)
    {
        if (OriginX != OriginX)
        {
            printf("wze::engine.camera.SetOriginX(): OriginX must not be NaN\nParams: OriginX: %lf\n", OriginX);
            exit(1);
        }

        if (this->XActor != 0)
        {
            this->OffsetX = OriginX - this->Engine->Actors.Actors[this->XActor]->X - this->BaseOffsetX;
        }

        return this->OriginX = OriginX;
    }

    double engine::camera::GetOriginY()
    {
        return this->OriginY;
    }

    double engine::camera::SetOriginY(double OriginY)
    {
        if (OriginY != OriginY)
        {
            printf("wze::engine.camera.SetOriginY(): OriginY must not be NaN\nParams: OriginY: %lf\n", OriginY);
            exit(1);
        }

        if (this->YActor != 0)
        {
            this->OffsetY = OriginY - this->Engine->Actors.Actors[this->YActor]->Y - this->BaseOffsetY;
        }

        return this->OriginY =OriginY;
    }

    double engine::camera::GetOffsetX()
    {
        return this->OffsetX;
    }

    double engine::camera::SetOffsetX(double OffsetX)
    {
        if (OffsetX != OffsetX)
        {
            printf("wze::engine.camera.SetOffsetX(): OffsetX must not be NaN\nParams: OffsetX: %lf\n", OffsetX);
            exit(1);
        }

        this->OffsetX = OffsetX - this->BaseOffsetX;

        return OffsetX;
    }

    double engine::camera::GetOffsetY()
    {
        return this->OffsetY;
    }

    double engine::camera::SetOffsetY(double OffsetY)
    {
        if (OffsetY != OffsetY)
        {
            printf("wze::engine.camera.SetOffsetY(): OffsetY must not be NaN\nParams: OffsetY: %lf\n", OffsetY);
            exit(1);
        }

        this->OffsetY = OffsetY - this->BaseOffsetY;

        return OffsetY;
    }

    double engine::camera::GetZoom()
    {
        return this->Zoom;
    }

    double engine::camera::SetZoom(double Zoom)
    {
        if (Zoom != Zoom)
        {
            printf("wze::engine.camera.SetZoom(): Zoom must not be NaN\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }
        if (Zoom <= 0)
        {
            printf("wze::engine.camera.SetZoom(): Zoom must not be less than or equal to 0\nParams: Zoom: %lf\n", Zoom);
            exit(1);
        }

        return this->Zoom = Zoom;
    }

    uint64 engine::camera::Bind(uint64 ActorID)
    {
        if (ActorID == 0)
        {
            this->XActor = ActorID;
            this->YActor = ActorID;

            return ActorID;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.camera.Bind(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Layer == 0)
        {
            printf("wze::engine.camera.Bind(): Actor must not be in Layer 0\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        this->XActor = ActorID;
        this->YActor = ActorID;

        return ActorID;
    }

    uint64 engine::camera::BindX(uint64 ActorID)
    {
        if (ActorID == 0)
        {
            return this->XActor = ActorID;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.camera.BindX(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Layer == 0)
        {
            printf("wze::engine.camera.BindX(): Actor must not be in Layer 0\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        return this->XActor = ActorID;
    }

    uint64 engine::camera::BindY(uint64 ActorID)
    {
        if (ActorID == 0)
        {
            return this->YActor = ActorID;
        }
        if (this->Engine->Actors.Actors.Length() <= ActorID || this->Engine->Actors.Actors[ActorID] == NULL)
        {
            printf("wze::engine.camera.BindY(): Actor does not exist\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }
        if (this->Engine->Actors.Actors[ActorID]->Layer == 0)
        {
            printf("wze::engine.camera.BindY(): Actor must not be in Layer 0\nParams: ActorID: %lld\n", ActorID);
            exit(1);
        }

        return this->YActor = ActorID;
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
        if (this->XActor != 0)
        {
            this->OriginX = this->Engine->Actors.Actors[this->XActor]->X;
        }
        if (this->YActor != 0)
        {
            this->OriginY = this->Engine->Actors.Actors[this->YActor]->Y;
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
            result.x = (sint32)floor(X) - (result.w >> 1);
            result.y = -((sint32)floor(Y) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }
        else
        {
            cache = this->Zoom * Layer;
            result.w = floor(Width * cache);
            result.h = floor(Height * cache);
            result.x = (sint32)floor((X - (this->OriginX + this->OffsetX / cache)) * cache) - (result.w >> 1);
            result.y = -((sint32)floor((Y - (this->OriginY + this->OffsetY / cache)) * cache) - this->Engine->Render.RenderHeight) - (result.h >> 1);
        }

        return result;
    }
}