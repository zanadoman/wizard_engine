#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actors(engine& Engine) : Engine(Engine), Actors({(actor*)NULL}) {}

    engine::actors::~actors()
    {
        for (uint64 i = 1; i < this->Actors.Length(); i++)
        {
            delete this->Actors[i];
        }
    }

    uint64 engine::actors::New(uint64 Type, double X, double Y, uint16 Width, uint16 Height, double Layer)
    {
        if (Layer < 0)
        {
            printf("slay::engine.actors.New(): Layer must not be less than 0\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Type, X, Y, Width, Height, Layer);
            exit(1);
        }

        for (uint64 i = 1; i < this->Actors.Length(); i++)
        {
            if (this->Actors[i] == NULL)
            {
                if ((this->Actors[i] = new actor(this->Engine, Type, X, Y, Width, Height, Layer)) == NULL)
                {
                    printf("slay::engine.actors.New(): Memory allocation failed\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Type, X, Y, Width, Height, Layer);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Actors += {new actor(this->Engine, Type, X, Y, Width, Height, Layer)}))[this->Actors.Length() - 1] == NULL)
        {
            printf("slay::engine.actors.New(): Memory allocation failed\nParams: Type: %lld, X: %lf, Y: %lf, Width: %d, Height: %d, Layer: %lf\n", Type, X, Y, Width, Height, Layer);
            exit(1);
        }

        return this->Actors.Length() - 1;
    }

    uint8 engine::actors::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.actors.Delete(): Illegal deletion of NULL Actor\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("slay::engine.actors.Delete(): Actor does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Actors[ID];
        this->Actors[ID] = NULL;

        if (this->Actors[this->Actors.Length() - 1] == NULL && 1 < this->Actors.Length())
        {
            for (i = this->Actors.Length(); 1 < i; i--)
            {
                if (this->Actors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Actors.Remove(i, this->Actors.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] == 0)
            {
                continue;
            }
            if (this->Actors.Length() <= Keep.begin()[i] || this->Actors[Keep.begin()[i]] == NULL)
            {
                printf("slay::engine.actors.Purge(): Actor does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Actors.Length(); i++)
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
                delete this->Actors[i];
                this->Actors[i] = NULL;
            }
        }

        if (this->Actors[this->Actors.Length() - 1] == NULL && 1 < this->Actors.Length())
        {
            for (i = this->Actors.Length(); 1 < i; i--)
            {
                if (this->Actors[i - 1] != NULL)
                {
                    break;
                }
            }
            
            this->Actors.Remove(i, this->Actors.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::Purge(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] == 0)
            {
                continue;
            }
            if (this->Actors.Length() <= (*Keep)[i] || this->Actors[(*Keep)[i]] == NULL)
            {
                printf("slay::engine.actors.Purge(): Actor does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Actors.Length(); i++)
        {
            for (j = 0; j < Keep->Length(); j++)
            {
                if (i == (*Keep)[j])
                {
                    break;
                }
            }

            if (j == Keep->Length())
            {
                delete this->Actors[i];
                this->Actors[i] = NULL;
            }
        }

        if (this->Actors[this->Actors.Length() - 1] == NULL && 1 < this->Actors.Length())
        {
            for (i = this->Actors.Length(); 1 < i; i--)
            {
                if (this->Actors[i - 1] != NULL)
                {
                    break;
                }
            }
            
            this->Actors.Remove(i, this->Actors.Length() - i);
        }

        return 0;
    }

    engine::actors::actor& engine::actors::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("slay::engine.actors[]: Illegal access to NULL Actor");
            exit(1);
        }
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("slay::engine.actors[]: Actor does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Actors[ID];
    }
}