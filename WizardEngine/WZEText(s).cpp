#include "WizardEngine.hpp"

using namespace neo;

namespace wze
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
            printf("wze::engine.actors[].texts.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n", String, FontID);
            exit(1);
        }
        if (FontID != 0 && (this->Engine->Assets.Fonts.Length() <= FontID || this->Engine->Assets.Fonts[FontID] == NULL))
        {
            printf("wze::engine.actors[].texts.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        for (uint64 i = 1; i < this->Texts.Length(); i++)
        {
            if (this->Texts[i] == NULL)
            {
                if ((this->Texts[i] = new text(this->Engine, this->Actor, String, FontID)) == NULL)
                {
                    printf("wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Texts += {new text(this->Engine, this->Actor, String, FontID)})[this->Texts.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        return this->Texts.Length() - 1;
    }

    uint8 engine::actors::actor::texts::Delete(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.actors[].texts.Delete(): Illegal deletion of NULL Text\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Texts.Length() <= ID || this->Texts[ID] == NULL)
        {
            printf("wze::engine.actors[].texts.Delete(): Text does not exist\nParams: ID: %lld\n", ID);
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
        uint64 i;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Texts.Length() <= Keep.begin()[i] || this->Texts[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Texts.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
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
        uint64 i;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Texts.Length() <= (*Keep)[i] || this->Texts[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.actors[].texts.Purge(): Text does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Texts.Length(); i++)
        {
            if (!Keep->Contains({i}))
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
            printf("wze::engine.actors[].texts[]: Illegal access to NULL Text\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Texts.Length() <= ID || this->Texts[ID] == NULL)
        {
            printf("wze::engine.actors[].texts[]: Text does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        return *this->Texts[ID];
    }

    engine::actors::actor::texts::text::text(engine* Engine, actor* Actor, const char* String, uint64 FontID) : Engine(Engine), Actor(Actor)
    {
        SDL_Surface* surface;
        SDL_Color color;

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
        this->Width = 0;
        this->Height = this->Actor->Height;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->String = {String};
        this->FontID = FontID;
        this->Texture = NULL;

        if (this->Height != 0 && 1 < this->String.Length() && this->FontID != 0)
        {
            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[this->FontID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].texts[].text(): TTF_RenderUTF8_Blended failed\nParams: String: %s\n", String);
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].texts[].text(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n", String);
                exit(1);
            }

            this->Width = round(surface->w * double(this->Height) / surface->h);
            SDL_FreeSurface(surface);
        }
    }

    engine::actors::actor::texts::text::~text()
    {
        SDL_DestroyTexture(this->Texture);
    }

    double engine::actors::actor::texts::text::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::texts::text::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].texts[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::texts::text::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::texts::text::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].texts[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? this->Engine->Vector.Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    uint16 engine::actors::actor::texts::text::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::texts::text::GetHeight()
    {
        return this->Height;
    }

    uint16 engine::actors::actor::texts::text::SetHeight(uint16 Height)
    {
        SDL_Surface* surface;
        SDL_Color color;

        this->Width = 0;

        SDL_DestroyTexture(this->Texture);
        this->Texture = NULL;

        if (Height != 0 && 1 < this->String.Length() && this->FontID != 0)
        {
            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[this->FontID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetHeight(): TTF_RenderUTF8_Blended failed\nParams: Height: %d\n", Height);
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetHeight(): SDL_CreateTextureFromSurface failed\nParams: Height: %d\n", Height);
                exit(1);
            }

            this->Width = round(surface->w * double(Height) / surface->h);
            SDL_FreeSurface(surface);
        }

        return this->Height = Height;
    }

    const char* engine::actors::actor::texts::text::GetString()
    {
        return this->String();
    }

    const char* engine::actors::actor::texts::text::SetString(const char* String)
    {
        SDL_Surface* surface;
        SDL_Color color;

        if (String == NULL)
        {
            printf("wze::engine.actors[].texts[].SetString(): String must not be NULL\nParams: String: %p\n", String);
            exit(1);
        }

        this->String = {String};

        this->Width = 0;

        SDL_DestroyTexture(this->Texture);
        this->Texture = NULL;

        if (this->Height != 0 && 1 < this->String.Length() && this->FontID != 0)
        {
            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[this->FontID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetString(): TTF_RenderUTF8_Blended failed\nParams: String: %s\n", String);
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetString(): SDL_CreateTextureFromSurface failed\nParams: String: %s\n", String);
                exit(1);
            }

            this->Width = round(surface->w * double(this->Height) / surface->h);
            SDL_FreeSurface(surface);
        }

        return this->String();
    }

    uint64 engine::actors::actor::texts::text::GetFont()
    {
        return this->FontID;
    }

    uint64 engine::actors::actor::texts::text::SetFont(uint64 ID)
    {
        SDL_Surface* surface;
        SDL_Color color;

        if (ID != 0 && (this->Engine->Assets.Fonts.Length() <= ID || this->Engine->Assets.Fonts[ID] == NULL))
        {
            printf("wze::engine.actors[].texts[].SetFont(): Font does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        this->Width = 0;

        SDL_DestroyTexture(this->Texture);
        this->Texture = NULL;

        if (this->Height != 0 && 1 < this->String.Length() && ID != 0)
        {
            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[ID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\nParams: ID: %lld\n", ID);
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\nParams: ID: %lld\n", ID);
                exit(1);
            }

            this->Width = round(surface->w * double(this->Height) / surface->h);
            SDL_FreeSurface(surface);
        }

        return this->FontID = ID;
    }
}