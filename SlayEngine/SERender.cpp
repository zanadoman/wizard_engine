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

    engine::render::token::token(void* Data, token_t Type, double Layer, uint8 Priority)
    {
        this->Data = Data;
        this->Type = Type;
        this->Layer = Layer;
        this->Priority = Priority;
    }

    uint8 engine::render::Update()
    {
        this->ProcessRenderQueue();

        this->OpenFrame();

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
        uint64 buffer;

        buffer = 0;
        for (uint64 actor = 0; actor < this->Engine.Actors.Actors.Length(); actor++)
        {
            if (this->Engine.Actors.Actors[actor] != NULL)
            {
                continue;
            }

            for (uint64 color = 0; color < this->Engine.Actors.Actors[actor]->Colors.Colors.Length(); color++)
            {
                if (this->Engine.Actors.Actors[actor]->Colors.Colors[color] == NULL || this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Visible == false)
                {
                    continue;
                }

                if (this->RenderQueue.Length() == buffer)
                {
                    this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], COLOR, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Layer, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Priority)};
                }
                else
                {
                    this->RenderQueue[buffer] = new token(this->Engine.Actors.Actors[actor], COLOR, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Layer, this->Engine.Actors.Actors[actor]->Colors.Colors[color]->Priority);
                }

                buffer++;
            }

            for (uint64 texture = 0; texture < this->Engine.Actors.Actors[actor]->Textures.Textures.Length(); texture++)
            {
                if (this->Engine.Actors.Actors[actor]->Textures.Textures[texture] == NULL || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Visible == false || this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->TextureID == 0)
                {
                    continue;
                }

                if (this->RenderQueue.Length() == buffer)
                {
                    this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], TEXTURE, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Layer, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Priority)};
                }
                else
                {
                    this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[actor], TEXTURE, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Layer, this->Engine.Actors.Actors[actor]->Textures.Textures[texture]->Priority)};
                }

                buffer++;
            }

            for (uint64 text = 0; text < this->Engine.Actors.Actors[actor]->Texts.Texts.Length(); text++)
            {
                if (this->Engine.Actors.Actors[actor]->Texts.Texts[text] == NULL || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Visible == false || this->Engine.Actors.Actors[actor]->Texts.Texts[text]->FontID == 0)
                {
                    continue;
                }

                if (this->RenderQueue.Length() == buffer)
                {
                    this->RenderQueue += {new token(this->Engine.Actors.Actors[actor], TEXT, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Layer, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Priority)};
                }
                else
                {
                    this->RenderQueue[buffer] = {new token(this->Engine.Actors.Actors[actor], TEXT, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Layer, this->Engine.Actors.Actors[actor]->Texts.Texts[text]->Priority)};
                }

                buffer++;
            }
        }
        if (buffer < this->RenderQueue.Length())
        {
            this->RenderQueue.Remove(buffer, this->RenderQueue.Length() - buffer);
        }

        return 0;
    }

    uint8 engine::render::SortRenderQueue()
    {


        return 0;
    }

    sint32 engine::render::ScreenY(double Y)
    {
        return (round(Y) - this->HeightCache) * -1;
    }

    sint32 engine::render::ScreenY(sint32 Y)
    {
        return (Y - this->HeightCache) * -1;
    }
}