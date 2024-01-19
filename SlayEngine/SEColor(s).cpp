#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::colors::colors(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Colors(1) {}

    engine::actors::actor::colors::~colors()
    {
        for (uint64 i = 0; i < this->Colors.Length(); i++)
        {
            if (this->Colors[i] != NULL)
            {
                delete this->Colors[i];
            }
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
                    printf("slay::engine.actors[].actor.colors.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Colors += {new color(this->Engine, this->Actor)}))[this->Colors.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].actor.colors.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Colors.Length() - 1;
    }
}