#include "SlayEngine.hpp"

namespace slay
{
    engine::actors::actor::textures::textures(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor), Textures({(texture*)NULL}) {}

    engine::actors::actor::textures::~textures()
    {
        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            delete this->Textures[i];
        }
    }

    uint64 engine::actors::actor::textures::New()
    {
        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = new texture(this->Engine, this->Actor)) == NULL)
                {
                    printf("slay::engine.actors[].textures.New(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Textures += {new texture(this->Engine, this->Actor)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("slay::engine.actors[].textures.New(): Memory allocation failed\n");
            exit(1);
        }

        return this->Textures.Length() - 1;
    }

    uint8 engine::actors::actor::textures::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.actors[].textures.Delete(): Illegal deletion of NULL Texture\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Textures.Length() <= ID || this->Textures[ID] == NULL)
        {
            printf("slay::engine.actors[].textures.Delete(): Texture does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        delete this->Textures[ID];
        this->Textures[ID] = NULL;

        if (ID == this->Textures.Length() - 1 && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length() - 1; 0 < i; i--)
            {
                if (this->Textures[i] != NULL)
                {
                    break;
                }
            }

            i++;
            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textures::Purge(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] == 0)
            {
                continue;
            }
            if (this->Textures.Length() <= Keep.begin()[i] || this->Textures[Keep.begin()[i]] == NULL)
            {
                printf("slay::engine.actors[].textures.Purge(): Texture does not exists\nParams: Keep(length) %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Textures.Length(); i++)
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
                delete this->Textures[i];
                this->Textures[i] = NULL;
            }
        }

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length() - 1; 0 < i; i--)
            {
                if (this->Textures[i] != NULL)
                {
                    break;
                }
            }

            i++;
            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::textures::texture& engine::actors::actor::textures::operator [] (uint64 ID)
    {
        if (ID == 0)
        {
            printf("slay::engine.actors[].textures[]: Illegal access to NULL Texture\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Textures.Length() <= ID || this->Textures[ID] == NULL)
        {
            printf("slay::engine.actors[].textures[]: Texture does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Textures[ID];
    }

    engine::actors::actor::textures::texture::texture(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor)
    {
        this->OffsetLocked = false;
        this->AngleLocked = false;
        this->Width = 0;
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
        this->TextureID = 0;
        this->OffsetX = 0;
        this->OffsetY = 0;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
    }

    sint32 engine::actors::actor::textures::texture::GetOffsetX()
    {
        return this->OffsetX;
    }

    sint32 engine::actors::actor::textures::texture::SetOffsetX(sint32 OffsetX)
    {
        sint32 x, y;

        x = this->Actor.X + OffsetX;
        y = this->Actor.Y + this->OffsetY;
        this->OffsetLength = this->Engine.Vector.Length(this->Actor.X, this->Actor.Y, x, y);
        this->OffsetAngle = this->Engine.Vector.Angle(this->Actor.X, this->Actor.Y, x, y);

        return this->OffsetX = OffsetX;
    }

    sint32 engine::actors::actor::textures::texture::GetOffsetY()
    {
        return this->OffsetY;
    }

    sint32 engine::actors::actor::textures::texture::SetOffsetY(sint32 OffsetY)
    {
        sint32 x, y;

        x = this->Actor.X + this->OffsetX;
        y = this->Actor.Y + OffsetY;
        this->OffsetLength = this->Engine.Vector.Length(this->Actor.X, this->Actor.Y, x, y);
        this->OffsetAngle = this->Engine.Vector.Angle(this->Actor.X, this->Actor.Y, x, y);

        return this->OffsetY = OffsetY;
    }

    uint64 engine::actors::actor::textures::texture::GetTextureID()
    {
        return this->TextureID;
    }

    uint64 engine::actors::actor::textures::texture::SetTextureID(uint64 ID)
    {
        if (ID == 0)
        {
            return this->TextureID = ID;
        }
        if (this->Engine.Assets.Textures.Length() <= ID || this->Engine.Assets.Textures[ID] == NULL)
        {
            printf("slay::engine.actors[].textures[].SetTextureID(): Texture does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return this->TextureID = ID;
    }
}