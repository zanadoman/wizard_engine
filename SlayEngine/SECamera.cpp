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


        return 0;
    }

    uint8 engine::camera::Apply(double* X, double* Y, double Layer)
    {
        double cache;



        cache = this->Zoom * (Layer - 1);

        return 0;
    }

    uint8 engine::camera::Apply(double* X, double* Y, uint16* Width, uint16* Height, double Layer)
    {


        return 0;
    }
}