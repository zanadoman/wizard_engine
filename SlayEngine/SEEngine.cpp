#include "SlayEngine.hpp"

namespace slay
{
    engine::engine(const char* Title, uint16 Width, uint16 Height, uint16 FPS) : Mouse(*this), Timing(FPS)
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

    bool engine::Update()
    {
        SDL_Event event;
        uint64 i;

        for (i = 0; SDL_PollEvent(&event); i++)
        {
            if (event.type == SDL_QUIT)
            {
                return false;
            }

            if (this->EventQueue.Length() == i)
            {
                this->EventQueue += {event};
            }
            else
            {
                this->EventQueue[i] = {event};
            }
        }
        if (i < this->EventQueue.Length())
        {
            this->EventQueue.Remove(i, this->EventQueue.Length() - i);
        }

        this->UpdateKeys();
        this->Mouse.Update();

        this->Timing.Update();

        return true;
    }

    uint64 engine::GetDeltaTime()
    {
        return this->Timing.DeltaTime;
    }

    bool engine::GetKey(keys Key)
    {
        return this->KeyStates[Key];
    }
}