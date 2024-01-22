#include "Includes/SDL_rect.h"
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

        this->ProcessRenderQueue();

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
            printf("engine.render.OpenFrame(): SDL_SetRenderDrawColor() failed\n");
            return 1;
        }
        if (SDL_RenderClear(this->Engine.Window.Renderer) != 0)
        {
            printf("engine.render.OpenFrame(): SDL_RenderClear() failed\n");
            return 1;
        }

        return 0;
    }

    uint8 engine::render::CloseFrame()
    {
        SDL_RenderPresent(this->Engine.Window.Renderer);

        return 0;
    }

    uint8 engine::render::ProcessRenderQueue()
    {
        uint64 i, j, buffer = 0;
        SDL_Rect area;

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

                if (area.x + (area.w >> 1) < 0 || this->RenderWidth < area.x - (area.w >> 1) || area.y + (area.h >> 1) < 0 || this->RenderHeight < area.y - (area.h >> 1))
                {
                    continue;
                }

                if (this->RenderQueue.Length() == buffer)
                {
                    if ((*(this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], COLOR, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Priority, area)}))[buffer] == NULL)
                    {
                        printf("engine.render.ProcessRenderQueue(): Memory allocation failed\n");
                        exit(1);
                    }
                }
                else
                {
                    if ((this->RenderQueue[buffer] = new token(this->Engine.Actors.Actors[actor], COLOR, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Priority, area)) == NULL)
                    {
                        printf("engine.render.ProcessRenderQueue(): Memory allocation failed\n");
                        exit(1);
                    }
                }

                buffer++;
            }

            for (uint64 texture = 1; texture < this->Engine.Actors.Actors[actor]->Textures.Textures.Length(); texture++)
            {
                if (this->Engine.Actors.Actors[actor]->Textures.Textures[texture] == NULL || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->ColorA == 0 || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Visible == false || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->TextureID == 0)
                {
                    continue;
                }

                if (this->RenderQueue.Length() == buffer)
                {
                    this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], TEXTURE, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Priority)};
                }
                else
                {
                    this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[actor], TEXTURE, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Priority)};
                }

                buffer++;
            }

            for (uint64 text = 1; text < this->Engine.Actors.Actors[actor]->Texts.Texts.Length(); text++)
            {
                if (this->Engine.Actors.Actors[actor]->Texts.Texts[text] == NULL || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->ColorA == 0 || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Visible == false || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->FontID == 0)
                {
                    continue;
                }

                if (this->RenderQueue.Length() == buffer)
                {
                    this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], TEXT, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Priority)};
                }
                else
                {
                    this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[actor], TEXT, this->Engine.Actors.Actors[actor]->Layer, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Priority)};
                }

                buffer++;
            }
        }
        if (buffer < this->RenderQueue.Length())
        {
            this->RenderQueue.Remove(buffer, this->RenderQueue.Length() - buffer);
        }

        this->SortByLayer(0, this->RenderQueue.Length() - 1);
        for (i = 1, j = 0; i < RenderQueue.Length(); i++)
        {
            if (this->RenderQueue[i]->Layer != this->RenderQueue[j]->Layer)
            {
                this->SortByPriority(j, i - 1);
                j = i;
            }
        }
        this->SortByPriority(j, i - 1);

        return 0;
    }

    uint8 engine::render::SortByLayer(sint64 First, sint64 Last)
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

    uint8 engine::render::SortByPriority(sint64 First, sint64 Last)
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