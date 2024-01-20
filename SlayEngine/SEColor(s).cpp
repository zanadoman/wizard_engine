#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::colors::colors(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Colors({(color*)NULL}) {}

    engine::actors::actor::colors::~colors()
    {
        for (uint64 i = 0; i < this->Colors.Length(); i++)
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
        if (ID == this->Colors.Length() - 1)
        {
            this->Colors.Remove(ID, 1);
        }
        else 
        {
            this->Colors[ID] = NULL;
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
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->Width = 0;
        this->Height = 0;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Priority = 32767;
        this->Visible = true;
    }
}