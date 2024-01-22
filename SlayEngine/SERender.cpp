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
        uint64 i, j;
        SDL_Rect area;
        SDL_Color color;

        i = 0;
        for (uint64 actor = 1; actor < this->Engine.Actors.Actors.Length(); actor++)
        {
            if (this->Engine.Actors.Actors[actor] == NULL)
            {
                continue;
            }

            for (uint64 color = 1; color < this->Engine.Actors.Actors[actor]->Colors.Colors.Length(); color++)
            {
                if (this->Engine.Actors.Actors[actor]->Colors.Colors[color] == NULL || this->Engine.Actors.Actors[actor]->Colors.Colors[color]->ColorA == 0 || this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Visible == false)
                {
                    continue;
                }

                area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[actor]->X + this->Engine.Actors.Actors[actor]->Colors.Colors[color]->OffsetX, this->Engine.Actors.Actors[actor]->Y + this->Engine.Actors.Actors[actor]->Colors.Colors[color]->OffsetY, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Width, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Height, this->Engine.Actors.Actors[actor]->Layer);

                if (this->AreaVisibility(area))
                {
                    if (i == this->RenderQueue.Length())
                    {
                        if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], COLOR, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Priority, area)}))[i] == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }
                    else
                    {
                        if ((this->RenderQueue[i] = new token(this->Engine.Actors.Actors[actor], COLOR, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Priority, area)) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }

                    i++;
                }
            }

            for (uint64 texture = 1; texture < this->Engine.Actors.Actors[actor]->Textures.Textures.Length(); texture++)
            {
                if (this->Engine.Actors.Actors[actor]->Textures.Textures[texture] == NULL || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->ColorA == 0 || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Visible == false || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->TextureID == 0)
                {
                    continue;
                }

                area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[actor]->X + this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->OffsetX, this->Engine.Actors.Actors[actor]->Y + this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->OffsetY, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Width, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Height, this->Engine.Actors.Actors[actor]->Layer);

                if (this->AreaVisibility(area))
                {
                    if (i == this->RenderQueue.Length())
                    {
                        if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], TEXTURE, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Priority, area)}))[i] == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }
                    else
                    {
                        if ((this->RenderQueue[i] = {new token(this->Engine.Actors.Actors[actor], TEXTURE, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Priority, area)}) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }

                    i++;
                }
            }

            for (uint64 text = 1; text < this->Engine.Actors.Actors[actor]->Texts.Texts.Length(); text++)
            {
                if (this->Engine.Actors.Actors[actor]->Texts.Texts[text] == NULL || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->ColorA == 0 || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Visible == false || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->FontID == 0)
                {
                    continue;
                }

                SDL_FreeSurface(this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Surface);
                color.r = this->Engine.Actors.Actors[actor]->Texts.Texts[text]->ColorR;
                color.g = this->Engine.Actors.Actors[actor]->Texts.Texts[text]->ColorG;
                color.b = this->Engine.Actors.Actors[actor]->Texts.Texts[text]->ColorB;
                color.a = this->Engine.Actors.Actors[actor]->Texts.Texts[text]->ColorA;
                if ((this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Surface = TTF_RenderText_Blended(this->Engine.Assets.Fonts[this->Engine.Actors.Actors[actor]->Texts.Texts[text]->FontID], this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Text(), color)) == NULL)
                {
                    printf("slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed\n");
                    exit(1);
                }

                area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[actor]->X + this->Engine.Actors.Actors[actor]->Texts.Texts[text]->OffsetX, this->Engine.Actors.Actors[actor]->Y + this->Engine.Actors.Actors[actor]->Texts.Texts[text]->OffsetY, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Surface->w * this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Height / this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Surface->h, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Height, this->Engine.Actors.Actors[actor]->Layer);

                if (this->AreaVisibility(area))
                {
                    if (i == this->RenderQueue.Length())
                    {
                        if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], TEXT, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Priority, area)}))[i] == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }
                    else
                    {
                        if ((this->RenderQueue[i] = {new token(this->Engine.Actors.Actors[actor], TEXT, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Priority, area)}) == NULL)
                        {
                            printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                            exit(1);
                        }
                    }

                    i++;
                }
            }
        }
        if (i < this->RenderQueue.Length())
        {
            this->RenderQueue.Remove(i, this->RenderQueue.Length() - i);
        }

        return 0;
    }

    bool engine::render::AreaVisibility(SDL_Rect Area)
    {
        return (0 <= Area.x + (Area.w >> 1) || Area.x - (Area.w >> 1) <= this->RenderHeight || 0 <= Area.y + (Area.h >> 1) || Area.y - (Area.h >> 1) <= this->RenderHeight);
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