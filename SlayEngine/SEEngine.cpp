#include "SlayEngine.hpp"

namespace slay
{
    engine::engine(const char* Title, uint16 Width, uint16 Height, uint16 FPS) : Mouse(*this), PrevTick(0), TargetFrameTime(1000 / FPS), DeltaTime(0)
    {
        if (Title == NULL)
        {
            Title = "SlayEngine";
        }

        if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0)
        {
            printf("engine.engine(): SDL_Init() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if (TTF_Init() != 0)
        {
            printf("engine.engine(): TTF_Init() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }
        if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, MIX_DEFAULT_CHANNELS, 4096) != 0)
        {
            printf("engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, Width: %d, Height: %d\n", Title, Width, Height);
            exit(1);
        }

        this->Window.New(Title, Width, Height);

        this->SDL_KeyStates = SDL_GetKeyboardState(NULL);
    }

    engine::engine::~engine()
    {
        SDL_CloseAudio();
        TTF_Quit();
        SDL_Quit();
    }

    engine::window::window() : Window(NULL), Renderer(NULL), Width(0), Height(0) {}

    uint8 engine::window::New(const char* Title, uint16 Width, uint16 Height)
    {
        SDL_DestroyRenderer(this->Renderer);
        SDL_DestroyWindow(this->Window);

        this->Width = Width;
        this->Height = Height;

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

    engine::window::~window()
    {
        SDL_DestroyRenderer(this->Renderer);
        SDL_DestroyWindow(this->Window);
    }
}