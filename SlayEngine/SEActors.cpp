#include "SlayEngine.hpp"
#include <initializer_list>

namespace slay
{
    //Actors

    engine::actors::actors(engine& Engine) : Engine(Engine), Actors(1) {}

    engine::actors::~actors()
    {
        for (uint64 i = 0; i < this->Actors.Length(); i++)
        {
            if (this->Actors[i] != NULL)
            {
                delete this->Actors[i];
            }
        }
    }

    uint64 engine::actors::New(uint64 Type)
    {
        for (uint64 i = 1; i < this->Actors.Length(); i++)
        {
            if (this->Actors[i] == NULL)
            {
                if ((this->Actors[i] = new actor(this->Engine, Type)) == NULL)
                {
                    printf("engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Actors += {new actor(this->Engine, Type)}))[this->Actors.Length() - 1] == NULL)
        {
            printf("engine.actors.New(): Memory allocation failed\nParams: Type: %lld\n", Type);
            exit(1);
        }

        return this->Actors.Length() - 1;
    }

    uint8 engine::actors::Delete(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Actors.Length() <= IDs.begin()[i])
            {
                printf("engine.actors.Delete(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
                exit(1);
            }
            if (IDs.begin()[i] == 0 || this->Actors[IDs.begin()[i]] == NULL)
            {
                continue;
            }

            delete this->Actors[IDs.begin()[i]];
            if (IDs.begin()[i] == this->Actors.Length() - 1)
            {
                this->Actors.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Actors[IDs.begin()[i]] = NULL;
            }
        }

        return 0;
    }

    engine::actors::actor& engine::actors::operator [] (uint64 ID)
    {
        if (this->Actors.Length() <= ID || this->Actors[ID] == NULL)
        {
            printf("engine.actors[]: ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Actors[ID];
    }

    engine::actors::actor::actor(engine& Engine, uint64 Type) : Engine(Engine), Type(Type), X(0), Y(0), Width(0), Height(0), Colors(1), Textures(1) {}

    engine::actors::actor::~actor()
    {
        if (this->Engine.Actors.Actors[this->Engine.Camera.XActor] == this)
        {
            this->Engine.Camera.XActor = 0;
        }
        if (this->Engine.Actors.Actors[this->Engine.Camera.YActor] == this)
        {
            this->Engine.Camera.YActor = 0;
        }
    }

    uint64 engine::actors::actor::GetType()
    {
        return this->Type;
    }

    double engine::actors::actor::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::GetY()
    {
        return this->Y;
    }

    uint8 engine::actors::actor::SetX(double X)
    {
        this->X = X;
        this->ResolveCollision();

        return 0;
    }

    uint8 engine::actors::actor::SetY(double Y)
    {
        this->Y = Y;
        this->ResolveCollision();

        return 0;
    }

    uint16 engine::actors::actor::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::GetHeight()
    {
        return this->Height;
    }

    uint8 engine::actors::actor::SetHeight(uint16 Height)
    {
        this->Height = Height;

        return 0;
    }

    uint8 engine::actors::actor::SetWidth(uint16 Width)
    {
        this->Width = Width;

        return 0;
    }

    engine::actors::actor::color::color(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor)
    {
        this->OffsetX = 0;
        this->OffsetX = 0;
        this->Layer = 1;
        this->Width = 0;
        this->Height = 0;
        this->FlipHorizontal = false;
        this->FlipVertical = false;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Visible = true;
    }

    engine::actors::actor::texture::texture(engine& Engine, actor& Actor) : Engine(Engine), Actor(Actor)
    {
        this->OffsetX = 0;
        this->OffsetX = 0;
        this->Layer = 1;
        this->Width = 0;
        this->Height = 0;
        this->Angle = 0;
        this->FlipHorizontal = false;
        this->FlipVertical = false;
        this->ColorR = 255;
        this->ColorG = 255;
        this->ColorB = 255;
        this->ColorA = 255;
        this->Visible = true;
    }

    uint64 engine::actors::actor::texture::GetTextureID()
    {
        return this->TextureID;
    }

    uint8 engine::actors::actor::texture::SetTextureID(uint64 ID)
    {
        if (this->Engine.Assets.Textures.Length() <= ID || this->Engine.Assets.Textures[ID] == NULL)
        {
            printf("engine.actors.actor.texture.SetTextureID(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        this->TextureID = ID;

        return 0;  
    }

    uint64 engine::actors::actor::NewColor()
    {
        for (uint64 i = 1; i < this->Colors.Length(); i++)
        {
            if (this->Colors[i] == NULL)
            {
                if ((this->Colors[i] = new color(this->Engine, *this)) == NULL)
                {
                    printf("engine.actors.actor.NewColor(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Colors += {new color(this->Engine, *this)}))[this->Colors.Length() - 1] == NULL)
        {
            printf("engine.actors.actor.NewColor(): Memory allocation failed\n");
            exit(1);
        }

        return this->Colors.Length() - 1;
    }

    uint64 engine::actors::actor::NewTexture()
    {
        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = new texture(this->Engine, *this)) == NULL)
                {
                    printf("engine.actors.actor.NewTexture(): Memory allocation failed\n");
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Textures += {new texture(this->Engine, *this)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("engine.actors.actor.NewTexture(): Memory allocation failed\n");
            exit(1);
        }

        return this->Textures.Length() - 1;
    }

    engine::actors::actor::color& engine::actors::actor::GetColor(uint64 ID)
    {
        if (ID == 0)
        {
            printf("engine.actors.actor.GetColor(): Illegal access to NULL Color\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Colors.Length() <= ID || this->Colors[ID] == NULL)
        {
            printf("engine.actors.actor.GetColor(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Colors[ID];
    }

    engine::actors::actor::texture& engine::actors::actor::GetTexture(uint64 ID)
    {
        if (ID == 0)
        {
            printf("engine.actors.actor.GetTexture(): ILlegal access to NULL Texture\nParams: ID: %lld\n", ID);
        }
        if (this->Textures.Length() <= ID || this->Textures[ID] == NULL)
        {
            printf("engine.actors.actor.GetTexture(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Textures[ID];
    }

    uint8 engine::actors::actor::RemoveColors(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Colors.Length() <= IDs.begin()[i])
            {
                printf("engine.actors.actor.RemoveColors(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
                exit(1);
            }
            if (IDs.begin()[i] == 0 || this->Colors[IDs.begin()[i]] == NULL)
            {
                continue;
            }
            
            delete this->Colors[IDs.begin()[i]];
            if (IDs.begin()[i] == this->Colors.Length() - 1)
            {
                this->Colors.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Colors[IDs.begin()[i]] = NULL;
            }
        }

        return 0;
    }

    uint8 engine::actors::actor::RemoveTextures(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Textures.Length() <= IDs.begin()[i])
            {
                printf("engine.actors.actor.RemoveTextures(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
                exit(1);
            }
            if (IDs.begin()[i] == 0 || this->Textures[IDs.begin()[i]] == NULL)
            {
                continue;
            }

            delete this->Textures[IDs.begin()[i]];
            if (IDs.begin()[i] == this->Textures.Length() - 1)
            {
                this->Textures.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Textures[IDs.begin()[i]] = NULL;
            }
        }

        return 0;
    }

    uint8 engine::actors::actor::ResolveCollision()
    {
        return 0;
    }
}