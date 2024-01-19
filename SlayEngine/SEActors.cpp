#include "SlayEngine.hpp"
#include <initializer_list>

namespace slay
{
    engine::actors::actors(engine& Engine) : Engine(Engine), Actors(1) {}

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

    uint64 engine::actors::New(uint64 Type)
    {
        for (uint64 i = 1; i < this->Actors.Length(); i++)
        {
            if (this->Actors[i] == NULL)
            {
                if ((this->Actors[i] = new actor(this->Engine, Type)) == NULL)
                {
                    printf("engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Actors += {new actor(this->Engine, Type)}))[this->Actors.Length() - 1] == NULL)
        {
            printf("engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
            exit(1);
        }

        return this->Actors.Length() - 1;
    }

    uint8 engine::actors::Delete(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Actors.Length() <= IDs.begin()[i])
            {
                printf("engine.actors.Delete(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
                exit(1);
            }
            if (IDs.begin()[i] == 0 || this->Actors[IDs.begin()[i]] == NULL)
            {
                continue;
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

    engine::actors::actor& engine::actors::operator [] (uint64 ID)
    {
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("engine.actors[]: ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Actors[ID];
    }
}