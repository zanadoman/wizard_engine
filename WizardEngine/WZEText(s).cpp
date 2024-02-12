#include "WizardEngine.hpp"
#include <cmath>

using namespace neo;

namespace wze
{
    engine::actors::actor::textboxes::textboxes(engine* Engine, actor* Actor) : Engine(Engine), Actor(Actor), Textboxes({(textbox*)NULL}) {}

    engine::actors::actor::textboxes::~textboxes()
    {
        for (uint64 i = 1; i < this->Textboxes.Length(); i++)
        {
            delete this->Textboxes[i];
        }
    }

    engine::actors::actor::textboxes::textbox* engine::actors::actor::textboxes::New(const char* String, uint64 FontID)
    {
        if (String == NULL)
        {
            printf("wze::engine.actors[].textboxes.New(): String must not be NULL\nParams: String: %p, FontID: %lld\n", String, FontID);
            exit(1);
        }
        if (FontID != 0 && (this->Engine->Assets.Fonts.Length() <= FontID || this->Engine->Assets.Fonts[FontID] == NULL))
        {
            printf("wze::engine.actors[].textboxes.New(): FontID does not exist\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        for (uint64 i = 1; i < this->Textboxes.Length(); i++)
        {
            if (this->Textboxes[i] == NULL)
            {
                if ((this->Textboxes[i] = new textbox(this->Engine, this->Actor, i, String, FontID)) == NULL)
                {
                    printf("wze::engine.actors[].textboxes.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
                    exit(1);
                }

                return this->Textboxes[i];
            }
        }

        if ((this->Textboxes += {new textbox(this->Engine, this->Actor, this->Textboxes.Length(), String, FontID)})[this->Textboxes.Length() - 1] == NULL)
        {
            printf("wze::engine.actors[].textboxes.New(): Memory allocation failed\nParams: String: %s, FontID: %lld\n", String, FontID);
            exit(1);
        }

        return this->Textboxes[this->Textboxes.Length() - 1];
    }

    uint8 engine::actors::actor::textboxes::Delete(uint64 TextboxID)
    {
        uint64 i;

        if (this->Textboxes.Length() <= TextboxID || this->Textboxes[TextboxID] == NULL)
        {
            return 0;
        }

        delete this->Textboxes[TextboxID];
        this->Textboxes[TextboxID] = NULL;

        if (this->Textboxes[this->Textboxes.Length() - 1] == NULL && 1 < this->Textboxes.Length())
        {
            for (i = this->Textboxes.Length(); 1 < i; i--)
            {
                if (this->Textboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textboxes.Remove(i, this->Textboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textboxes::Purge(std::initializer_list<uint64> KeepTextboxIDs)
    {
        uint64 i;

        for (i = 1; i < this->Textboxes.Length(); i++)
        {
            if (!initializer_list_Contains(KeepTextboxIDs, {i}))
            {
                delete this->Textboxes[i];
                this->Textboxes[i] = NULL;
            }
        }

        if (this->Textboxes[this->Textboxes.Length() - 1] == NULL && 1 < this->Textboxes.Length())
        {
            for (i = this->Textboxes.Length(); 1 < i; i--)
            {
                if (this->Textboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textboxes.Remove(i, this->Textboxes.Length() - i);
        }

        return 0;
    }

    uint8 engine::actors::actor::textboxes::Purge(array<uint64>* KeepTextboxIDs)
    {
        uint64 i;

        if (KeepTextboxIDs == NULL)
        {
            printf("wze::engine.actors[].textboxes.Purge(): KeepTextboxIDs must not be NULL\nParams: KeepTextboxIDs: %p\n", KeepTextboxIDs);
            exit(1);
        }

        for (i = 1; i < this->Textboxes.Length(); i++)
        {
            if (!KeepTextboxIDs->Contains({i}))
            {
                delete this->Textboxes[i];
                this->Textboxes[i] = NULL;
            }
        }

        if (this->Textboxes[this->Textboxes.Length() - 1] == NULL && 1 < this->Textboxes.Length())
        {
            for (i = this->Textboxes.Length(); 1 < i; i--)
            {
                if (this->Textboxes[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textboxes.Remove(i, this->Textboxes.Length() - i);
        }

        return 0;
    }

    engine::actors::actor::textboxes::textbox& engine::actors::actor::textboxes::operator [] (uint64 TextboxID)
    {
        if (TextboxID == 0)
        {
            printf("wze::engine.actors[].textboxes[]: Illegal access to NULL Textbox\nParams: TextboxID: %lld\n", TextboxID);
            exit(1);
        }
        if (this->Textboxes.Length() <= TextboxID || this->Textboxes[TextboxID] == NULL)
        {
            printf("wze::engine.actors[].textboxes[]: Textbox does not exist\nParams: TextboxID: %lld\n", TextboxID);
            exit(1);
        }

        return *this->Textboxes[TextboxID];
    }

    engine::actors::actor::textboxes::textbox::textbox(engine* Engine, actor* Actor, uint64 ID, const char* String, uint64 FontID) : Engine(Engine), Actor(Actor)
    {
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

        this->UpdateTexture();
    }

    engine::actors::actor::textboxes::textbox::~textbox()
    {
        SDL_DestroyTexture(this->Texture);
    }

    uint64 engine::actors::actor::textboxes::textbox::GetID()
    {
        return this->ID;
    }

    double engine::actors::actor::textboxes::textbox::GetX()
    {
        return this->X;
    }

    double engine::actors::actor::textboxes::textbox::SetX(double X)
    {
        if (X != X)
        {
            printf("wze::engine.actors[].textboxes[].SetX(): X must not be NaN\nParams: X: %lf\n", X);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, X, this->Y) : 0;
        this->OffsetAngle = this->Actor->X != X || this->Actor->Y != this->Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, X, this->Y) : 0;

        return this->X = X;
    }

    double engine::actors::actor::textboxes::textbox::GetY()
    {
        return this->Y;
    }

    double engine::actors::actor::textboxes::textbox::SetY(double Y)
    {
        if (Y != Y)
        {
            printf("wze::engine.actors[].textboxes[].SetY(): Y must not be NaN\nParams: Y: %lf\n", Y);
            exit(1);
        }

        this->OffsetLength = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Length(this->Actor->X, this->Actor->Y, this->X, Y) : 0;
        this->OffsetAngle = this->Actor->X != this->X || this->Actor->Y != Y ? engine::vector::Angle(this->Actor->X, this->Actor->Y, this->X, Y) : 0;

        return this->Y = Y;
    }

    double engine::actors::actor::textboxes::textbox::GetOffsetLength()
    {
        return this->OffsetLength;
    }

    double engine::actors::actor::textboxes::textbox::SetOffsetLength(double OffsetLength)
    {
        if (OffsetLength != OffsetLength)
        {
            printf("wze::engine.actors[].textboxes[].SetOffsetLength(): OffsetLength must not be NaN\nParams: OffsetLength: %lf\n", OffsetLength);
            exit(1);
        }

        this->X = this->Engine->Vector.TerminalX(this->Actor->X, OffsetLength, this->OffsetAngle);
        this->Y = this->Engine->Vector.TerminalY(this->Actor->Y, OffsetLength, this->OffsetAngle);

        return this->OffsetLength = OffsetLength;
    }

    double engine::actors::actor::textboxes::textbox::GetOffsetAngle()
    {
        return this->OffsetAngle;
    }

    double engine::actors::actor::textboxes::textbox::SetOffsetAngle(double OffsetAngle)
    {
        if (OffsetAngle != OffsetAngle)
        {
            printf("wze::engine.actors[].textboxes[].SetOffsetAngle(): OffsetAngle must not be NaN\nParams: OffsetAngle %lf\n", OffsetAngle);
            exit(1);
        }

        this->X = this->Engine->Vector.TerminalX(this->Actor->X, this->OffsetLength, OffsetAngle);
        this->Y = this->Engine->Vector.TerminalY(this->Actor->Y, this->OffsetLength, OffsetAngle);

        return this->OffsetAngle = OffsetAngle;
    }

    uint16 engine::actors::actor::textboxes::textbox::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::actors::actor::textboxes::textbox::GetHeight()
    {
        return this->Height;
    }

    uint16 engine::actors::actor::textboxes::textbox::SetHeight(uint16 Height)
    {
        if (this->Height != Height)
        {
            this->Height = Height;
            this->UpdateTexture();
        }

        return this->Height;
    }

    const char* engine::actors::actor::textboxes::textbox::GetString()
    {
        return this->String();
    }

    const char* engine::actors::actor::textboxes::textbox::SetString(const char* String)
    {
        if (String == NULL)
        {
            printf("wze::engine.actors[].textboxes[].SetString(): String must not be NULL\nParams: String: %p\n", String);
            exit(1);
        }

        if (this->String != String)
        {
            this->String = {String};
            this->UpdateTexture();
        }

        return this->String();
    }

    uint64 engine::actors::actor::textboxes::textbox::GetFontID()
    {
        return this->FontID;
    }

    uint64 engine::actors::actor::textboxes::textbox::SetFontID(uint64 FontID)
    {
        if (FontID != 0 && (this->Engine->Assets.Fonts.Length() <= FontID || this->Engine->Assets.Fonts[FontID] == NULL))
        {
            printf("wze::engine.actors[].textboxes[].SetFontID(): Font does not exist\nParams: FontID: %lld\n", FontID);
            exit(1);
        }

        if (this->FontID != FontID)
        {
            this->FontID = FontID;
            this->UpdateTexture();
        }

        return this->FontID;
    }

    style engine::actors::actor::textboxes::textbox::GetFontStyle()
    {
        return this->FontStyle;
    }

    style engine::actors::actor::textboxes::textbox::SetFontStyle(style FontStyle)
    {
        if (this->FontStyle != FontStyle)
        {
            this->FontStyle = FontStyle;
            this->UpdateTexture();
        }

        return this->FontStyle;
    }

    uint8 engine::actors::actor::textboxes::textbox::UpdateTexture()
    {
        SDL_Surface* surface;
        SDL_Color color;

        this->Width = 0;
        SDL_DestroyTexture(this->Texture);
        this->Texture = NULL;

        if (this->Height != 0 && 1 < this->String.Length() && this->FontID != 0)
        {
            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], this->FontStyle);
            }

            color.r = color.g = color.b = color.a = 255;

            if ((surface = TTF_RenderUTF8_Blended(this->Engine->Assets.Fonts[this->FontID], this->String(), color)) == NULL)
            {
                printf("wze::engine.actors[].textboxes[].UpdateTexture(): TTF_RenderUTF8_Blended failed\n");
                exit(1);
            }
            if ((this->Texture = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, surface)) == NULL)
            {
                printf("wze::engine.actors[].textboxes[].UpdateTexture(): SDL_CreateTextureFromSurface failed\n");
                exit(1);
            }

            this->Width = round(surface->w * double(this->Height) / surface->h);
            SDL_FreeSurface(surface);

            if (this->FontStyle != STYLE_NORMAL)
            {
                TTF_SetFontStyle(this->Engine->Assets.Fonts[this->FontID], STYLE_NORMAL);
            }
        }

        return 0;
    }
}