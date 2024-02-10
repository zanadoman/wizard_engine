#include "WizardEngine.hpp"
#include <cmath>

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

    engine::actors::actor::texts::text* engine::actors::actor::texts::New(const char* String, uint64 FontID)
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
                if ((this->Texts[i] = new text(this->Engine, this->Actor, i, String, FontID)) == NULL)
                {
                    printf("wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
                    exit(1);
                }

                return this->Texts[i];
            }
        }

        if ((this->Texts += {new text(this->Engine, this->Actor, this->Texts.Length(), String, FontID)})[this->Texts.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].texts.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        return this->Texts[this->Texts.Length() - 1];
    }

    uint8 engine::actors::actor::texts::Delete(uint64 TextID)
    {
        uint64 i;

        if (this->Texts.Length() <= TextID || this->Texts[TextID] == NULL)
        {
            return 0;
        }

        delete this->Texts[TextID];
        this->Texts[TextID] = NULL;

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

    uint8 engine::actors::actor::texts::Purge(std::initializer_list<uint64> KeepTextIDs)
    {
        uint64 i;

        for (i = 1; i < this->Texts.Length(); i++)
        {
            if (!initializer_list_Contains(KeepTextIDs, {i}))
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

    uint8 engine::actors::actor::texts::Purge(array<uint64>* KeepTextIDs)
    {
        uint64 i;

        if (KeepTextIDs == NULL)
        {
            printf("wze::engine.actors[].texts.Purge(): KeepTextIDs must not be NULL\nParams: KeepTextIDs: %p\n", KeepTextIDs);
            exit(1);
        }

        for (i = 1; i < this->Texts.Length(); i++)
        {
            if (!KeepTextIDs->Contains({i}))
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

    engine::actors::actor::texts::text& engine::actors::actor::texts::operator [] (uint64 TextID)
    {
        if (TextID == 0)
        {
            printf("wze::engine.actors[].texts[]: Illegal access to NULL Text\nParams: TextID: %lld\n", TextID);
            exit(1);
        }
        if (this->Texts.Length() <= TextID || this->Texts[TextID] == NULL)
        {
            printf("wze::engine.actors[].texts[]: Text does not exist\nParams: TextID: %lld\n", TextID);
            exit(1);
        }

        return *this->Texts[TextID];
    }

    engine::actors::actor::texts::text::text(engine* Engine, actor* Actor, uint64 ID, const char* String, uint64 FontID) : Engine(Engine), Actor(Actor)
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
        this->ID = ID;
        this->X = this->Actor->X;
        this->Y = this->Actor->Y;
        this->Width = 0;
        this->Height = this->Actor->Height;
        this->OffsetLength = 0;
        this->OffsetAngle = 0;
        this->String = {String};
        this->FontID = FontID;
        this->FontStyle = STYLE_NORMAL;
        this->Texture = NULL;

        if (this->FontID != 0 && this->Height != 0 && 1 < this->String.Length())
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

    uint64 engine::actors::actor::texts::text::GetID()
    {
        return this->ID;
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

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

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

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

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

        if (this->Height != Height && this->FontID != 0 && Height != 0 && 1 < this->String.Length())
        {
            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], this->FontStyle);
            }

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

            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], STYLE_NORMAL);
            }
        }
        else
        {
            this->Width = 0;
            SDL_DestroyTexture(this->Texture);
            this->Texture = NULL;
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

        if (this->String != String && this->FontID != 0 && this->Height != 0 && 1 < string::LiteralLength(String))
        {
            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], this->FontStyle);
            }

            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[this->FontID], String, color)) == NULL)
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

            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], STYLE_NORMAL);
            }
        }
        else
        {
            this->Width = 0;
            SDL_DestroyTexture(this->Texture);
            this->Texture = NULL;
        }

        return (this->String = {String})();
    }

    uint64 engine::actors::actor::texts::text::GetFontID()
    {
        return this->FontID;
    }

    uint64 engine::actors::actor::texts::text::SetFontID(uint64 FontID)
    {
        SDL_Surface* surface;
        SDL_Color color;

        if (FontID != 0 && (this->Engine->Assets.Fonts.Length() <= FontID || this->Engine->Assets.Fonts[FontID] == NULL))
        {
            printf("wze::engine.actors[].texts[].SetFontID(): Font does not exist\nParams: FontID: %lld\n", FontID);
            exit(1);
        }

        if (this->FontID != FontID && FontID != 0 && this->Height != 0 && 1 < this->String.Length())
        {
            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[FontID], this->FontStyle);
            }

            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[FontID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetFontID(): TTF_RenderUTF8_Blended failed\nParams: FontID: %lld\n", FontID);
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetFontID(): SDL_CreateTextureFromSurface failed\nParams: FontID: %lld\n", FontID);
                exit(1);
            }

            this->Width = round(surface->w * double(this->Height) / surface->h);
            SDL_FreeSurface(surface);

            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[FontID], STYLE_NORMAL);
            }
        }
        else
        {
            this->Width = 0;
            SDL_DestroyTexture(this->Texture);
            this->Texture = NULL;
        }

        return this->FontID = FontID;
    }

    style engine::actors::actor::texts::text::GetFontStyle()
    {
        return this->FontStyle;
    }

    style engine::actors::actor::texts::text::SetFontStyle(style FontStyle)
    {
        SDL_Surface* surface;
        SDL_Color color;

        if (this->FontStyle != FontStyle && this->FontID != 0 && this->Height != 0 && 1 < this->String.Length())
        {
            if (FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], FontStyle);
            }

            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[this->FontID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetFont(): TTF_RenderUTF8_Blended failed\nParams: FontStyle: %d\n", FontStyle);
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].texts[].SetFont(): SDL_CreateTextureFromSurface failed\nParams: FontStyle: %d\n", FontStyle);
                exit(1);
            }

            this->Width = round(surface->w * double(this->Height) / surface->h);
            SDL_FreeSurface(surface);

            if (FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], STYLE_NORMAL);
            }
        }
        else
        {
            this->Width = 0;
            SDL_DestroyTexture(this->Texture);
            this->Texture = NULL;
        }

        return this->FontStyle = FontStyle;
    }
}