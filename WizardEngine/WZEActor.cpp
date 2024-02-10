#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::actors::actor::actor(engine* Engine, void* Data, uint64 Type, double X, double Y, uint16 Width, uint16 Height, double Layer) : Engine(Engine), Colors(Engine, this), Textures(Engine, this), Flipbooks(Engine, this), Texts(Engine, this), Overlapboxes(Engine, this)
    {
        this->Visible = true;
        this->Force = 0;
        this->Resistance = 0;
        this->HitboxVisible = false;
        this->Data = Data;
        this->Type = Type;
        this->X = X;
        this->Y = Y;
        this->PrevX = X;
        this->PrevY = Y;
        this->Width = Width;
        this->Height = Height;
        this->Angle = 0;
        this->Layer = Layer;
        this->Depth = 0;
        this->CollisionLayer = 0;
        this->HitboxWidth = Width;
        this->HitboxHeight = Height;
        this->PrevHitboxWidth = Width;
        this->PrevHitboxHeight = Height;
        this->HitboxMedianLength = engine::vector::Length(0, 0, Width, Height) / 2;
        this->HitboxMedian1Angle = this->HitboxMedianLength != 0 ? engine::vector::Angle(0, 0, Width, Height) : 0;
        this->HitboxMedian2Angle = this->HitboxMedianLength != 0 ? engine::vector::Angle(Width, 0, 0, Height) : 0;
    }

    engine::actors::actor::~actor()
    {
        for (uint64 i = 0; i < this->Engine->Collision.CollisionLayers[this->CollisionLayer].Length(); i++)
        {
            if (this->Engine->Collision.CollisionLayers[this->CollisionLayer][i] == this)
            {
                this->Engine->Collision.CollisionLayers[this->CollisionLayer].Remove(i, 1);
                break;
            }
        }

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
        if (X != X)
        {
            printf("wze::engine.actors[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->X = X;
        this->Engine->Collision.ResolveCollisionLayer(this->CollisionLayer, this);

        return this->X;
    }

    double engine::actors::actor::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->Y = Y;
        this->Engine->Collision.ResolveCollisionLayer(this->CollisionLayer, this);

        return this->Y;
    }

    uint16 engine::actors::actor::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::SetWidth(uint16 Width)
    {
        this->HitboxMedianLength = engine::vector::Length(0, 0, Width, this->Height) / 2;
        this->HitboxMedian1Angle = this->HitboxMedianLength != 0 ? engine::vector::Angle(0, 0, Width, this->Height) : 0;
        this->HitboxMedian2Angle = this->HitboxMedianLength != 0 ? engine::vector::Angle(Width, 0, 0, this->Height) : 0;

        this->Width = Width;
        this->UpdateHitboxScale();
        this->Engine->Collision.ResolveCollisionLayer(this->CollisionLayer, this);

        return this->Width;
    }

    uint16 engine::actors::actor::GetHeight()
    {
        return this->Height;
    }

    uint16 engine::actors::actor::SetHeight(uint16 Height)
    {
        this->HitboxMedianLength = engine::vector::Length(0, 0, this->Width, Height) / 2;
        this->HitboxMedian1Angle = this->HitboxMedianLength != 0 ? engine::vector::Angle(0, 0, this->Width, Height) : 0;
        this->HitboxMedian2Angle = this->HitboxMedianLength != 0 ? engine::vector::Angle(this->Width, 0, 0, Height) : 0;

        this->Height = Height;
        this->UpdateHitboxScale();
        this->Engine->Collision.ResolveCollisionLayer(this->CollisionLayer, this);

        return this->Height;
    }

    double engine::actors::actor::GetAngle()
    {
        return this->Angle;
    }

    double engine::actors::actor::SetAngle(double Angle)
    {
        double change;

        if (Angle != Angle)
        {
            printf("wze::engine.actors[].SetAngle(): Angle must not be NaN\nParams: Angle: %lf\n", Angle);
            exit(1);
        }

        change = Angle - this->Angle;

        for (uint64 i = 1; i < this->Colors.Colors.Length(); i++)
        {
            if (this->Colors.Colors[i] == NULL)
            {
                continue;
            }

            if (this->Colors.Colors[i]->OffsetAngleLocked)
            {
                this->Colors.Colors[i]->OffsetAngle += change;
            }
        }

        for (uint64 i = 1; i < this->Textures.Textures.Length(); i++)
        {
            if (this->Textures.Textures[i] == NULL)
            {
                continue;
            }

            if (this->Textures.Textures[i]->AngleLocked)
            {
                this->Textures.Textures[i]->Angle += change;
            }

            if (this->Textures.Textures[i]->OffsetAngleLocked)
            {
                this->Textures.Textures[i]->OffsetAngle += change;
            }
        }

        for (uint64 i = 1; i < this->Flipbooks.Flipbooks.Length(); i++)
        {
            if (this->Flipbooks.Flipbooks[i] == NULL)
            {
                continue;
            }

            if (this->Flipbooks.Flipbooks[i]->AngleLocked)
            {
                this->Flipbooks.Flipbooks[i]->Angle += change;
            }

            if (this->Flipbooks.Flipbooks[i]->OffsetAngleLocked)
            {
                this->Flipbooks.Flipbooks[i]->OffsetAngle += change;
            }
        }

        for (uint64 i = 1; i < this->Texts.Texts.Length(); i++)
        {
            if (this->Texts.Texts[i] == NULL)
            {
                continue;
            }

            if (this->Texts.Texts[i]->AngleLocked)
            {
                this->Texts.Texts[i]->Angle += change;
            }

            if (this->Texts.Texts[i]->OffsetAngleLocked)
            {
                this->Texts.Texts[i]->OffsetAngle += change;
            }
        }

        for (uint64 i = 1; i < this->Overlapboxes.Overlapboxes.Length(); i++)
        {
            if (this->Overlapboxes.Overlapboxes[i] == NULL)
            {
                continue;
            }

            if (this->Overlapboxes.Overlapboxes[i]->AngleLocked)
            {
                this->Overlapboxes.Overlapboxes[i]->Angle += change;
                this->Overlapboxes.Overlapboxes[i]->UpdateOverlapboxActiveScale();
            }

            if (this->Overlapboxes.Overlapboxes[i]->OffsetAngleLocked)
            {
                this->Overlapboxes.Overlapboxes[i]->OffsetAngle += change;
            }
        }

        this->Angle = Angle;
        this->UpdateHitboxScale();
        this->Engine->Collision.ResolveCollisionLayer(this->CollisionLayer, this);

        return this->Angle;
    }

    double engine::actors::actor::GetLayer()
    {
        return this->Layer;
    }

    double engine::actors::actor::SetLayer(double Layer)
    {
        if (Layer != Layer)
        {
            printf("wze::engine.actors[].SetLayer(): Layer must not be NaN\nParams: Layer: %lf\n", Layer);
            exit(1);
        }
        if (Layer < 0)
        {
            printf("wze::engine.actors[].SetLayer(): Layer must not be less than 0\nParams: Layer: %lf\n", Layer);
            exit(1);
        }

        if (Layer == 0)
        {
            this->Depth = 0;

            if (this->Engine->Actors.Actors[this->Engine->Camera.XActor] == this)
            {
                this->Engine->Camera.XActor = 0;
            }
            if (this->Engine->Actors.Actors[this->Engine->Camera.YActor] == this)
            {
                this->Engine->Camera.YActor = 0;
            }
        }

        return this->Layer = Layer;
    }

    double engine::actors::actor::GetDepth()
    {
        return this->Depth;
    }

    double engine::actors::actor::SetDepth(double Depth)
    {
        if (Depth != Depth)
        {
            printf("wze::engine.actors[].SetDepth(): Depth must not be NaN\nParams: Depth: %lf\n", Depth);
            exit(1);
        }
        if (Depth < 0)
        {
            printf("wze::engine::actors[].SetDepth(): Depth must not be less than 0\nParams: Depth: %lf\n", Depth);
            exit(1);
        }
        if (0 < Depth && this->Layer == 0)
        {
            printf("wze::engine.actors[].SetDepth(): Illegal to set non-zero Depth when Layer is 0\nParams: Depth: %lf\n", Depth);
            exit(1);
        }

        return this->Depth = Depth;
    }

    uint8 engine::actors::actor::GetCollisionLayer()
    {
        return this->CollisionLayer;
    }

    uint8 engine::actors::actor::SetCollisionLayer(uint8 CollisionLayer)
    {
        for (uint64 i = 0; i < this->Engine->Collision.CollisionLayers[this->CollisionLayer].Length(); i++)
        {
            if (this->Engine->Collision.CollisionLayers[this->CollisionLayer][i] == this)
            {
                this->Engine->Collision.CollisionLayers[this->CollisionLayer].Remove(i, 1);
                break;
            }
        }
        
        if (CollisionLayer != 0)
        {
            this->Engine->Collision.CollisionLayers[CollisionLayer] += {this};
        }

        return this->CollisionLayer = CollisionLayer;
    }

    uint16 engine::actors::actor::GetHitboxWidth()
    {
        return this->HitboxWidth;
    }

    uint16 engine::actors::actor::GetHitboxHeight()
    {
        return this->HitboxHeight;
    }

    uint8 engine::actors::actor::UpdateHitboxScale()
    {
        double MedAngle1, MedAngle2, MedAngle1_180, MedAngle2_180;
        sint32 x1, x2, x3, x4;
        sint32 y1, y2, y3, y4;
        sint32 minX, maxX, minY, maxY;
        sint32 tmp1, tmp2;

        MedAngle1 = this->Angle + this->HitboxMedian1Angle;
        MedAngle2 = this->Angle + this->HitboxMedian2Angle;
        MedAngle1_180 = MedAngle1 + 180;
        MedAngle2_180 =  MedAngle2 + 180;

        x1 = round(engine::vector::TerminalX(0, this->HitboxMedianLength, MedAngle1));
        x2 = round(engine::vector::TerminalX(0, this->HitboxMedianLength, MedAngle2));
        x3 = round(engine::vector::TerminalX(0, this->HitboxMedianLength, MedAngle1_180));
        x4 = round(engine::vector::TerminalX(0, this->HitboxMedianLength, MedAngle2_180));

        y1 = round(engine::vector::TerminalY(0, this->HitboxMedianLength, MedAngle1));
        y2 = round(engine::vector::TerminalY(0, this->HitboxMedianLength, MedAngle2));
        y3 = round(engine::vector::TerminalY(0, this->HitboxMedianLength, MedAngle1_180));
        y4 = round(engine::vector::TerminalY(0, this->HitboxMedianLength, MedAngle2_180));

        minX = (tmp1 = x1 < x2 ? x1 : x2) < (tmp2 = x3 < x4 ? x3 : x4) ? tmp1 : tmp2;
        maxX = (tmp2 = x4 < x3 ? x3 : x4) < (tmp1 = x2 < x1 ? x1 : x2) ? tmp1 : tmp2;
        minY = (tmp1 = y1 < y2 ? y1 : y2) < (tmp2 = y3 < y4 ? y3 : y4) ? tmp1 : tmp2;
        maxY = (tmp2 = y4 < y3 ? y3 : y4) < (tmp1 = y2 < y1 ? y1 : y2) ? tmp1 : tmp2;

        this->HitboxWidth = maxX - minX;
        this->HitboxHeight = maxY - minY;

        return 0;
    }

    uint8 engine::actors::actor::UpdateMembersPosition()
    {
        for (uint64 i = 1; i < this->Colors.Colors.Length(); i++)
        {
            if (this->Colors.Colors[i] == NULL)
            {
                continue;
            }

            this->Colors.Colors[i]->X = engine::vector::TerminalX(this->X, this->Colors.Colors[i]->OffsetLength, this->Colors.Colors[i]->OffsetAngle);
            this->Colors.Colors[i]->Y = engine::vector::TerminalY(this->Y, this->Colors.Colors[i]->OffsetLength, this->Colors.Colors[i]->OffsetAngle);
        }

        for (uint64 i = 1; i < this->Textures.Textures.Length(); i++)
        {
            if (this->Textures.Textures[i] == NULL)
            {
                continue;
            }

            this->Textures.Textures[i]->X = engine::vector::TerminalX(this->X, this->Textures.Textures[i]->OffsetLength, this->Textures.Textures[i]->OffsetAngle);
            this->Textures.Textures[i]->Y = engine::vector::TerminalY(this->Y, this->Textures.Textures[i]->OffsetLength, this->Textures.Textures[i]->OffsetAngle);
        }

        for (uint64 i = 1; i < this->Flipbooks.Flipbooks.Length(); i++)
        {
            if (this->Flipbooks.Flipbooks[i] == NULL)
            {
                continue;
            }

            this->Flipbooks.Flipbooks[i]->X = engine::vector::TerminalX(this->X, this->Flipbooks.Flipbooks[i]->OffsetLength, this->Flipbooks.Flipbooks[i]->OffsetAngle);
            this->Flipbooks.Flipbooks[i]->Y = engine::vector::TerminalY(this->Y, this->Flipbooks.Flipbooks[i]->OffsetLength, this->Flipbooks.Flipbooks[i]->OffsetAngle);
        }

        for (uint64 i = 1; i < this->Texts.Texts.Length(); i++)
        {
            if (this->Texts.Texts[i] == NULL)
            {
                continue;
            }

            this->Texts.Texts[i]->X = engine::vector::TerminalX(this->X, this->Texts.Texts[i]->OffsetLength, this->Texts.Texts[i]->OffsetAngle);
            this->Texts.Texts[i]->Y = engine::vector::TerminalY(this->Y, this->Texts.Texts[i]->OffsetLength, this->Texts.Texts[i]->OffsetAngle);
        }

        for (uint64 i = 1; i < this->Overlapboxes.Overlapboxes.Length(); i++)
        {
            if (this->Overlapboxes.Overlapboxes[i] == NULL)
            {
                continue;
            }

            this->Overlapboxes.Overlapboxes[i]->X = engine::vector::TerminalX(this->X, this->Overlapboxes.Overlapboxes[i]->OffsetLength, this->Overlapboxes.Overlapboxes[i]->OffsetAngle);
            this->Overlapboxes.Overlapboxes[i]->Y = engine::vector::TerminalY(this->Y, this->Overlapboxes.Overlapboxes[i]->OffsetLength, this->Overlapboxes.Overlapboxes[i]->OffsetAngle);
        }

        return 0;
    }
}