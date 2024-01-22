#include "Includes/SDL_render.h"
#include "Includes/SDL_surface.h"
#include "Includes/SDL_ttf.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::render::render(engine& Engine) : Engine(Engine)
    {
        this->SamplingStep = 0.001;
    }

    engine::render::token::token(void* Data, token_t Type, double Layer, uint8 Priority, SDL_Rect Area)
    {
        this->Data = Data;
        this->Type = Type;
        this->Layer = Layer;
        this->Priority = Priority;
        this->Area = Area;
    }

    double engine::render::GetSamplingStep()
    {
        return this->SamplingStep;
    }

    double engine::render::SetSamplingStep(double SamplingStep)
    {
        if (SamplingStep <= 0)
        {
            printf("slay::engine.render.SetSamplingStep(): SamplingStep must not be less than or equal to 0\nParams: SamplingStep: %lf\n", SamplingStep);
            exit(1);
        }

        return this->SamplingStep = SamplingStep;
    }

    uint8 engine::render::Update()
    {
        this->SelectionStage();
        this->OrderingStage();
        this->RenderingStage();

        return 0;
    }

    uint8 engine::render::SelectionStage()
    {
        uint64 buffer;
        double layer, tmp;
        SDL_Rect area;
        SDL_Color color;
        SDL_Surface* surface;

        buffer = 0;
        for (uint64 i = 1; i < this->Engine.Actors.Actors.Length(); i++)
        {
            if (this->Engine.Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Colors.Colors.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Colors.Colors[j] == NULL || this->Engine.Actors.Actors[i]->Colors.Colors[j]->Width == 0 || this->Engine.Actors.Actors[i]->Colors.Colors[j]->Height == 0 || this->Engine.Actors.Actors[i]->Colors.Colors[j]->ColorA == 0 || this->Engine.Actors.Actors[i]->Colors.Colors[j]->Visible == false)
                {
                    continue;
                }

                if (this->Engine.Actors.Actors[i]->Depth <= this->SamplingStep)
                {
                    area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Colors.Colors[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Colors.Colors[j]->OffsetY, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Width, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Height, this->Engine.Actors.Actors[i]->Layer);

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (buffer == this->RenderQueue.Length())
                        {
                            if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i]->Colors.Colors[j], COLOR, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Priority, area)}))[buffer] == NULL)
                            {
                                printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                exit(1);
                            }
                        }
                        else
                        {
                            if ((this->RenderQueue[buffer] = new token(this->Engine.Actors.Actors[i]->Colors.Colors[j], COLOR, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Priority, area)) == NULL)
                            {
                                printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                exit(1);
                            }
                        }

                        buffer++;
                    }
                }
                else
                {
                    layer = this->Engine.Actors.Actors[i]->Layer - this->Engine.Actors.Actors[i]->Depth / 2;
                    tmp = this->Engine.Actors.Actors[i]->Layer + this->Engine.Actors.Actors[i]->Depth / 2;
                    if (layer <= 0)
                    {
                        layer = EPSILON;
                    }

                    for (; layer < tmp; layer += this->SamplingStep)
                    {
                        area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Colors.Colors[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Colors.Colors[j]->OffsetY, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Width, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Height, layer);

                        if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                        {
                            if (buffer == this->RenderQueue.Length())
                            {
                                if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i]->Colors.Colors[j], COLOR, layer, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Priority, area)}))[buffer] == NULL)
                                {
                                    printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                    exit(1);
                                }
                            }
                            else
                            {
                                if ((this->RenderQueue[buffer] = new token(this->Engine.Actors.Actors[i]->Colors.Colors[j], COLOR, layer, this->Engine.Actors.Actors[i]->Colors.Colors[j]->Priority, area)) == NULL)
                                {
                                    printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                    exit(1);
                                }
                            }

                            buffer++;
                        }
                    }
                }
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Textures.Textures.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Textures.Textures[j] == NULL || this->Engine.Actors.Actors[i]->Textures.Textures[j]->Width == 0 || this->Engine.Actors.Actors[i]->Textures.Textures[j]->Height == 0 || this->Engine.Actors.Actors[i]->Textures.Textures[j]->ColorA == 0 || this->Engine.Actors.Actors[i]->Textures.Textures[j]->Visible == false || this->Engine.Actors.Actors[i]->Textures.Textures[j]->TextureID == 0)
                {
                    continue;
                }

                if (this->Engine.Actors.Actors[i]->Depth <= this->SamplingStep)
                {
                    area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Textures.Textures[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Textures.Textures[j]->OffsetY, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Width, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Height, this->Engine.Actors.Actors[i]->Layer);

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (buffer == this->RenderQueue.Length())
                        {
                            if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i]->Textures.Textures[j], TEXTURE, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Priority, area)}))[buffer] == NULL)
                            {
                                printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                exit(1);
                            }
                        }
                        else
                        {
                            if ((this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[i]->Textures.Textures[j], TEXTURE, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Priority, area)}) == NULL)
                            {
                                printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                exit(1);
                            }
                        }

                        buffer++;
                    }
                }
                else
                {
                    layer = this->Engine.Actors.Actors[i]->Layer - this->Engine.Actors.Actors[i]->Depth / 2;
                    tmp = this->Engine.Actors.Actors[i]->Layer + this->Engine.Actors.Actors[i]->Depth / 2;
                    if (layer <= 0)
                    {
                        layer = EPSILON;
                    }

                    for (; layer < tmp; layer += this->SamplingStep)
                    {
                        area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Textures.Textures[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Textures.Textures[j]->OffsetY, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Width, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Height, layer);

                        if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                        {
                            if (buffer == this->RenderQueue.Length())
                            {
                                if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i]->Textures.Textures[j], TEXTURE, layer, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Priority, area)}))[buffer] == NULL)
                                {
                                    printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                    exit(1);
                                }
                            }
                            else
                            {
                                if ((this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[i]->Textures.Textures[j], TEXTURE, layer, this->Engine.Actors.Actors[i]->Textures.Textures[j]->Priority, area)}) == NULL)
                                {
                                    printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                    exit(1);
                                }
                            }

                            buffer++;
                        }
                    }
                }
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Texts.Texts.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Texts.Texts[j] == NULL || this->Engine.Actors.Actors[i]->Texts.Texts[j]->Text.Length() < 2 || this->Engine.Actors.Actors[i]->Texts.Texts[j]->Height == 0 || this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorA == 0 || this->Engine.Actors.Actors[i]->Texts.Texts[j]->Visible == false || this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID == 0)
                {
                    continue;
                }

                if (this->Engine.Actors.Actors[i]->Texts.Texts[j]->TextChanged)
                {
                    SDL_DestroyTexture(this->Engine.Actors.Actors[i]->Texts.Texts[i]->Texture);
                    color.r = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorR;
                    color.g = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorG;
                    color.b = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorB;
                    color.a = this->Engine.Actors.Actors[i]->Texts.Texts[j]->ColorA;
                    if ((surface = TTF_RenderText_Blended(this->Engine.Assets.Fonts[this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID], this->Engine.Actors.Actors[i]->Texts.Texts[j]->Text(), color)) == NULL)
                    {
                        printf("slay::engine.render.SelectionStage(): TTF_RenderText_Blended failed\n");
                        exit(1);
                    }
                    this->Engine.Actors.Actors[i]->Texts.Texts[j]->Width = surface->w * this->Engine.Actors.Actors[i]->Texts.Texts[j]->Height / surface->h;
                    if ((this->Engine.Actors.Actors[i]->Texts.Texts[j]->Texture = SDL_CreateTextureFromSurface(this->Engine.Window.Renderer, surface)) == NULL)
                    {
                        printf("slay::engine.render.SelectionStage(): SDL_CreateTextureFromSurface failed\n");
                    }
                    SDL_FreeSurface(surface);
                    this->Engine.Actors.Actors[i]->Texts.Texts[j]->TextChanged = false;
                }
                
                if (this->Engine.Actors.Actors[i]->Depth <= this->SamplingStep)
                {
                    area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Texts.Texts[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Texts.Texts[j]->OffsetY, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Width, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Height, this->Engine.Actors.Actors[i]->Layer);

                    if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                    {
                        if (buffer == this->RenderQueue.Length())
                        {
                            if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i]->Texts.Texts[j], TEXT, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Priority, area)}))[buffer] == NULL)
                            {
                                printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                exit(1);
                            }
                        }
                        else
                        {
                            if ((this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[i]->Texts.Texts[j], TEXT, this->Engine.Actors.Actors[i]->Layer, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Priority, area)}) == NULL)
                            {
                                printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                exit(1);
                            }
                        }

                        buffer++;
                    }
                }
                else
                {
                    layer = this->Engine.Actors.Actors[i]->Layer - this->Engine.Actors.Actors[i]->Depth / 2;
                    tmp = this->Engine.Actors.Actors[i]->Layer + this->Engine.Actors.Actors[i]->Depth / 2;
                    if (layer <= 0)
                    {
                        layer = EPSILON;
                    }

                    for (; layer < tmp; layer += this->SamplingStep)
                    {
                        area = this->Engine.Camera.Transform(this->Engine.Actors.Actors[i]->X + this->Engine.Actors.Actors[i]->Texts.Texts[j]->OffsetX, this->Engine.Actors.Actors[i]->Y + this->Engine.Actors.Actors[i]->Texts.Texts[j]->OffsetY, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Width, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Height, layer);

                        if ((0 <= area.x + (area.w >> 1) || area.x - (area.w >> 1) <= this->RenderHeight || 0 <= area.y + (area.h >> 1) || area.y - (area.h >> 1) <= this->RenderHeight))
                        {
                            if (buffer == this->RenderQueue.Length())
                            {
                                if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[i]->Texts.Texts[j], TEXT, layer, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Priority, area)}))[buffer] == NULL)
                                {
                                    printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                    exit(1);
                                }
                            }
                            else
                            {
                                if ((this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[i]->Texts.Texts[j], TEXT, layer, this->Engine.Actors.Actors[i]->Texts.Texts[j]->Priority, area)}) == NULL)
                                {
                                    printf("slay::engine.render.SelectionStage(): Memory allocation failed\n");
                                    exit(1);
                                }
                            }

                            buffer++;
                        }
                    }
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

        if (Last <= First)
        {
            return 0;
        }

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

        if (Last <= First)
        {
            return 0;
        }

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

    uint8 engine::render::RenderingStage()
    {
        uint64 layered;

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

        layered = 0;
        for (uint64 i = 0; i < this->RenderQueue.Length(); i++)
        {
            if (0 < this->RenderQueue[i]->Layer)
            {
                layered = i;
                break;
            }
        }

        for (uint64 i = layered; i < this->RenderQueue.Length(); i++)
        {
            switch (this->RenderQueue[i]->Type)
            {
                case COLOR:
                    this->RenderColor(this->RenderQueue[i]);
                break;

                case TEXTURE:
                    this->RenderTexture(this->RenderQueue[i]);
                break;

                case TEXT:
                    this->RenderText(this->RenderQueue[i]);
                break;
            }
        }

        for (uint64 i = 0; i < layered; i++)
        {
            switch (this->RenderQueue[i]->Type)
            {
                case COLOR:
                    this->RenderColor(this->RenderQueue[i]);
                break;

                case TEXTURE:
                    this->RenderTexture(this->RenderQueue[i]);
                break;

                case TEXT:
                    this->RenderText(this->RenderQueue[i]);
                break;
            }
        }

        SDL_RenderPresent(this->Engine.Window.Renderer);

        return 0;
    }

    uint8 engine::render::RenderColor(token* Token)
    {
        if (SDL_SetRenderDrawColor(this->Engine.Window.Renderer, ((engine::actors::actor::colors::color*)Token->Data)->ColorR, ((engine::actors::actor::colors::color*)Token->Data)->ColorG, ((engine::actors::actor::colors::color*)Token->Data)->ColorB, ((engine::actors::actor::colors::color*)Token->Data)->ColorA) != 0)
        {
            printf("slay::engine.render.RenderColor(): SDL_SetRenderDrawColor failed\n");
            exit(1);
        }
        if (SDL_RenderFillRect(this->Engine.Window.Renderer, &Token->Area) != 0)
        {
            printf("slay::engine.render.RenderColor(): SDL_RenderFillRect failed\n");
            exit(1);
        }

        delete Token;

        return 0;
    }

    uint8 engine::render::RenderTexture(token* Token)
    {
        uint8 flip;

        flip = SDL_FLIP_NONE;
        if (((engine::actors::actor::textures::texture*)Token->Data)->FlipHorizontal)
        {
            flip = SDL_FLIP_HORIZONTAL;
        }
        if (((engine::actors::actor::textures::texture*)Token->Data)->FlipVertical)
        {
            flip |= SDL_FLIP_VERTICAL;
        }

        if (SDL_SetTextureColorMod(this->Engine.Assets.Textures[((engine::actors::actor::textures::texture*)Token->Data)->TextureID], ((engine::actors::actor::textures::texture*)Token->Data)->ColorR, ((engine::actors::actor::textures::texture*)Token->Data)->ColorG, ((engine::actors::actor::textures::texture*)Token->Data)->ColorB) != 0)
        {
            printf("slay::engine.render.RenderTexture(): SDL_SetTextureColorMod failed\n");
            exit(1);
        }
        if (SDL_SetTextureAlphaMod(this->Engine.Assets.Textures[((engine::actors::actor::textures::texture*)Token->Data)->TextureID], ((engine::actors::actor::textures::texture*)Token->Data)->ColorA) != 0)
        {
            printf("slay::engine.render.RenderTexture(): SDL_SetTextureAlphaMod failed\n");
            exit(1);
        }
        if (SDL_RenderCopyEx(this->Engine.Window.Renderer, this->Engine.Assets.Textures[((engine::actors::actor::textures::texture*)Token->Data)->TextureID], NULL, &Token->Area, ((engine::actors::actor::textures::texture*)Token->Data)->Angle, NULL, (SDL_RendererFlip)flip) != 0)
        {
            printf("slay::engine.render.RenderTexture(): SDL_RenderCopyEx failed\n");
        }

        delete Token;

        return 0;
    }

    uint8 engine::render::RenderText(token* Token)
    {
        uint8 flip;

        flip = SDL_FLIP_NONE;
        if (((engine::actors::actor::texts::text*)Token->Data)->FlipHorizontal)
        {
            flip = SDL_FLIP_HORIZONTAL;
        }
        if (((engine::actors::actor::texts::text*)Token->Data)->FlipVertical)
        {
            flip |= SDL_FLIP_VERTICAL;
        }

        if (SDL_RenderCopyEx(this->Engine.Window.Renderer, ((engine::actors::actor::texts::text*)Token->Data)->Texture, NULL, &Token->Area, ((engine::actors::actor::texts::text*)Token->Data)->Angle, NULL, (SDL_RendererFlip)flip) != 0)
        {
            printf("slay::engine.render.RenderText(): SDL_RenderCopyEx failed\n");
            exit(1);
        }

        delete Token;

        return 0;
    }
}