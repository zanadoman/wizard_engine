#include "SlayEngine.hpp"

namespace slay
{
    engine::engine(const char* Title, uint16 Width, uint16 Height, uint8 TargetFrameTime) : Window(*this), Render(*this), Audio(*this), Timing(*this), Camera(*this), Keys(*this), Mouse(*this), Assets(*this), Vector(*this), Actors(*this)
    {
        if (Title == NULL)
        {
            Title = "SlayEngine";
        }

        if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0)
        {
            printf("engine.engine(): SDL_Init() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, Width, Height, TargetFrameTime);
            exit(1);
        }
        if (TTF_Init() != 0)
        {
            printf("engine.engine(): TTF_Init() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, Width, Height, TargetFrameTime);
            exit(1);
        }
        if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, MIX_DEFAULT_CHANNELS, 2048) != 0)
        {
            printf("engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, Width, Height, TargetFrameTime);
            exit(1);
        }

        srand(time(NULL));
        this->Window.New(Title, Width, Height);
        this->Render.ScreenYCache = Height - 1;
        this->Timing.TargetFrameTime = TargetFrameTime;
        this->Camera.OffsetX = (this->Window.Width >> 1) * -1;
        this->Camera.OffsetY = (this->Window.Height >> 1) * -1;
        this->Keys.SDL_KeyStates = SDL_GetKeyboardState(NULL);
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

        //Rendering old frame

        this->Camera.Update();
        this->Render.Update();

        //Gathering information from old frame

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

        this->Keys.Update();
        this->Mouse.Update();

        //Starting the new frame

        this->Timing.Update();

        return true;
    }

    sint32 engine::Random(sint32 Min, sint32 Max)
    {
        return rand() % (Max - Min) + Min;
    }
}