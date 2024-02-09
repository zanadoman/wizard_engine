#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::actors::actor::textures::textures(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Textures({(texture*)NULL}) {}

    engine::actors::actor::textures::~textures()
    {
        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            delete this->Textures[i];
        }
    }

    uint64 engine::actors::actor::textures::New(uint64 TextureID)
    {
        if (TextureID != 0 && (this->Engine->Assets.Textures.Length() <= TextureID || this->Engine->Assets.Textures[TextureID] == NULL))
        {
            printf("wze::engine.actors[].textures.New(): TextureID does not exist\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = new texture(this->Engine, this->Actor, TextureID)) == NULL)
                {
                    printf("wze::engine.actors[].textures.New(): Memory allocation failed\nParams: TextureID: %lld\n", TextureID);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Textures += {new texture(this->Engine, this->Actor, TextureID)})[this->Textures.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].textures.New(): Memory allocation failed\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        return this->Textures.Length() - 1;
    }

    uint8 engine::actors::actor::textures::Delete(uint64 TextureID)
    {
        uint64 i;

        if (this->Textures.Length() <= TextureID || this->Textures[TextureID] == NULL)
        {
            return 0;
        }

        delete this->Textures[TextureID];
        this->Textures[TextureID] = NULL;

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length(); 1 < i; i--)
            {
                if (this->Textures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textures::Purge(std::initializer_list<uint64> KeepTextureIDs)
    {
        uint64 i;

        for (i = 1; i < this->Textures.Length(); i++)
        {
            if (!initializer_list_Contains(KeepTextureIDs, {i}))
            {
                delete this->Textures[i];
                this->Textures[i] = NULL;
            }
        }

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length(); 1 < i; i--)
            {
                if (this->Textures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textures::Purge(array<uint64>* KeepTextureIDs)
    {
        uint64 i;

        if (KeepTextureIDs == NULL)
        {
            printf("wze::engine.actors[].textures.Purge(): KeepTextureIDs must not be NULL\nParams: KeepTextureIDs: %p\n", KeepTextureIDs);
            exit(1);
        }

        for (i = 1; i < this->Textures.Length(); i++)
        {
            if (!KeepTextureIDs->Contains({i}))
            {
                delete this->Textures[i];
                this->Textures[i] = NULL;
            }
        }

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length(); 1 < i; i--)
            {
                if (this->Textures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::textures::texture& engine::actors::actor::textures::operator [] (uint64 TextureID)
    {
        if (TextureID == 0)
        {
            printf("wze::engine.actors[].textures[]: Illegal access to NULL Texture\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }
        if (this->Textures.Length() <= TextureID || this->Textures[TextureID] == NULL)
        {
            printf("wze::engine.actors[].textures[]: Texture does not exist\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        return *this->Textures[TextureID];
    }

    engine::actors::actor::textures::texture::texture(engine* Engine, actor* Actor, uint64 TextureID) : Engine(Engine), Actor(Actor)
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
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->TextureID = TextureID;
    }

    double engine::actors::actor::textures::texture::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::textures::texture::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].textures[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::textures::texture::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::textures::texture::GetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].textures[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    uint64 engine::actors::actor::textures::texture::GetTextureID()
    {
        return this->TextureID;
    }

    uint64 engine::actors::actor::textures::texture::SetTextureID(uint64 TextureID)
    {
        if (TextureID != 0 && (this->Engine->Assets.Textures.Length() <= TextureID || this->Engine->Assets.Textures[TextureID] == NULL))
        {
            printf("wze::engine.actors[].textures[].SetTextureID(): Texture does not exist\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        return this->TextureID = TextureID;
    }
}