#include "Includes/NeoTypes++.hpp"
#include "SlayEngine.hpp"
#include <math.h>

namespace slay
{
    engine::actors::actor::actor(engine& Engine, uint64 Type) : Engine(Engine), Colors(Engine, *this), Textures(Engine, *this), Texts(Engine, *this)
    {
        this->Width = 0;
        this->Height = 0;
        this->Type = Type;
        this->X = 0;
        this->Y = 0;
        this->Angle = 0;
        this->Layer = 0;
        this->Depth = 0;
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

    double engine::actors::actor::GetAngle()
    {
        return this->Angle;
    }

    double engine::actors::actor::SetAngle(double Angle)
    {
        double x, y, cache;

        cache = Angle - this->Angle;

        for (uint64 i = 1; i < this->Colors.Colors.Length(); i++)
        {
            if (this->Colors.Colors[i] == NULL)
            {
                continue;
            }

            if (this->Colors.Colors[i]->OffsetLocked)
            {
                this->Engine.Vector.Terminal(this->X, this->Y, this->Colors.Colors[i]->OffsetLength, this->Colors.Colors[i]->OffsetAngle + Angle, &x, &y);
                this->Colors.Colors[i]->OffsetX = round(x - this->X);
                this->Colors.Colors[i]->OffsetY = round(y - this->Y);
            }
        }

        for (uint64 i = 1; i < this->Textures.Textures.Length(); i++)
        {
            if (this->Textures.Textures[i] == NULL)
            {
                continue;
            }

            if (this->Textures.Textures[i]->OffsetLocked)
            {
                this->Engine.Vector.Terminal(this->X, this->Y, this->Textures.Textures[i]->OffsetLength, this->Textures.Textures[i]->OffsetAngle + Angle, &x, &y);
                this->Textures.Textures[i]->OffsetX = round(x - this->X);
                this->Textures.Textures[i]->OffsetY = round(y - this->Y);
            }

            if (this->Textures.Textures[i]->AngleLocked)
            {
                this->Textures.Textures[i]->Angle += cache;
            }
        }

        for (uint64 i = 1; i < this->Texts.Texts.Length(); i++)
        {
            if (this->Texts.Texts[i] == NULL)
            {
                continue;
            }

            if (this->Texts.Texts[i]->OffsetLocked)
            {
                this->Engine.Vector.Terminal(this->X, this->Y, this->Texts.Texts[i]->OffsetLength, this->Texts.Texts[i]->OffsetAngle + Angle, &x, &y);
                this->Texts.Texts[i]->OffsetX = round(x - this->X);
                this->Texts.Texts[i]->OffsetY = round(y - this->Y);
            }

            if (this->Texts.Texts[i]->AngleLocked)
            {
                this->Texts.Texts[i]->Angle += cache;
            }
        }

        return this->Angle = Angle;
    }

    double engine::actors::actor::GetLayer()
    {
        return this->Layer;
    }

    double engine::actors::actor::SetLayer(double Layer)
    {
        if (Layer < 0)
        {
            printf("slay::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }

        return this->Layer = Layer;
    }

    double engine::actors::actor::GetDepth()
    {
        return this->Depth;
    }

    double engine::actors::actor::SetDepth(double Depth)
    {
        if (Depth < 0)
        {
            printf("slay::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n", Depth);
            exit(1);
        }

        return this->Depth = Depth;
    }
}