#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::actor(engine& Engine, uint64 Type) : Engine(Engine), Colors(Engine, *this), Textures(Engine, *this), Texts(Engine, *this)
    {
        this->Type = Type;
        this->X = 0;
        this->Y = 0;
        this->Layer = 1;
    }

    engine::actors::actor::~actor()
    {
        if (this->Engine.Actors.Actors[this->Engine.Camera.XActor] == this)
        {
            this->Engine.Camera.XActor = 0;
        }
        if (this->Engine.Actors.Actors[this->Engine.Camera.YActor] == this)
        {
            this->Engine.Camera.YActor = 0;
        }
    }

    uint64 engine::actors::actor::GetType()
    {
        return this->Type;
    }

    double engine::actors::actor::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::SetX(double X)
    {
        return this->X = X;
    }

    double engine::actors::actor::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::SetY(double Y)
    {
        return this->Y = Y;
    }

    double engine::actors::actor::GetLayer()
    {
        return this->Layer;
    }

    double engine::actors::actor::SetLayer(double Layer)
    {
        if (Layer < 0)
        {
            printf("slay::engine.actors.actor.SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }

        return this->Layer = Layer;
    }
}