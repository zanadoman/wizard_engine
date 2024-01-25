#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::colors::colors(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Colors({(color*)NULL}) {}

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
                    printf("slay::engine.actors[].colors.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Colors += {new color(this->Engine, this->Actor)}))[this->Colors.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].colors.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Colors.Length() - 1;
    }

    uint8 engine::actors::actor::colors::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.actors[].colors.Delete(): Illegal deletion of NULL Color\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Colors.Length() <= ID || this->Colors[ID] == NULL)
        {
            printf("slay::engine.actors[].colors.Delete(): Color does not exists\nParams: ID: %lld\n", ID);
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
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] == 0)
            {
                continue;
            }
            if (this->Colors.Length() <= Keep.begin()[i] || this->Colors[Keep.begin()[i]] == NULL)
            {
                printf("slay::engine.actors[].colors.Purge(): Color does not exists\nParams: Keep(length) %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Colors.Length(); i++)
        {
            for (j = 0; j < Keep.size(); j++)
            {
                if (i == Keep.begin()[j])
                {
                    break;
                }
            }

            if (j == Keep.size())
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
            printf("slay::engine.actors[].colors[]: Illegal access to NULL Color\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Colors.Length() <= ID || this->Colors[ID] == NULL)
        {
            printf("slay::engine.actors[].colors[]: Color does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Colors[ID];
    }

    engine::actors::actor::colors::color::color(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor)
    {
        this->OffsetLocked = false;
        this->Width = 0;
        this->Height = 0;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Priority = 128;
        this->Visible = true;
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
    }

    sint32 engine::actors::actor::colors::color::GetOffsetX()
    {
        return this->OffsetX;
    }

    sint32 engine::actors::actor::colors::color::SetOffsetX(sint32 OffsetX)
    {
        sint32 x, y;

        x = this->Actor.X + OffsetX;
        y = this->Actor.Y + this->OffsetY;
        this->OffsetLength = this->Engine.Vector.Length(this->Actor.X, this->Actor.Y, x, y);
        this->OffsetAngle = this->Engine.Vector.Angle(this->Actor.X, this->Actor.Y, x, y);

        return this->OffsetX = OffsetX;
    }

    sint32 engine::actors::actor::colors::color::GetOffsetY()
    {
        return this->OffsetY;
    }

    sint32 engine::actors::actor::colors::color::SetOffsetY(sint32 OffsetY)
    {
        sint32 x, y;

        x = this->Actor.X + this->OffsetX;
        y = this->Actor.Y + OffsetY;
        this->OffsetLength = this->Engine.Vector.Length(this->Actor.X, this->Actor.Y, x, y);
        this->OffsetAngle = this->Engine.Vector.Angle(this->Actor.X, this->Actor.Y, x, y);

        return this->OffsetY = OffsetY;
    }
}