#include "SlayEngine.hpp"
#include <initializer_list>

namespace slay
{
    //Actors

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

    engine::actors::actor& engine::actors::operator [] (uint64 ID)
    {
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("engine.actors[]: ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Actors[ID];
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
            if (IDs.begin()[i] == 0)
            {
                printf("engine.actors.Delete(): Illegal to delete NULL Actor\nParams: IDs(length): %ld\n", IDs.size());
                exit(1);
            }
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

    //Actor

    engine::actors::actor::actor(engine& Engine, uint64 Type) : Engine(Engine), Type(Type), X(0), Y(0), Width(0), Height(0) {}

    engine::actors::actor::~actor()
    {
        if (this->Engine.Actors.Actors[this->Engine.Camera.XActor] == this)
        {
            this->Engine.Camera.XActor = 0;
        }
        if (this->Engine.Actors.Actors[this->Engine.Camera.YActor] == this)
        {
            this->Engine.Camera.YActor = 0;
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

    double engine::actors::actor::GetY()
    {
        return this->Y;
    }

    uint8 engine::actors::actor::SetX(double X)
    {
        this->X = X;
        this->ResolveCollision();

        return 0;
    }

    uint8 engine::actors::actor::SetY(double Y)
    {
        this->Y = Y;
        this->ResolveCollision();

        return 0;
    }

    uint16 engine::actors::actor::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::GetHeight()
    {
        return this->Height;
    }

    uint8 engine::actors::actor::SetHeight(uint16 Height)
    {
        this->Height = Height;

        return 0;
    }

    uint8 engine::actors::actor::SetWidth(uint16 Width)
    {
        this->Width = Width;

        return 0;
    }

    uint8 engine::actors::actor::ResolveCollision()
    {
        return 0;
    }
}