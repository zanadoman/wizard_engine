#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::texts::texts(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Texts({(text*)NULL}) {}

    engine::actors::actor::texts::~texts()
    {
        for (uint64 i = 0; i < this->Texts.Length(); i++)
        {
            delete this->Texts[i];
        }
    }

    uint64 engine::actors::actor::texts::New()
    {
        for (uint64 i = 1; i < this->Texts.Length(); i++)
        {
            if (this->Texts[i] == NULL)
            {
                if ((this->Texts[i] = new text(this->Engine, this->Actor)) == NULL)
                {
                    printf("slay::engine.actors[].texts.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Texts += {new text(this->Engine, this->Actor)}))[this->Texts.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].texts.New(): Memory allocation failed\n");
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
            printf("slay::engine.actors[].texts.Delete(): Text does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Texts[ID];
        this->Texts[ID] = NULL;

        if (ID == this->Texts.Length() - 1)
        {
            for (i = this->Texts.Length() - 1; 0 < i; i--)
            {
                if (this->Texts[i] != NULL)
                {
                    break;
                }
            }

            i++;
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
            printf("slay::engine.actors[].texts[]: Text does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Texts[ID];
    }

    engine::actors::actor::texts::text::text(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor)
    {
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->Height = 0;
        this->Angle = 0;
        this->FlipHorizontal = false;
        this->FlipVertical = false;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Priority = 128;
        this->Visible = true;
        this->FontID = 0;
    }

    uint64 engine::actors::actor::texts::text::GetFont()
    {
        return this->FontID;
    }

    uint64 engine::actors::actor::texts::text::SetFont(uint64 ID)
    {
        if (ID == 0)
        {
            return this->FontID = ID;
        }
        if (this->Engine.Assets.Fonts.Length() <= ID || this->Engine.Assets.Fonts[ID] == NULL)
        {
            printf("slay::engine.actors[].texts[].SetFont(): Font does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return this->FontID = ID;
    }
}