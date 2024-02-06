#include "WizardEngine.hpp"

namespace wze
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
            printf("wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
            exit(1);
        }
        if (TextureIDs.size() < 2)
        {
            printf("wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
            exit(1);
        }

        for (uint64 i = 0; i < TextureIDs.size(); i++)
        {
            if (TextureIDs.begin()[i] != 0 && (this->Engine->Assets.Textures.Length() <= TextureIDs.begin()[i] || this->Engine->Assets.Textures[TextureIDs.begin()[i]] == NULL))
            {
                printf("wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
                exit(1);
            }
        }

        for (uint64 i = 1; i < this->Flipbooks.Length(); i++)
        {
            if (this->Flipbooks[i] == NULL)
            {
                if ((this->Flipbooks[i] = new flipbook(this->Engine, this->Actor, Delay, TextureIDs)) == NULL)
                {
                    printf("wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: Delay: %d, TextureIDs(length): %ld\n", Delay, TextureIDs.size());
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Flipbooks += {new flipbook(this->Engine, this->Actor, Delay, TextureIDs)})[this->Flipbooks.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %ld\n", TextureIDs.size());
            exit(1);
        }

        return this->Flipbooks.Length() - 1;
    }

    uint64 engine::actors::actor::flipbooks::New(uint32 Delay, array<uint64>* TextureIDs)
    {
        if (Delay == 0)
        {
            printf("wze::engine.actors[].flipbooks.New(): Delay must not be 0\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
            exit(1);
        }
        if (TextureIDs->Length() < 2)
        {
            printf("wze::engine.actors[].flipbooks.New(): At least two Textures are required\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
            exit(1);
        }

        for (uint64 i = 0; i < TextureIDs->Length(); i++)
        {
            if ((*TextureIDs)[i] != 0 && (this->Engine->Assets.Textures.Length() <= (*TextureIDs)[i] || this->Engine->Assets.Textures[(*TextureIDs)[i]] == NULL))
            {
                printf("wze::engine.actors[].flipbooks.New(): Texture does not exist\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
                exit(1);
            }
        }

        for (uint64 i = 1; i < this->Flipbooks.Length(); i++)
        {
            if (this->Flipbooks[i] == NULL)
            {
                if ((this->Flipbooks[i] = new flipbook(this->Engine, this->Actor, Delay, TextureIDs)) == NULL)
                {
                    printf("wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: Delay: %d, TextureIDs(length): %lld\n", Delay, TextureIDs->Length());
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Flipbooks += {new flipbook(this->Engine, this->Actor, Delay, TextureIDs)})[this->Flipbooks.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].flipbooks.New(): Memory allocation failed\nParams: TextureIDs(length): %lld\n", TextureIDs->Length());
            exit(1);
        }

        return this->Flipbooks.Length() - 1;
    }

    uint8 engine::actors::actor::flipbooks::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.actors[].flipbooks.Delete(): Illegal deletion of NULL Flipbook\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Flipbooks.Length() <= ID || this->Flipbooks[ID] == NULL)
        {
            printf("wze::engine.actors[].flipbooks.Delete(): Flipbook does not exist\nParams: ID: %lld\n", ID);
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
            if (Keep.begin()[i] != 0 && (this->Flipbooks.Length() <= Keep.begin()[i] || this->Flipbooks[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep(length): %ld\n", Keep.size());
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
            if ((*Keep)[i] != 0 && (this->Flipbooks.Length() <= (*Keep)[i] || this->Flipbooks[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.actors[].flipbooks.Purge(): Flipbook does not exist\nParams: Keep: %p\n", Keep);
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
            printf("wze::engine.actors[].flipbooks[]: Illegal access to NULL Flipbook\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Flipbooks.Length() <= ID || this->Flipbooks[ID] == NULL)
        {
            printf("wze::engine.actors[].flipbooks[]: Flipbook does not exist\nParams: ID: %lld\n", ID);
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
        this->AngleLocked = true;
        this->OffsetAngleLocked = true;
        this->Priority = 128;
        this->Visible = true;
        this->Loop = true;
        this->Paused = false;
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->Delay = Delay;
        this->CurrentFrame = 0;
        this->Remainder = 0;
        this->Textures = {TextureIDs};
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
        this->AngleLocked = true;
        this->OffsetAngleLocked = true;
        this->Priority = 128;
        this->Visible = true;
        this->Loop = true;
        this->Paused = false;
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->Delay = Delay;
        this->CurrentFrame = 0;
        this->Remainder = 0;
        this->Textures = {TextureIDs};
    }

    double engine::actors::actor::flipbooks::flipbook::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::flipbooks::flipbook::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].flipbooks[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::flipbooks::flipbook::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::flipbooks::flipbook::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].flipbooks[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    uint32 engine::actors::actor::flipbooks::flipbook::GetDelay()
    {
        return this->Delay;
    }

    uint32 engine::actors::actor::flipbooks::flipbook::SetDelay(uint32 Delay)
    {
        if (Delay == 0)
        {
            printf("wze::engine.actors[].flipbooks[].SetDelay(): Delay must not be 0\nParams: Delay: %d\n", Delay);
            exit(1);
        }

        return this->Delay = Delay;
    }

    bool engine::actors::actor::flipbooks::flipbook::IsPlaying()
    {
        return !(this->Paused || (!this->Loop && this->CurrentFrame == this->Textures.Length() - 1));
    }

    uint64 engine::actors::actor::flipbooks::flipbook::GetCurrentFrame()
    {
        return this->CurrentFrame;
    }

    uint8 engine::actors::actor::flipbooks::flipbook::Reset()
    {
        this->CurrentFrame = 0;

        return 0;
    }
}