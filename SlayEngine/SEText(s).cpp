#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::texts::texts(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Texts({(text*)NULL}) {}

    engine::actors::actor::texts::~texts()
    {
        for (uint64 i = 1; i < this->Texts.Length(); i++)
        {
            delete this->Texts[i];
        }
    }

    uint64 engine::actors::actor::texts::New(const char* String, uint64 FontID)
    {
        if (String == NULL)
        {
            printf("slay::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n", String, FontID);
            exit(1);
        }
        if (FontID != 0 && (this->Engine->Assets.Fonts.Length() <= FontID || this->Engine->Assets.Fonts[FontID] == NULL))
        {
            printf("slay::engine.actors[].texts.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        for (uint64 i = 1; i < this->Texts.Length(); i++)
        {
            if (this->Texts[i] == NULL)
            {
                if ((this->Texts[i] = new text(this->Engine, this->Actor, String, FontID)) == NULL)
                {
                    printf("slay::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Texts += {new text(this->Engine, this->Actor, String, FontID)}))[this->Texts.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        return this->Texts.Length() - 1;
    }

    uint8 engine::actors::actor::texts::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Texts.Length() <= ID || this->Texts[ID] == NULL)
        {
            printf("slay::engine.actors[].texts.Delete(): Text does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Texts[ID];
        this->Texts[ID] = NULL;

        if (this->Texts[this->Texts.Length() - 1] == NULL && 1 < this->Texts.Length())
        {
            for (i = this->Texts.Length(); 1 < i; i--)
            {
                if (this->Texts[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Texts.Remove(i, this->Texts.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::texts::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] == 0)
            {
                continue;
            }
            if (this->Texts.Length() <= Keep.begin()[i] || this->Texts[Keep.begin()[i]] == NULL)
            {
                printf("slay::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Texts.Length(); i++)
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
                delete this->Texts[i];
                this->Texts[i] = NULL;
            }
        }

        if (this->Texts[this->Texts.Length() - 1] == NULL && 1 < this->Texts.Length())
        {
            for (i = this->Texts.Length(); 1 < i; i--)
            {
                if (this->Texts[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Texts.Remove(i, this->Texts.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::texts::Purge(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] == 0)
            {
                continue;
            }
            if (this->Texts.Length() <= (*Keep)[i] || this->Texts[(*Keep)[i]] == NULL)
            {
                printf("slay::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Texts.Length(); i++)
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
                delete this->Texts[i];
                this->Texts[i] = NULL;
            }
        }

        if (this->Texts[this->Texts.Length() - 1] == NULL && 1 < this->Texts.Length())
        {
            for (i = this->Texts.Length(); 1 < i; i--)
            {
                if (this->Texts[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Texts.Remove(i, this->Texts.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::texts::text& engine::actors::actor::texts::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("slay::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Texts.Length() <= ID || this->Texts[ID] == NULL)
        {
            printf("slay::engine.actors[].texts[]: Text does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Texts[ID];
    }

    engine::actors::actor::texts::text::text(engine* Engine, actor* Actor, const char* String, uint64 FontID) : Engine(Engine), Actor(Actor)
    {
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
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->Width = 0;
        this->String = {String};
        this->FontID = FontID;
        this->Texture = NULL;
    }

    sint32 engine::actors::actor::texts::text::GetOffsetX()
    {
        return this->OffsetX;
    }

    sint32 engine::actors::actor::texts::text::SetOffsetX(sint32 OffsetX)
    {
        this->OffsetLength = this->Engine->Vector.Length(0, 0, OffsetX, this->OffsetY);
        this->OffsetAngle = this->Engine->Vector.Angle(0, 0, OffsetX, this->OffsetY);

        return this->OffsetX = OffsetX;
    }

    sint32 engine::actors::actor::texts::text::GetOffsetY()
    {
        return this->OffsetY;
    }

    sint32 engine::actors::actor::texts::text::SetOffsetY(sint32 OffsetY)
    {
        this->OffsetLength = this->Engine->Vector.Length(0, 0, this->OffsetX, OffsetY);
        this->OffsetAngle = this->Engine->Vector.Angle(0, 0, this->OffsetX, OffsetY);

        return this->OffsetY = OffsetY;
    }

    engine::actors::actor::texts::text::~text()
    {
        SDL_DestroyTexture(this->Texture);
    }

    string* engine::actors::actor::texts::text::GetString()
    {
        SDL_DestroyTexture(this->Texture);
        this->Texture = NULL;

        return &this->String;
    }

    uint64 engine::actors::actor::texts::text::GetFont()
    {
        return this->FontID;
    }

    uint64 engine::actors::actor::texts::text::SetFont(uint64 ID)
    {
        if (ID != 0 && (this->Engine->Assets.Fonts.Length() <= ID || this->Engine->Assets.Fonts[ID] == NULL))
        {
            printf("slay::engine.actors[].texts[].SetFont(): Font does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return this->FontID = ID;
    }
}