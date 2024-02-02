#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::flipbooks::flipbooks(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Flipbooks({(flipbook*)NULL}) {}

    engine::actors::actor::flipbooks::~flipbooks()
    {
        for (uint64 i = 1; i < this->Flipbooks.Length(); i++)
        {
            delete this->Flipbooks[i];
        }
    }

    uint64 engine::actors::actor::flipbooks::New(uint32 Delay, std::initializer_list<uint64> TextureIDs)
    {
        if (Delay == 0)
        {
            printf("slay::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
            exit(1);
        }
        if (TextureIDs.size() < 2)
        {
            printf("slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
            exit(1);
        }

        for (uint64 i = 0; i < TextureIDs.size(); i++)
        {
            if (TextureIDs.begin()[i] == 0)
            {
                continue;
            }
            if (this->Engine->Assets.Textures.Length() <= TextureIDs.begin()[i] || this->Engine->Assets.Textures[TextureIDs.begin()[i]] == NULL)
            {
                printf("slay::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
                exit(1);
            }
        }

        for (uint64 i = 1; i < this->Flipbooks.Length(); i++)
        {
            if (this->Flipbooks[i] == NULL)
            {
                if ((this->Flipbooks[i] = new flipbook(this->Engine, this->Actor, Delay, TextureIDs)) == NULL)
                {
                    printf("slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Flipbooks += {new flipbook(this->Engine, this->Actor, Delay, TextureIDs)}))[this->Flipbooks.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n", TextureIDs.size());
            exit(1);
        }

        return this->Flipbooks.Length() - 1;
    }

    uint64 engine::actors::actor::flipbooks::New(uint32 Delay, array<uint64>* TextureIDs)
    {
        if (Delay == 0)
        {
            printf("slay::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
            exit(1);
        }
        if (TextureIDs->Length() < 2)
        {
            printf("slay::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
            exit(1);
        }

        for (uint64 i = 0; i < TextureIDs->Length(); i++)
        {
            if ((*TextureIDs)[i] == 0)
            {
                continue;
            }
            if (this->Engine->Assets.Textures.Length() <= (*TextureIDs)[i] || this->Engine->Assets.Textures[(*TextureIDs)[i]] == NULL)
            {
                printf("slay::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
                exit(1);
            }
        }

        for (uint64 i = 1; i < this->Flipbooks.Length(); i++)
        {
            if (this->Flipbooks[i] == NULL)
            {
                if ((this->Flipbooks[i] = new flipbook(this->Engine, this->Actor, Delay, TextureIDs)) == NULL)
                {
                    printf("slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Flipbooks += {new flipbook(this->Engine, this->Actor, Delay, TextureIDs)}))[this->Flipbooks.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %lld\n", TextureIDs->Length());
            exit(1);
        }

        return this->Flipbooks.Length() - 1;
    }

    uint8 engine::actors::actor::flipbooks::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Flipbooks.Length() <= ID || this->Flipbooks[ID] == NULL)
        {
            printf("slay::engine.actors[].flipbooks.Delete(): Flipbook does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Flipbooks[ID];
        this->Flipbooks[ID] = NULL;

        if (this->Flipbooks[this->Flipbooks.Length() - 1] == NULL && 1 < this->Flipbooks.Length())
        {
            for (i = this->Flipbooks.Length(); 1 < i; i--)
            {
                if (this->Flipbooks[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Flipbooks.Remove(i, this->Flipbooks.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::flipbooks::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] == 0)
            {
                continue;
            }
            if (this->Flipbooks.Length() <= Keep.begin()[i] || this->Flipbooks[Keep.begin()[i]] == NULL)
            {
                printf("slay::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Flipbooks.Length(); i++)
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
                delete this->Flipbooks[i];
                this->Flipbooks[i] = NULL;
            }
        }

        if (this->Flipbooks[this->Flipbooks.Length() - 1] == NULL && 1 < this->Flipbooks.Length())
        {
            for (i = this->Flipbooks.Length(); 1 < i; i--)
            {
                if (this->Flipbooks[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Flipbooks.Remove(i, this->Flipbooks.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::flipbooks::Purge(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] == 0)
            {
                continue;
            }
            if (this->Flipbooks.Length() <= (*Keep)[i] || this->Flipbooks[(*Keep)[i]] == NULL)
            {
                printf("slay::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Flipbooks.Length(); i++)
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
                delete this->Flipbooks[i];
                this->Flipbooks[i] = NULL;
            }
        }

        if (this->Flipbooks[this->Flipbooks.Length() - 1] == NULL && 1 < this->Flipbooks.Length())
        {
            for (i = this->Flipbooks.Length(); 1 < i; i--)
            {
                if (this->Flipbooks[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Flipbooks.Remove(i, this->Flipbooks.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::flipbooks::flipbook& engine::actors::actor::flipbooks::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("slay::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Flipbooks.Length() <= ID || this->Flipbooks[ID] == NULL)
        {
            printf("slay::engine.actors[].flipbooks[]: Flipbook does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Flipbooks[ID];
    }

    engine::actors::actor::flipbooks::flipbook::flipbook(engine* Engine, actor* Actor, uint32 Delay, std::initializer_list<uint64> TextureIDs) : Engine(Engine), Actor(Actor)
    {
        this->Width = this->Actor->Width;
        this->Height = this->Actor->Height;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Angle = 0;
        this->FlipHorizontal = false;
        this->FlipVertical = false;
        this->OffsetLocked = true;
        this->AngleLocked = true;
        this->Priority = 128;
        this->Visible = true;
        this->Loop = true;
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->Delay = Delay;
        this->Current = 0;
        this->Remainder = 0;
        this->TexturesLength = TextureIDs.size();
        if ((this->Textures = (uint64*)malloc(sizeof(uint64) * TextureIDs.size())) == NULL)
        {
            printf("slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %ld\n", &this->Engine, &this->Actor, TextureIDs.size());
            exit(1);
        }

        for (uint64 i = 0; i < TextureIDs.size(); i++)
        {
            this->Textures[i] = TextureIDs.begin()[i];
        }
    }

    engine::actors::actor::flipbooks::flipbook::flipbook(engine* Engine, actor* Actor, uint32 Delay, array<uint64>* TextureIDs) : Engine(Engine), Actor(Actor)
    {
        this->Width = this->Actor->Width;
        this->Height = this->Actor->Height;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Angle = 0;
        this->FlipHorizontal = false;
        this->FlipVertical = false;
        this->OffsetLocked = true;
        this->AngleLocked = true;
        this->Priority = 128;
        this->Visible = true;
        this->Loop = true;
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->Delay = Delay;
        this->Current = 0;
        this->Remainder = 0;
        this->TexturesLength = TextureIDs->Length();
        if ((this->Textures = (uint64*)malloc(sizeof(uint64) * TextureIDs->Length())) == NULL)
        {
            printf("slay::engine.actors[].flipbooks.flipbook(): Memory allocation failed\nParams: Engine: %p, Actor: %p, TextureIDs(length): %lld\n", &this->Engine, &this->Actor, TextureIDs->Length());
            exit(1);
        }

        for (uint64 i = 0; i < TextureIDs->Length(); i++)
        {
            this->Textures[i] = (*TextureIDs)[i];
        }
    }

    engine::actors::actor::flipbooks::flipbook::~flipbook()
    {
        free(this->Textures);
    }

    sint32 engine::actors::actor::flipbooks::flipbook::GetOffsetX()
    {
        return this->OffsetX;
    }

    uint32 engine::actors::actor::flipbooks::flipbook::GetDelay()
    {
        return this->Delay;
    }

    uint32 engine::actors::actor::flipbooks::flipbook::SetDelay(uint32 Delay)
    {
        if (Delay == 0)
        {
            printf("slay::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n", Delay);
            exit(1);
        }

        return this->Delay = Delay;
    }

    sint32 engine::actors::actor::flipbooks::flipbook::SetOffsetX(sint32 OffsetX)
    {
        sint32 x, y;

        x = this->Actor->X + OffsetX;
        y = this->Actor->Y + this->OffsetY;
        this->OffsetLength = this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, x, y);
        this->OffsetAngle = this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, x, y);

        return this->OffsetX = OffsetX;
    }

    sint32 engine::actors::actor::flipbooks::flipbook::GetOffsetY()
    {
        return this->OffsetY;
    }

    sint32 engine::actors::actor::flipbooks::flipbook::SetOffsetY(sint32 OffsetY)
    {
        sint32 x, y;

        x = this->Actor->X + this->OffsetX;
        y = this->Actor->Y + OffsetY;
        this->OffsetLength = this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, x, y);
        this->OffsetAngle = this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, x, y);

        return this->OffsetY = OffsetY;
    }

    uint8 engine::actors::actor::flipbooks::flipbook::Reset()
    {
        this->Current = 0;

        return 0;
    }
}