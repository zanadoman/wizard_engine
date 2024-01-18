#include "Includes/SDL_rect.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine& Engine) : Engine(Engine), ObjectX(NULL), ObjectY(NULL), ObjectWidth(NULL), ObjectHeight(NULL), OffsetX(0), OffsetY(0), CameraX(0), CameraY(0), Zoom(1) {}

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

    uint8 engine::camera::Update()
    {
        if (this->ObjectX != NULL)
        {
            this->CameraX = *this->ObjectX;

            if (this->ObjectWidth != NULL)
            {
                this->CameraX += *this->ObjectWidth >> 1;
            }
        }
        else
        {
            this->CameraX = 0;
        }

        if (this->ObjectY != NULL)
        {
            this->CameraY = *this->ObjectY;

            if (this->ObjectHeight != NULL)
            {
                this->CameraY += *this->ObjectHeight >> 1;
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