#include "SlayEngine.hpp"
#include <initializer_list>

namespace slay
{
    engine::actors::actors(engine& Engine) : Engine(Engine) {}

    engine::actors::~actors()
    {
        for (uint64 i = 0; i < this->Actors.Length(); i++)
        {
            if (this->Actors[i] != NULL)
            {
                delete this->Actors[i];
            }
        }
    }

    engine::actors::actor::actor(engine& Engine) : Engine(Engine) {}

    uint64 engine::actors::New()
    {
        this->Actors += {new actor(this->Engine)};

        return this->Actors.Length() - 1;
    }

    uint8 engine::actors::Delete(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Actors.Length() <= IDs.begin()[i] || this->Actors[IDs.begin()[i]] == NULL)
            {
                printf("engine.actors.Delete(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
                exit(1);
            }

            delete this->Actors[IDs.begin()[i]];
            if (IDs.begin()[i] == this->Actors.Length() - 1)
            {
                this->Actors.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Actors[IDs.begin()[i]] = NULL;
            }
        }

        return 0;
    }
}