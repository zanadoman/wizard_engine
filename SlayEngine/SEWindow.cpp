#include "SlayEngine.hpp"

namespace slay
{
    engine::window::window(engine& Engine) : Engine(Engine), Window(NULL), Renderer(NULL), Width(0), Height(0), Depth(0) {}

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

    uint8 engine::window::New(const char* Title, uint16 Width, uint16 Height, uint16 Depth)
    {
        SDL_DestroyRenderer(this->Renderer);
        SDL_DestroyWindow(this->Window);

        this->Width = Width;
        this->Height = Height;
        this->Depth = Depth;

        if ((this->Window = SDL_CreateWindow(Title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, Width, Height, SDL_WINDOW_FULLSCREEN_DESKTOP | SDL_WINDOW_RESIZABLE | SDL_WINDOW_INPUT_GRABBED)) == NULL)
        {
            printf("engine.window.New(): SDL_CreateWindow() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if ((this->Renderer = SDL_CreateRenderer(this->Window, -1, SDL_RENDERER_ACCELERATED)) == NULL)
        {
            printf("engine.window.New(): SDL_CreateRenderer() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if (SDL_RenderSetLogicalSize(this->Renderer, Width, Height) != 0)
        {
            printf("engine.window.New(): SDL_RenderSetLogicalSize() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if (SDL_SetRenderDrawBlendMode(this->Renderer, SDL_BLENDMODE_BLEND) != 0)
        {
            printf("engine.window.New(): SDL_SetRenderDrawBlendMode() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }

        return 0;
    }
}