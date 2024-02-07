#include "Includes/NeoTypes++.hpp"
#include "WizardEngine.hpp"

namespace wze
{
    engine::actors::actor::colors::colors(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Colors({(color*)NULL}) {}

    engine::actors::actor::colors::~colors()
    {
        for (uint64 i = 1; i < this->Colors.Length(); i++)
        {
            delete this->Colors[i];
        }
    }

    uint64 engine::actors::actor::colors::New()
    {
        for (uint64 i = 1; i < this->Colors.Length(); i++)
        {
            if (this->Colors[i] == NULL)
            {
                if ((this->Colors[i] = new color(this->Engine, this->Actor)) == NULL)
                {
                    printf("wze::engine.actors[].colors.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Colors += {new color(this->Engine, this->Actor)})[this->Colors.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].colors.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Colors.Length() - 1;
    }

    uint8 engine::actors::actor::colors::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.actors[].colors.Delete(): Illegal deletion of NULL Color\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Colors.Length() <= ID || this->Colors[ID] == NULL)
        {
            printf("wze::engine.actors[].colors.Delete(): Color does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Colors[ID];
        this->Colors[ID] = NULL;
        
        if (this->Colors[this->Colors.Length() - 1] == NULL && 1 < this->Colors.Length())
        {
            for (i = this->Colors.Length(); 1 < i; i--)
            {
                if (this->Colors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Colors.Remove(i, this->Colors.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::colors::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Colors.Length() <= Keep.begin()[i] || this->Colors[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.actors[].colors.Purge(): Color does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Colors.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
            {
                delete this->Colors[i];
                this->Colors[i] = NULL;
            }
        }

        if (this->Colors[this->Colors.Length() - 1] == NULL && 1 < this->Colors.Length())
        {
            for (i = this->Colors.Length(); 1 < i; i--)
            {
                if (this->Colors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Colors.Remove(i, this->Colors.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::colors::Purge(array<uint64>* Keep)
    {
        uint64 i;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Colors.Length() <= (*Keep)[i] || this->Colors[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.actors[].colors.Purge(): Color does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Colors.Length(); i++)
        {
            if (!Keep->Contains({i}))
            {
                delete this->Colors[i];
                this->Colors[i] = NULL;
            }
        }

        if (this->Colors[this->Colors.Length() - 1] == NULL && 1 < this->Colors.Length())
        {
            for (i = this->Colors.Length(); 1 < i; i--)
            {
                if (this->Colors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Colors.Remove(i, this->Colors.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::colors::color& engine::actors::actor::colors::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("wze::engine.actors[].colors[]: Illegal access to NULL Color\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Colors.Length() <= ID || this->Colors[ID] == NULL)
        {
            printf("wze::engine.actors[].colors[]: Color does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Colors[ID];
    }

    engine::actors::actor::colors::color::color(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor)
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
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
    }

    double engine::actors::actor::colors::color::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::colors::color::SetX(double X)
    {
        if (X != X)
        {
            printf("engine.actors[].colors[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::colors::color::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::colors::color::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("engine.actors[].colors[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }
}