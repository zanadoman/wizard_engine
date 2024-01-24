#include "Includes/SDL_render.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::texts::texts(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Texts({(text*)NULL}) {}

    engine::actors::actor::texts::~texts()
    {
        for (uint64 i = 1; i < this->Texts.Length(); i++)
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

        if (ID == this->Texts.Length() - 1 && 1 < this->Texts.Length())
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
        this->OffsetLocked = false;
        this->AngleLocked = false;
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
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->Width = 0;
        this->FontID = 0;
        this->Texture = NULL;
    }

    sint32 engine::actors::actor::texts::text::GetOffsetX()
    {
        return this->OffsetX;
    }

    sint32 engine::actors::actor::texts::text::SetOffsetX(sint32 OffsetX)
    {
        sint32 x, y;

        x = this->Actor.X + OffsetX;
        y = this->Actor.Y + this->OffsetY;
        this->OffsetLength = this->Engine.Vector.Length(this->Actor.X, this->Actor.Y, x, y);
        this->OffsetAngle = this->Engine.Vector.Angle(this->Actor.X, this->Actor.Y, x, y);

        return this->OffsetX = OffsetX;
    }

    sint32 engine::actors::actor::texts::text::GetOffsetY()
    {
        return this->OffsetY;
    }

    sint32 engine::actors::actor::texts::text::SetOffsetY(sint32 OffsetY)
    {
        sint32 x, y;

        x = this->Actor.X + this->OffsetX;
        y = this->Actor.Y + OffsetY;
        this->OffsetLength = this->Engine.Vector.Length(this->Actor.X, this->Actor.Y, x, y);
        this->OffsetAngle = this->Engine.Vector.Angle(this->Actor.X, this->Actor.Y, x, y);

        return this->OffsetY = OffsetY;
    }

    engine::actors::actor::texts::text::~text()
    {
        SDL_DestroyTexture(this->Texture);
    }

    string* engine::actors::actor::texts::text::String()
    {
        SDL_DestroyTexture(this->Texture);
        this->Texture = NULL;

        return &this->Text;
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