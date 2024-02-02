#include "SlayEngine.hpp"

namespace slay
{
    engine::window::window(engine* Engine) : Engine(Engine)
    {
        this->Window = NULL;
        this->Renderer = NULL;
        this->Width = 0;
        this->Height = 0;
        this->State = 0;
    }

    uint16 engine::window::GetWidth()
    {
        return this->Width;
    }

    uint16 engine::window::GetHeight()
    {
        return this->Height;
    }

    bool engine::window::IsShown()
    {
        return ((this->State & SDL_WINDOW_SHOWN) == SDL_WINDOW_SHOWN);
    }

    bool engine::window::HasFocus()
    {
        return ((this->State & SDL_WINDOW_INPUT_FOCUS & SDL_WINDOW_MOUSE_FOCUS) == (SDL_WINDOW_INPUT_FOCUS & SDL_WINDOW_MOUSE_FOCUS));
    }

    uint8 engine::window::Open(const char* Title, const char* IconPath, uint16 Width, uint16 Height)
    {
        SDL_Surface* icon;

        if ((this->Window = SDL_CreateWindow(Title, SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, Width, Height, SDL_WINDOW_FULLSCREEN_DESKTOP | SDL_WINDOW_RESIZABLE | SDL_WINDOW_INPUT_GRABBED)) == NULL)
        {
            printf("slay::engine.window.New(): SDL_CreateWindow() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d\n", Title, IconPath, Width, Height);
            exit(1);
        }
        if ((this->Renderer = SDL_CreateRenderer(this->Window, -1, SDL_RENDERER_ACCELERATED)) == NULL)
        {
            printf("slay::engine.window.New(): SDL_CreateRenderer() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d\n", Title, IconPath, Width, Height);
            exit(1);
        }
        if (SDL_RenderSetLogicalSize(this->Renderer, Width, Height) != 0)
        {
            printf("slay::engine.window.New(): SDL_RenderSetLogicalSize() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d\n", Title, IconPath, Width, Height);
            exit(1);
        }
        if (SDL_SetRenderDrawBlendMode(this->Renderer, SDL_BLENDMODE_BLEND) != 0)
        {
            printf("slay::engine.window.New(): SDL_SetRenderDrawBlendMode() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d\n", Title, IconPath, Width, Height);
            exit(1);
        }

        if (IconPath != NULL)
        {
            if ((icon = IMG_Load(IconPath)) == NULL)
            {
                printf("slay::engine.window.New(): IMG_Load() failed\nParams: Title: %s, IconPath: %s, Width: %d, Height: %d\n", Title, IconPath, Width, Height);
                exit(1);
            }

            SDL_SetWindowIcon(this->Window, icon);
            SDL_FreeSurface(icon);
        }

        this->Width = Width;
        this->Height = Height;

        return 0;
    }

    uint8 engine::window::Close()
    {
        SDL_DestroyRenderer(this->Renderer);
        SDL_DestroyWindow(this->Window);

        return 0;
    }
}