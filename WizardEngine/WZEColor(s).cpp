#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::actors::actor::colorboxes::colorboxes(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Colorboxes({(colorbox*)NULL}) {}

    engine::actors::actor::colorboxes::~colorboxes()
    {
        for (uint64 i = 1; i < this->Colorboxes.Length(); i++)
        {
            delete this->Colorboxes[i];
        }
    }

    engine::actors::actor::colorboxes::colorbox* engine::actors::actor::colorboxes::New()
    {
        for (uint64 i = 1; i < this->Colorboxes.Length(); i++)
        {
            if (this->Colorboxes[i] == NULL)
            {
                if ((this->Colorboxes[i] = new colorbox(this->Engine, this->Actor, i)) == NULL)
                {
                    printf("wze::engine.actors[].colorboxes.New(): Memory allocation failed\n");
                    exit(1);
                }

                return this->Colorboxes[i];
            }
        }

        if ((this->Colorboxes += {new colorbox(this->Engine, this->Actor, this->Colorboxes.Length())})[this->Colorboxes.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].colorboxes.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Colorboxes[this->Colorboxes.Length() - 1];
    }

    uint8 engine::actors::actor::colorboxes::Delete(uint64 ColorboxID)
    {
        uint64 i;

        if (this->Colorboxes.Length() <= ColorboxID || this->Colorboxes[ColorboxID] == NULL)
        {
            return 0;
        }

        delete this->Colorboxes[ColorboxID];
        this->Colorboxes[ColorboxID] = NULL;
        
        if (this->Colorboxes[this->Colorboxes.Length() - 1] == NULL && 1 < this->Colorboxes.Length())
        {
            for (i = this->Colorboxes.Length(); 1 < i; i--)
            {
                if (this->Colorboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Colorboxes.Remove(i, this->Colorboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::colorboxes::Purge(std::initializer_list<uint64> KeepColorboxIDs)
    {
        uint64 i;

        for (i = 1; i < this->Colorboxes.Length(); i++)
        {
            if (!initializer_list_Contains(KeepColorboxIDs, {i}))
            {
                delete this->Colorboxes[i];
                this->Colorboxes[i] = NULL;
            }
        }

        if (this->Colorboxes[this->Colorboxes.Length() - 1] == NULL && 1 < this->Colorboxes.Length())
        {
            for (i = this->Colorboxes.Length(); 1 < i; i--)
            {
                if (this->Colorboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Colorboxes.Remove(i, this->Colorboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::colorboxes::Purge(array<uint64>* KeepColorboxIDs)
    {
        uint64 i;

        if (KeepColorboxIDs == NULL)
        {
            printf("wze::engine.actors[].colorboxes.Purge(): KeepColorboxIDs must not be NULL\nParams: KeepColorboxIDs: %p\n", KeepColorboxIDs);
            exit(1);
        }

        for (i = 1; i < this->Colorboxes.Length(); i++)
        {
            if (!KeepColorboxIDs->Contains({i}))
            {
                delete this->Colorboxes[i];
                this->Colorboxes[i] = NULL;
            }
        }

        if (this->Colorboxes[this->Colorboxes.Length() - 1] == NULL && 1 < this->Colorboxes.Length())
        {
            for (i = this->Colorboxes.Length(); 1 < i; i--)
            {
                if (this->Colorboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Colorboxes.Remove(i, this->Colorboxes.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::colorboxes::colorbox& engine::actors::actor::colorboxes::operator [] (uint64 ColorboxID)
    {
        if (ColorboxID == 0)
        {
            printf("wze::engine.actors[].colorboxes[]: Illegal access to NULL Colorbox\nParams: ColorboxID: %lld\n", ColorboxID);
            exit(1);
        }
        if (this->Colorboxes.Length() <= ColorboxID || this->Colorboxes[ColorboxID] == NULL)
        {
            printf("wze::engine.actors[].colorboxes[]: Colorbox does not exist\nParams: ColorboxID: %lld\n", ColorboxID);
            exit(1);
        }

        return *this->Colorboxes[ColorboxID];
    }

    engine::actors::actor::colorboxes::colorbox::colorbox(engine* Engine, actor* Actor, uint64 ID) : Engine(Engine), Actor(Actor)
    {
        this->Width = this->Actor->Width;
        this->Height = this->Actor->Height;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->OffsetAngleLocked = true;
        this->Priority = 128;
        this->Visible = true;
        this->ID = ID;
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
    }

    engine::actors::actor::colorboxes::colorbox::~colorbox() {}

    uint64 engine::actors::actor::colorboxes::colorbox::GetID()
    {
        return this->ID;
    }

    double engine::actors::actor::colorboxes::colorbox::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::colorboxes::colorbox::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].colorboxes[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::colorboxes::colorbox::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::colorboxes::colorbox::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].colorboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }
}