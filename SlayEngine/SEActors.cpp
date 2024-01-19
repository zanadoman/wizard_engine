#include "SlayEngine.hpp"

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
                    printf("slay::engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Actors += {new actor(this->Engine, Type)}))[this->Actors.Length() - 1] == NULL)
        {
            printf("slay::engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
            exit(1);
        }

        return this->Actors.Length() - 1;
    }

    uint8 engine::actors::Delete(uint64 ID)
    {
        if (ID == 0)
        {
            printf("slay::engine.actors.Delete(): Illegal to delete NULL Actor\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("slay::engine.actors.Delete(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Actors[ID];
        if (ID == this->Actors.Length() - 1)
        {
            this->Actors.Remove(ID, 1);
        }
        else
        {
            this->Actors[ID] = NULL;
        }

        return 0;
    }

    engine::actors::actor& engine::actors::operator [] (uint64 ID)
    {
        return *this->Actors[ID];
    }
}