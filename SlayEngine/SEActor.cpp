#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::actor(engine* Engine, uint64 Type, double X, double Y, uint16 Width, uint16 Height, double Layer) : Engine(Engine), Colors(Engine, this), Textures(Engine, this), Flipbooks(Engine, this), Texts(Engine, this)
    {
        this->Width = Width;
        this->Height = Height;
        this->HitboxVisible = false;
        this->Type = Type;
        this->X = X;
        this->Y = Y;
        this->Angle = 0;
        this->Layer = Layer;
        this->Depth = 0;
        this->HitboxWidth = Width;
        this->HitboxHeight = Height;
    }

    engine::actors::actor::~actor()
    {
        if (this->Engine->Actors.Actors[this->Engine->Camera.XActor] == this)
        {
            this->Engine->Camera.XActor = 0;
        }
        if (this->Engine->Actors.Actors[this->Engine->Camera.YActor] == this)
        {
            this->Engine->Camera.YActor = 0;
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

    sint32 min(sint32 a, sint32 b)
    {
        return a < b ? a : b;
    }

    sint32 max(sint32 a, sint32 b)
    {
        return b < a ? a : b;
    }

    double engine::actors::actor::SetAngle(double Angle)
    {
        double change, cache;
        sint32 x1, x2, x3, x4;
        sint32 y1, y2, y3, y4;
        sint32 minX, maxX, minY, maxY;
        sint32 tmp1, tmp2;

        change = Angle - this->Angle;

        double half = this->Engine->Vector.Length(0, 0, this->Width, this->Height) / 2;
        double angle1 = this->Engine->Vector.Angle(0, 0, this->Width, this->Height) + Angle;
        double angle2  = this->Engine->Vector.Angle(this->Width, 0, 0, this->Height) + Angle;

        x1 = this->Engine->Vector.TerminalX(this->X, half, angle1);
        x2 = this->Engine->Vector.TerminalX(this->X, half, angle2);
        x3 = this->Engine->Vector.TerminalX(this->X, half, angle1 + 180);
        x4 = this->Engine->Vector.TerminalX(this->X, half, angle2 + 180);

        y1 = this->Engine->Vector.TerminalY(this->Y, half, angle1);
        y2 = this->Engine->Vector.TerminalY(this->Y, half, angle2);
        y3 = this->Engine->Vector.TerminalY(this->Y, half, angle1 + 180);
        y4 = this->Engine->Vector.TerminalY(this->Y, half, angle2 + 180);

        minX = (tmp1 = x1 < x2 ? x1 : x2) < (tmp2 = x3 < x4 ? x3 : x4) ? tmp1 : tmp2;
        maxX = (tmp2 = x4 < x3 ? x3 : x4) < (tmp1 = x2 < x1 ? x1 : x2) ? tmp1 : tmp2;
        minY = (tmp1 = y1 < y2 ? y1 : y2) < (tmp2 = y3 < y4 ? y3 : y4) ? tmp1 : tmp2;
        maxY = (tmp2 = y4 < y3 ? y3 : y4) < (tmp1 = y2 < y1 ? y1 : y2) ? tmp1 : tmp2;

        this->HitboxWidth = maxX - minX;
        this->HitboxHeight = maxY - minY;

        for (uint64 i = 1; i < this->Colors.Colors.Length(); i++)
        {
            if (this->Colors.Colors[i] == NULL)
            {
                continue;
            }

            if (this->Colors.Colors[i]->OffsetLocked)
            {
                cache = this->Colors.Colors[i]->OffsetAngle + Angle;
                this->Colors.Colors[i]->OffsetX = round(this->Engine->Vector.TerminalX(this->X, this->Colors.Colors[i]->OffsetLength, cache) - this->X);
                this->Colors.Colors[i]->OffsetY = round(this->Engine->Vector.TerminalY(this->Y, this->Colors.Colors[i]->OffsetLength, cache) - this->Y);
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
                cache = this->Textures.Textures[i]->OffsetAngle + Angle;
                this->Textures.Textures[i]->OffsetX = round(this->Engine->Vector.TerminalX(this->X, this->Textures.Textures[i]->OffsetLength, cache) - this->X);
                this->Textures.Textures[i]->OffsetY = round(this->Engine->Vector.TerminalY(this->Y, this->Textures.Textures[i]->OffsetLength, cache) - this->Y);
            }

            if (this->Textures.Textures[i]->AngleLocked)
            {
                this->Textures.Textures[i]->Angle += change;
            }
        }

        for (uint64 i = 1; i < this->Flipbooks.Flipbooks.Length(); i++)
        {
            if (this->Flipbooks.Flipbooks[i] == NULL)
            {
                continue;
            }

            if (this->Flipbooks.Flipbooks[i]->OffsetLocked)
            {
                cache = this->Flipbooks.Flipbooks[i]->OffsetAngle + Angle;
                this->Flipbooks.Flipbooks[i]->OffsetX = round(this->Engine->Vector.TerminalX(this->X, this->Flipbooks.Flipbooks[i]->OffsetLength, cache) - this->X);
                this->Flipbooks.Flipbooks[i]->OffsetY = round(this->Engine->Vector.TerminalY(this->Y, this->Flipbooks.Flipbooks[i]->OffsetLength, cache) - this->Y);
            }

            if (this->Flipbooks.Flipbooks[i]->AngleLocked)
            {
                this->Flipbooks.Flipbooks[i]->Angle += change;
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
                cache = this->Texts.Texts[i]->OffsetAngle + Angle;
                this->Texts.Texts[i]->OffsetX = round(this->Engine->Vector.TerminalX(this->X, this->Texts.Texts[i]->OffsetLength, cache) - this->X);
                this->Texts.Texts[i]->OffsetY = round(this->Engine->Vector.TerminalY(this->Y, this->Texts.Texts[i]->OffsetLength, cache) - this->Y);
            }

            if (this->Texts.Texts[i]->AngleLocked)
            {
                this->Texts.Texts[i]->Angle += change;
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

    uint16 engine::actors::actor::GetHitboxWidth()
    {
        return this->HitboxWidth;
    }

    uint16 engine::actors::actor::GetHitboxHeight()
    {
        return this->HitboxHeight;
    }
}