#include "SlayEngine.hpp"

namespace slay
{
    engine::window::window(engine& Engine) : Engine(Engine)
    {
        this->Window = NULL;
        this->Renderer = NULL;
        this->Width = 0;
        this->Height = 0;
    }

    engine::window::~window()
    {
        SDL_DestroyRenderer(this->Renderer);
        SDL_DestroyWindow(this->Window);
    }

    uint16 engine::window::GetHeight()
    {
        return this->Height;
    }

    uint16 engine::window::GetWidth()
    {
        return this->Width;
    }

    uint8 engine::window::New(const char* Title, uint16 Width, uint16 Height)
    {
        if ((this->Window = SDL_CreateWindow(Title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, Width, Height, SDL_WINDOW_FULLSCREEN_DESKTOP | SDL_WINDOW_RESIZABLE | SDL_WINDOW_INPUT_GRABBED)) == NULL)
        {
            printf("slay::engine.window.New(): SDL_CreateWindow() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if ((this->Renderer = SDL_CreateRenderer(this->Window, -1, SDL_RENDERER_ACCELERATED)) == NULL)
        {
            printf("slay::engine.window.New(): SDL_CreateRenderer() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if (SDL_RenderSetLogicalSize(this->Renderer, Width, Height) != 0)
        {
            printf("slay::engine.window.New(): SDL_RenderSetLogicalSize() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if (SDL_SetRenderDrawBlendMode(this->Renderer, SDL_BLENDMODE_BLEND) != 0)
        {
            printf("slay::engine.window.New(): SDL_SetRenderDrawBlendMode() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }

        this->Width = Width;
        this->Height = Height;

        return 0;
    }
}