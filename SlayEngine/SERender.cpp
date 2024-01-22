#include "Includes/SDL_rect.h"
#include "Includes/SDL_surface.h"
#include "Includes/SDL_ttf.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine& Engine) : Engine(Engine) {}

    engine::render::~render()
    {
        for (uint64 i = 0; i < this->RenderQueue.Length(); i++)
        {
            delete this->RenderQueue[i];
        }
    }

    engine::render::token::token(void* Data, token_t Type, double Layer, uint8 Priority, SDL_Rect Area)
    {
        this->Data = Data;
        this->Type = Type;
        this->Layer = Layer;
        this->Priority = Priority;
        this->Area = Area;
    }

    uint8 engine::render::Update()
    {
        uint64 min;

        this->SelectionStage();
        this->OrderingStage();

        this->OpenFrame();

        for (uint64 i = 0; i < this->RenderQueue.Length(); i++)
        {
            printf("Layer: %lf, Priority: %d\n", this->RenderQueue[i]->Layer, this->RenderQueue[i]->Priority);
        }

        this->CloseFrame();

        return 0;
    }

    uint8 engine::render::OpenFrame()
    {
        if (SDL_SetRenderDrawColor(this->Engine.Window.Renderer, 0, 0, 0, 255) != 0)
        {
            printf("slay::engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\n");
            return 1;
        }
        if (SDL_RenderClear(this->Engine.Window.Renderer) != 0)
        {
            printf("slay::engine.render.OpenFrame(): SDL_RenderClear() failed\n");
            return 1;
        }

        return 0;
    }

    uint8 engine::render::CloseFrame()
    {
        SDL_RenderPresent(this->Engine.Window.Renderer);

        return 0;
    }

    uint8 engine::render::SelectionStage()
    {
        uint64 buffer;
        SDL_Rect area;
        SDL_Color color;

        buffer = 0;
        for (uint64 i = 1; i < this->Engine.Actors.Actors.Length(); i++)
        {
            if (this->Engine.Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Colors.Colors.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Colors.Colors[j] == NULL || this->Engine.Actors.Actors[i]->Colors.Colors[j]->ColorA == 0 || this->Engine.Actors.Actors[i]->Colors.Colors[j]->Visible == false)
                {
                    continue;
                }

                area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Colors.Colors[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Colors.Colors[j]->OffsetY, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Width, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Height, this->Engine.Actors.Actors[i]->Layer);

                if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                {
                    if (buffer == this->RenderQueue.Length())
                    {
                        if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i], COLOR, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Priority, area)}))[buffer] == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }
                    else
                    {
                        if ((this->RenderQueue[buffer] = new token(this->Engine.Actors.Actors[i], COLOR, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Priority, area)) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }

                    buffer++;
                }
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Textures.Textures.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Textures.Textures[j] == NULL || this->Engine.Actors.Actors[i]->Textures.Textures[j]->ColorA == 0 || this->Engine.Actors.Actors[i]->Textures.Textures[j]->Visible == false || this->Engine.Actors.Actors[i]->Textures.Textures[j]->TextureID == 0)
                {
                    continue;
                }

                area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Textures.Textures[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Textures.Textures[j]->OffsetY, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Width, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Height, this->Engine.Actors.Actors[i]->Layer);

                if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                {
                    if (buffer == this->RenderQueue.Length())
                    {
                        if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i], TEXTURE, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Priority, area)}))[buffer] == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }
                    else
                    {
                        if ((this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[i], TEXTURE, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Priority, area)}) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }

                    buffer++;
                }
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Texts.Texts.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Texts.Texts[j] == NULL || this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorA == 0 || this->Engine.Actors.Actors[i]->Texts.Texts[j]->Visible == false || this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID == 0)
                {
                    continue;
                }

                SDL_FreeSurface(this->Engine.Actors.Actors[i]->Texts.Texts[j]->Surface);
                color.r = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorR;
                color.g = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorG;
                color.b = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorB;
                color.a = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorA;
                if ((this->Engine.Actors.Actors[i]->Texts.Texts[j]->Surface = TTF_RenderText_Blended(this->Engine.Assets.Fonts[this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID], this->Engine.Actors.Actors[i]->Texts.Texts[j]->Text(), color)) == NULL)
                {
                    printf("slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed\n");
                    exit(1);
                }

                area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Texts.Texts[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Texts.Texts[j]->OffsetY, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Surface->w * this->Engine.Actors.Actors[i]->Texts.Texts[j]->Height / this->Engine.Actors.Actors[i]->Texts.Texts[j]->Surface->h, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Height, this->Engine.Actors.Actors[i]->Layer);

                if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                {
                    if (buffer == this->RenderQueue.Length())
                    {
                        if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i], TEXT, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Priority, area)}))[buffer] == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }
                    else
                    {
                        if ((this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[i], TEXT, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Priority, area)}) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }

                    buffer++;
                }
            }
        }
        if (buffer < this->RenderQueue.Length())
        {
            this->RenderQueue.Remove(buffer, this->RenderQueue.Length() - buffer);
        }

        return 0;
    }

    uint8 engine::render::OrderingStage()
    {
        uint64 i, j;

        this->OrderByLayer(0, this->RenderQueue.Length() - 1);
        for (i = 1, j = 0; i < RenderQueue.Length(); i++)
        {
            if (this->RenderQueue[i]->Layer != this->RenderQueue[j]->Layer)
            {
                this->OrderByPriority(j, i - 1);
                j = i;
            }
        }
        this->OrderByPriority(j, i - 1);

        return 0;
    }

    uint8 engine::render::OrderByLayer(sint64 First, sint64 Last)
    {
        sint64 stack[Last - First + 1];
        sint64 i, top;
        token* tmp;

        stack[(top = 0)] = First;
        stack[++top] = Last;

        while (0 <= top)
        {
            Last = stack[top--];
            First = stack[top--];

            i = First - 1;
            for (sint64 j = First; j <= Last; j++)
            {
                if (this->RenderQueue[j]->Layer < this->RenderQueue[Last]->Layer)
                {
                    i++;
                    tmp = this->RenderQueue[i];
                    this->RenderQueue[i] = this->RenderQueue[j];
                    this->RenderQueue[j] = tmp;
                }
            }
            tmp = this->RenderQueue[i + 1];
            this->RenderQueue[i + 1] = this->RenderQueue[Last];
            this->RenderQueue[Last] = tmp;

            if (First < i)
            {
                stack[++top] = First;
                stack[++top] = i;
            }

            if (i + 2 < Last)
            {
                stack[++top] = i + 2;
                stack[++top] = Last;
            }
        }

        return 0;
    }

    uint8 engine::render::OrderByPriority(sint64 First, sint64 Last)
    {
        sint64 stack[Last - First + 1];
        sint64 i, top;
        token* tmp;

        stack[(top = 0)] = First;
        stack[++top] = Last;

        while (0 <= top)
        {
            Last = stack[top--];
            First = stack[top--];

            i = First - 1;
            for (sint64 j = First; j <= Last; j++)
            {
                if (this->RenderQueue[j]->Priority < this->RenderQueue[Last]->Priority)
                {
                    i++;
                    tmp = this->RenderQueue[i];
                    this->RenderQueue[i] = this->RenderQueue[j];
                    this->RenderQueue[j] = tmp;
                }
            }
            tmp = this->RenderQueue[i + 1];
            this->RenderQueue[i + 1] = this->RenderQueue[Last];
            this->RenderQueue[Last] = tmp;

            if (First < i)
            {
                stack[++top] = First;
                stack[++top] = i;
            }

            if (i + 2 < Last)
            {
                stack[++top] = i + 2;
                stack[++top] = Last;
            }
        }

        return 0;
    }

    sint32 engine::render::ScreenY(double Y)
    {
        return (round(Y) - this->RenderHeight) * -1;
    }

    sint32 engine::render::ScreenY(sint32 Y)
    {
        return (Y - this->RenderHeight) * -1;
    }
}