#include "Includes/SDL_timer.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::engine(const char* Title, uint16 Width, uint16 Height, uint8 TargetFrameTime) : Window(*this), Render(*this), Camera(*this), Audio(*this), Keys(*this), Mouse(*this), Actors(*this), Vector(*this), Assets(*this), Timing(*this)
    {
        if (Title == NULL)
        {
            Title = "SlayEngine";
        }

        if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0)
        {
            printf("slay::engine.engine(): SDL_Init() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, Width, Height, TargetFrameTime);
            exit(1);
        }
        if (TTF_Init() != 0)
        {
            printf("slay::engine.engine(): TTF_Init() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, Width, Height, TargetFrameTime);
            exit(1);
        }
        if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, MIX_DEFAULT_CHANNELS, 2048) != 0)
        {
            printf("slay::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, Width, Height, TargetFrameTime);
            exit(1);
        }

        srand(time(NULL));
        this->Window.New(Title, Width, Height);
        this->Render.RenderWidth = Width - 1;
        this->Render.RenderHeight = Height - 1;
        this->Camera.OffsetX = (this->Window.Width >> 1) * -1;
        this->Camera.OffsetY = (this->Window.Height >> 1) * -1;
        this->Keys.SDL_KeyStates = SDL_GetKeyboardState(NULL);
        this->Timing.TargetFrameTime = TargetFrameTime;

        this->Update();
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

        this->Timing.GameTime = SDL_GetTicks() - this->Timing.PrevTick;
        this->Camera.Update();
        this->Render.Update();
        this->Timing.RenderTime = SDL_GetTicks() - this->Timing.PrevTick - this->Timing.GameTime;

        for (i = 0; SDL_PollEvent(&event); i++)
        {
            if (event.type == SDL_QUIT)
            {
                return false;
            }

            if (i == this->EventQueue.Length())
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

        this->Timing.Update();

        return true;
    }

    sint32 engine::Random(sint32 Min, sint32 Max)
    {
        return rand() % (Max - Min) + Min;
    }
}