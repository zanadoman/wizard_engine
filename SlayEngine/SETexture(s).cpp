#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::textures::textures(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Textures(1) {}

    engine::actors::actor::textures::~textures()
    {
        for (uint64 i = 0; i < this->Textures.Length(); i++)
        {
            delete this->Textures[i];
        }
    }

    uint64 engine::actors::actor::textures::New()
    {
        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = new texture(this->Engine, this->Actor)) == NULL)
                {
                    printf("slay::engine.actors[].textures.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Textures += {new texture(this->Engine, this->Actor)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].textures.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Textures.Length() - 1;
    }
}