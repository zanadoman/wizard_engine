#include "WizardEngine.hpp"

namespace wze
{
    engine::engine(const char* Title, const char* IconPath, uint16 Width, uint16 Height, uint8 TargetFrameTime) : Window(this), Render(this), Camera(this), Audio(this), Keys(this), Mouse(this), Actors(this), Vector(this), Assets(this), Timing(this)
    {
        if (Title == NULL)
        {
            Title = "Wizard Engine";
        }

        if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) != 0)
        {
            printf("wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, IconPath, Width, Height, TargetFrameTime);
            exit(1);
        }
        if (TTF_Init() != 0)
        {
            printf("wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, IconPath, Width, Height, TargetFrameTime);
            exit(1);
        }
        if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, MIX_DEFAULT_CHANNELS, 2048) != 0)
        {
            printf("wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %p, Width: %d, Height: %d, TargetFrameTime: %d\n", Title, IconPath, Width, Height, TargetFrameTime);
            exit(1);
        }

        this->Window.Open(Title, IconPath, Width, Height);
        this->Render.RenderWidth = Width - 1;
        this->Render.RenderHeight = Height - 1;
        this->Camera.OffsetX = -(Width >> 1);
        this->Camera.OffsetY = -(Height >> 1);
        this->Keys.SDL_KeyStates = SDL_GetKeyboardState(NULL);
        this->Timing.TargetFrameTime = TargetFrameTime;
        srand(time(NULL));
    }

    engine::~engine()
    {
        this->Assets.PurgeTextures({});
        this->Assets.PurgeSounds({});
        this->Assets.PurgeFonts({});
        this->Assets.PurgeCursors({});

        this->Window.Close();

        TTF_Quit();
        SDL_CloseAudio();
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

        this->Timing.Update();

        this->UpdateFlipbooks();

        this->Window.State = SDL_GetWindowFlags(this->Window.Window);

        for (i = 0; SDL_PollEvent(&event); i++)
        {
            if (event.type == SDL_QUIT)
            {
                return false;
            }

            if (i == this->EventQueue.Length())
            {
                this->EventQueue.Insert(this->EventQueue.Length(), 11);
            }
            this->EventQueue[i] = {event};
        }
        if (i < this->EventQueue.Length())
        {
            this->EventQueue.Remove(i, this->EventQueue.Length() - i);
        }

        printf("%lld\n", this->EventQueue.Length());

        this->Keys.Update();
        this->Mouse.Update();

        return true;
    }

    uint8 engine::UpdateFlipbooks()
    {
        for (uint64 i = 1; i < this->Actors.Actors.Length(); i++)
        {
            if (this->Actors.Actors[i] == NULL)
            {
                continue;
            }
            
            for (uint64 j = 1; j < this->Actors.Actors[i]->Flipbooks.Flipbooks.Length(); j++)
            {
                if (this->Actors.Actors[i]->Flipbooks.Flipbooks[j] == NULL)
                {
                    continue;
                }

                this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Current += (this->Timing.FrameTime + this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Remainder) / this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Delay;
                this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Remainder = (this->Timing.FrameTime + this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Remainder) % this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Delay;

                if (this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length() <= this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Current)
                {
                    this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Loop ? this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Current = this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Current % this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length() : this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Current = this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length() - 1;
                }
            }
        }

        return 0;
    }

    sint32 engine::Random(sint32 Min, sint32 Max)
    {
        return rand() % (Max - Min) + Min;
    }
}