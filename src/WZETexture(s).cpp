#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::actors::actor::textureboxes::textureboxes(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Textureboxes({(texturebox*)NULL}) {}

    engine::actors::actor::textureboxes::~textureboxes()
    {
        for (uint64 i = 1; i < this->Textureboxes.Length(); i++)
        {
            delete this->Textureboxes[i];
        }
    }

    engine::actors::actor::textureboxes::texturebox* engine::actors::actor::textureboxes::New(uint64 TextureID)
    {
        if (TextureID != 0 && (this->Engine->Assets.Textures.Length() <= TextureID || this->Engine->Assets.Textures[TextureID] == NULL))
        {
            printf("wze::engine.actors[].textureboxes.New(): TextureID does not exist\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        for (uint64 i = 1; i < this->Textureboxes.Length(); i++)
        {
            if (this->Textureboxes[i] == NULL)
            {
                if ((this->Textureboxes[i] = new texturebox(this->Engine, this->Actor, i, TextureID)) == NULL)
                {
                    printf("wze::engine.actors[].textureboxes.New(): Memory allocation failed\nParams: TextureID: %lld\n", TextureID);
                    exit(1);
                }

                return this->Textureboxes[i];
            }
        }

        if ((this->Textureboxes += {new texturebox(this->Engine, this->Actor, this->Textureboxes.Length(), TextureID)})[this->Textureboxes.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].textureboxes.New(): Memory allocation failed\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        return this->Textureboxes[this->Textureboxes.Length() - 1];
    }

    uint8 engine::actors::actor::textureboxes::Delete(uint64 TextureboxID)
    {
        uint64 i;

        if (this->Textureboxes.Length() <= TextureboxID || this->Textureboxes[TextureboxID] == NULL)
        {
            return 0;
        }

        delete this->Textureboxes[TextureboxID];
        this->Textureboxes[TextureboxID] = NULL;

        if (this->Textureboxes[this->Textureboxes.Length() - 1] == NULL && 1 < this->Textureboxes.Length())
        {
            for (i = this->Textureboxes.Length(); 1 < i; i--)
            {
                if (this->Textureboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textureboxes.Remove(i, this->Textureboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textureboxes::Purge(std::initializer_list<uint64> KeepTextureboxIDs)
    {
        uint64 i;

        for (i = 1; i < this->Textureboxes.Length(); i++)
        {
            if (!initializer_list_Contains(KeepTextureboxIDs, {i}))
            {
                delete this->Textureboxes[i];
                this->Textureboxes[i] = NULL;
            }
        }

        if (this->Textureboxes[this->Textureboxes.Length() - 1] == NULL && 1 < this->Textureboxes.Length())
        {
            for (i = this->Textureboxes.Length(); 1 < i; i--)
            {
                if (this->Textureboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textureboxes.Remove(i, this->Textureboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textureboxes::Purge(array<uint64>* KeepTextureboxIDs)
    {
        uint64 i;

        if (KeepTextureboxIDs == NULL)
        {
            printf("wze::engine.actors[].textureboxes.Purge(): KeepTextureboxIDs must not be NULL\nParams: KeepTextureboxIDs: %p\n", KeepTextureboxIDs);
            exit(1);
        }

        for (i = 1; i < this->Textureboxes.Length(); i++)
        {
            if (!KeepTextureboxIDs->Contains({i}))
            {
                delete this->Textureboxes[i];
                this->Textureboxes[i] = NULL;
            }
        }

        if (this->Textureboxes[this->Textureboxes.Length() - 1] == NULL && 1 < this->Textureboxes.Length())
        {
            for (i = this->Textureboxes.Length(); 1 < i; i--)
            {
                if (this->Textureboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textureboxes.Remove(i, this->Textureboxes.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::textureboxes::texturebox& engine::actors::actor::textureboxes::operator [] (uint64 TextureboxID)
    {
        if (TextureboxID == 0)
        {
            printf("wze::engine.actors[].textureboxes[]: Illegal access to NULL Texturebox\nParams: TextureboxID: %lld\n", TextureboxID);
            exit(1);
        }
        if (this->Textureboxes.Length() <= TextureboxID || this->Textureboxes[TextureboxID] == NULL)
        {
            printf("wze::engine.actors[].textureboxes[]: Texturebox does not exist\nParams: TextureboxID: %lld\n", TextureboxID);
            exit(1);
        }

        return *this->Textureboxes[TextureboxID];
    }

    engine::actors::actor::textureboxes::texturebox::texturebox(engine* Engine, actor* Actor, uint64 ID, uint64 TextureID) : Engine(Engine), Actor(Actor)
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
        this->ID = ID;
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->TextureID = TextureID;
    }

    engine::actors::actor::textureboxes::texturebox::~texturebox() {}

    uint64 engine::actors::actor::textureboxes::texturebox::GetID()
    {
        return this->ID;
    }

    double engine::actors::actor::textureboxes::texturebox::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::textureboxes::texturebox::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].textureboxes[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::textureboxes::texturebox::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::textureboxes::texturebox::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].textureboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    double engine::actors::actor::textureboxes::texturebox::GetOffsetLength()
    {
        return this->OffsetLength;
    }

    double engine::actors::actor::textureboxes::texturebox::SetOffsetLength(double OffsetLength)
    {
        if (OffsetLength != OffsetLength)
        {
            printf("wze::engine.actors[].textureboxes[].SetOffsetLength(): OffsetLength must not be NaN\nParams: OffsetLength: %lf\n", OffsetLength);
            exit(1);
        }

        this->X = this->Engine->Vector.TerminalX(this->Actor->X, OffsetLength, this->OffsetAngle);
        this->Y = this->Engine->Vector.TerminalY(this->Actor->Y, OffsetLength, this->OffsetAngle);

        return this->OffsetLength = OffsetLength;
    }

    double engine::actors::actor::textureboxes::texturebox::GetOffsetAngle()
    {
        return this->OffsetAngle;
    }

    double engine::actors::actor::textureboxes::texturebox::SetOffsetAngle(double OffsetAngle)
    {
        if (OffsetAngle != OffsetAngle)
        {
            printf("wze::engine.actors[].textureboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\nParams: OffsetAngle %lf\n", OffsetAngle);
            exit(1);
        }

        this->X = this->Engine->Vector.TerminalX(this->Actor->X, this->OffsetLength, OffsetAngle);
        this->Y = this->Engine->Vector.TerminalY(this->Actor->Y, this->OffsetLength, OffsetAngle);

        return this->OffsetAngle = OffsetAngle;
    }

    uint64 engine::actors::actor::textureboxes::texturebox::GetTextureID()
    {
        return this->TextureID;
    }

    uint64 engine::actors::actor::textureboxes::texturebox::SetTextureID(uint64 TextureID)
    {
        if (TextureID != 0 && (this->Engine->Assets.Textures.Length() <= TextureID || this->Engine->Assets.Textures[TextureID] == NULL))
        {
            printf("wze::engine.actors[].textureboxes[].SetTextureID(): Texture does not exist\nParams: TextureID: %lld\n", TextureID);
            exit(1);
        }

        return this->TextureID = TextureID;
    }
}