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

    //Actor

    engine::actors::actor::actor(engine& Engine) : Engine(Engine), X(0), Y(0), Width(0), Height(0) {}

    engine::actors::actor::~actor()
    {
        if (this->Engine.Camera.XBinded && this->Engine.Actors.Actors[this->Engine.Camera.BindedXActor] == this)
        {
            this->Engine.Camera.XBinded = false;
            this->Engine.Camera.BindedXActor = 0;
        }
        if (this->Engine.Camera.YBinded && this->Engine.Actors.Actors[this->Engine.Camera.BindedYActor] == this)
        {
            this->Engine.Camera.YBinded = false;
            this->Engine.Camera.BindedYActor = 0;
        }
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

        return 0;
    }

    uint8 engine::actors::actor::SetY(double Y)
    {
        this->Y = Y;

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
}