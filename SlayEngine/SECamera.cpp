#include "SlayEngine.hpp"

namespace slay
{
    engine::camera::camera(engine& Engine) : Engine(Engine), ObjectX(NULL), ObjectY(NULL), ObjectWidth(NULL), ObjectHeight(NULL), OffsetX(0.0), OffsetY(0.0), Zoom(1.0) {}

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

    uint8 engine::camera::Apply(double* X, double* Y, double Layer)
    {
        double cache;

        if (Layer <= 0)
        {
            printf("engine.camera.Apply(): Layer must not be less than or equal to 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }

        cache = this->Zoom * Layer;
        if (X != NULL)
        {
            *X -= (this->CameraX + (this->OffsetX / cache)) * cache;
        }
        if (Y != NULL)
        {
            *Y -= (this->CameraY + (this->OffsetY / cache)) * cache;
        }

        return 0;
    }

    uint8 engine::camera::Apply(double* X, double* Y, uint16* Width, uint16* Height, double Layer)
    {


        return 0;
    }
}