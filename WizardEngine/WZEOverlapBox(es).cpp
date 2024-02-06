#include "WizardEngine.hpp"
#include <initializer_list>

namespace wze
{
    engine::actors::actor::overlapboxes::overlapboxes(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), OverlapBoxes({(overlapbox*)NULL}) {}

    engine::actors::actor::overlapboxes::~overlapboxes()
    {
        for (uint64 i = 1; i < this->OverlapBoxes.Length(); i++)
        {
            delete this->OverlapBoxes[i];
        }
    }

    uint64 engine::actors::actor::overlapboxes::New()
    {
        for (uint64 i = 1; i < this->OverlapBoxes.Length(); i++)
        {
            if (this->OverlapBoxes[i] == NULL)
            {
                if ((this->OverlapBoxes[i] = new overlapbox(this->Engine, this->Actor)) == NULL)
                {
                    printf("wze::engine.actors[].overlapboxes.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((this->OverlapBoxes += {new overlapbox(this->Engine, this->Actor)})[this->OverlapBoxes.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->OverlapBoxes.Length() - 1;
    }

    uint8 engine::actors::actor::overlapboxes::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.actors[].overlapboxes.Delete(): Illegal deletion of NULL OverlapBox\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->OverlapBoxes.Length() <= ID || this->OverlapBoxes[ID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes.Delete(): OverlapBox does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->OverlapBoxes[ID];
        this->OverlapBoxes[ID] = NULL;

        if (this->OverlapBoxes[this->OverlapBoxes.Length() -  1] == NULL && 1 < this->OverlapBoxes.Length())
        {
            for (i = this->OverlapBoxes.Length(); 1 < i; i--)
            {
                if (this->OverlapBoxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->OverlapBoxes.Remove(i, this->OverlapBoxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->OverlapBoxes.Length() <= Keep.begin()[i] || this->OverlapBoxes[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.actors[].overlapboxes.Purge(): OverlapBox does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->OverlapBoxes.Length(); i++)
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
                delete this->OverlapBoxes[i];
                this->OverlapBoxes[i] = NULL;
            }
        }

        if (this->OverlapBoxes[this->OverlapBoxes.Length() -  1] == NULL && 1 < this->OverlapBoxes.Length())
        {
            for (i = this->OverlapBoxes.Length(); 1 < i; i--)
            {
                if (this->OverlapBoxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->OverlapBoxes.Remove(i, this->OverlapBoxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::overlapboxes::Purge(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->OverlapBoxes.Length() <= (*Keep)[i] || this->OverlapBoxes[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.actors[].overlapboxes.Purge(): OverlapBox does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->OverlapBoxes.Length(); i++)
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
                delete this->OverlapBoxes[i];
                this->OverlapBoxes[i] = NULL;
            }
        }

        if (this->OverlapBoxes[this->OverlapBoxes.Length() -  1] == NULL && 1 < this->OverlapBoxes.Length())
        {
            for (i = this->OverlapBoxes.Length(); 1 < i; i--)
            {
                if (this->OverlapBoxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->OverlapBoxes.Remove(i, this->OverlapBoxes.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::overlapboxes::overlapbox& engine::actors::actor::overlapboxes::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("wze::engine.actors[].overlapboxes[]: Illegal access to NULL OverlapBox\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->OverlapBoxes.Length() <= ID || this->OverlapBoxes[ID] == NULL)
        {
            printf("wze::engine.actors[].overlapboxes[]: OverlapBox does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->OverlapBoxes[ID];
    }

    engine::actors::actor::overlapboxes::overlapbox::overlapbox(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor)
    {
        
    }

    engine::actors::actor::overlapboxes::overlapbox::~overlapbox() {}
}