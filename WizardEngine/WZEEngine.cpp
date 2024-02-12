#include "WizardEngine.hpp"
#include <ctime>

using namespace neo;

namespace wze
{
    engine::engine(const char* Title, const char* IconPath, uint16 WindowWidth, uint16 WindowHeight, uint8 TargetFrameTime) : Window(this), Render(this), Camera(this), Audio(this), Keys(this), Mouse(this), Actors(this), Collision(this), Vector(this), Assets(this), Timing(this)
    {
        uint64 Texture;
        actor Actor;
        texturebox Texturebox;
        double opacity;

        if (Title == NULL)
        {
            Title = "Wizard Engine";
        }
        if (IconPath == NULL)
        {
            IconPath = "engine/icon.png";
        }
        if (TargetFrameTime == 0)
        {
            printf("wze::engine.engine(): TargetFrameTime must not be equal to 0\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n", Title, IconPath, WindowWidth, WindowHeight, TargetFrameTime);
            exit(1);
        }

        if (SDL_Init(SDL_INIT_EVERYTHING) != 0)
        {
            printf("wze::engine.engine(): SDL_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n", Title, IconPath, WindowWidth, WindowHeight, TargetFrameTime);
            exit(1);
        }
        if (Mix_Init(MIX_INIT_FLAC | MIX_INIT_MOD | MIX_INIT_MP3 | MIX_INIT_OGG | MIX_INIT_MID | MIX_INIT_OPUS | MIX_INIT_WAVPACK) == 0)
        {
            printf("wze::engine.engine(): Mix_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n", Title, IconPath, WindowWidth, WindowHeight, TargetFrameTime);
            exit(1);
        }
        if (Mix_OpenAudio(MIX_DEFAULT_FREQUENCY, MIX_DEFAULT_FORMAT, MIX_DEFAULT_CHANNELS, 2048) != 0)
        {
            printf("wze::engine.engine(): Mix_OpenAudio() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n", Title, IconPath, WindowWidth, WindowHeight, TargetFrameTime);
            exit(1);
        }
        if (TTF_Init() != 0)
        {
            printf("wze::engine.engine(): TTF_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n", Title, IconPath, WindowWidth, WindowHeight, TargetFrameTime);
            exit(1);
        }
        if (SDLNet_Init() != 0)
        {
            printf("wze::engine.engine(): SDLNet_Init() failed\nParams: Title: %s, IconPath: %s, WindowWidth: %d, WindowHeight: %d, TargetFrameTime: %d\n", Title, IconPath, WindowWidth, WindowHeight, TargetFrameTime);
            exit(1);
        }

        srand(time(NULL));
        this->Window.Open(Title, IconPath, WindowWidth, WindowHeight);
        this->Render.RenderWidth = WindowWidth - 1;
        this->Render.RenderHeight = WindowHeight - 1;
        this->Camera.BaseOffsetX = WindowWidth >> 1;
        this->Camera.OffsetX = -this->Camera.BaseOffsetX;
        this->Camera.BaseOffsetY = WindowHeight >> 1;
        this->Camera.OffsetY = -this->Camera.BaseOffsetY;
        this->Keys.SDL_KeyStates = SDL_GetKeyboardState(NULL);
        this->Timing.TargetFrameTime = TargetFrameTime;

        Texture = this->Assets.LoadTexture("engine/logo.png");
        Actor = this->Actors.New(NULL, 0, WindowWidth >> 1, WindowHeight >> 1, WindowHeight >> 1, WindowHeight >> 1, 0);
        Texturebox = Actor->Textureboxes.New(Texture);

        Texturebox->ColorA = opacity = 0;

        while (opacity <= 255)
        {
            Texturebox->ColorA = round(opacity);

            if (!this->Update())
            {
                this->Actors.Delete(Actor->ID);
                this->Assets.UnloadTexture(Texture);
                return;
            }

            opacity += 0.1 * this->Timing.GetDeltaTime();
        }

        Texturebox->ColorA = opacity = 255;

        while (0 <= opacity)
        {
            Texturebox->ColorA = round(opacity);

            if (!this->Update())
            {
                this->Actors.Delete(Actor->ID);
                this->Assets.UnloadTexture(Texture);
                return;
            }

            opacity -= 0.1 * this->Timing.GetDeltaTime();
        } 

        this->Actors.Delete(Actor->ID);
        this->Assets.UnloadTexture(Texture);
    }

    engine::~engine()
    {
        this->Actors.Purge({});

        this->Assets.PurgeTextures({});
        this->Assets.PurgeSounds({});
        this->Assets.PurgeFonts({});
        this->Assets.PurgeCursorTextures({});

        this->Window.Close();

        SDLNet_Quit();
        TTF_Quit();
        Mix_CloseAudio();
        Mix_Quit();
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

        this->Keys.Update();
        this->Mouse.Update();
        this->UpdateOverlapboxes();

        return true;
    }

    uint8 engine::Sleep(uint32 Milliseconds)
    {
        SDL_Delay(Milliseconds);

        return 0;
    }

    uint64 engine::Clamp(uint64 Value, uint64 Min, uint64 Max)
    {
        if (Max < Min)
        {
            printf("wze::engine.Clamp(): Max must not be less than Min\nParams: Value: %lld, Min: %lld, Max: %lld\n", Value, Min, Max);
            exit(1);
        }

        if (Value < Min)
        {
            return Min;
        }
        if (Max < Value)
        {
            return Max;
        }

        return Value;
    }

    sint64 engine::Clamp(sint64 Value, sint64 Min, sint64 Max)
    {
        if (Max < Min)
        {
            printf("wze::engine.Clamp(): Max must not be less than Min\nParams: Value: %lld, Min: %lld, Max: %lld\n", Value, Min, Max);
            exit(1);
        }

        if (Value < Min)
        {
            return Min;
        }
        if (Max < Value)
        {
            return Max;
        }

        return Value;
    }

    double engine::Clamp(double Value, double Min, double Max)
    {
        if (Max < Min)
        {
            printf("wze::engine.Clamp(): Max must not be less than Min\nParams: Value: %lf, Min: %lf, Max: %lf\n", Value, Min, Max);
            exit(1);
        }

        if (Value < Min)
        {
            return Min;
        }
        if (Max < Value)
        {
            return Max;
        }

        return Value;
    }

    sint32 engine::Random(sint32 Min, sint32 Max)
    {
        return rand() % (Max - Min) + Min;
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
                if (this->Actors.Actors[i]->Flipbooks.Flipbooks[j] == NULL || this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Paused)
                {
                    continue;
                }

                this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->CurrentFrame += (this->Timing.FrameTime + this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Remainder) / this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Delay;
                this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Remainder = (this->Timing.FrameTime + this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Remainder) % this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Delay;

                if (this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length() <= this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->CurrentFrame)
                {
                    this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Loop ? this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->CurrentFrame = this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->CurrentFrame % this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length() : this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->CurrentFrame = this->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length() - 1;
                }
            }
        }
 
        return 0;
    }

    uint8 engine::UpdateOverlapboxes()
    {
        uint8 state;
        double CursorX, CursorY;
        double ActiveTopLeftX;
        double ActiveTopLeftY;
        double ActiveBotRightX;
        double ActiveBotRightY;

        for (uint64 i = 1; i < this->Actors.Actors.Length(); i++)
        {
            if (this->Actors.Actors[i] == NULL || this->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length() < 2)
            {
                continue;
            }
            
            CursorX = this->Mouse.GetX(this->Actors.Actors[i]->Layer);
            CursorY = this->Mouse.GetY(this->Actors.Actors[i]->Layer);

            for (uint64 j = 1; j < this->Actors.Actors[i]->Overlapboxes.Overlapboxes.Length(); j++)
            {
                if (this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j] == NULL)
                {
                    continue;
                }

                ActiveTopLeftX = this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->X - (this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ActiveWidth >> 1);
                ActiveTopLeftY = this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->Y + (this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ActiveHeight >> 1);
                ActiveBotRightX = ActiveTopLeftX + this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ActiveWidth;
                ActiveBotRightY = ActiveTopLeftY - this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ActiveHeight;

                state = BTN_NONE;

                if (ActiveTopLeftX <= CursorX && CursorX <= ActiveBotRightX && ActiveBotRightY <= CursorY && CursorY <= ActiveTopLeftY)
                {
                    state = BTN_HOVERED;

                    if (this->Keys[KEY_LMB])
                    {
                        state |= BTN_PRESSED_LMB;
                    }
                    else if (this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ButtonState & BTN_PRESSED_LMB)
                    {
                        state |= BTN_RELEASED_LMB;
                    }
                    if (this->Keys[KEY_MMB])
                    {
                        state |= BTN_PRESSED_MMB;
                    }
                    else if (this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ButtonState & BTN_PRESSED_MMB)
                    {
                        state |= BTN_RELEASED_MMB;
                    }
                    if (this->Keys[KEY_RMB])
                    {
                        state |= BTN_PRESSED_RMB;
                    }
                    else if (this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ButtonState & BTN_PRESSED_RMB)
                    {
                        state |= BTN_RELEASED_RMB;
                    }
                }

                this->Actors.Actors[i]->Overlapboxes.Overlapboxes[j]->ButtonState = (button)state;
            }
        }

        return 0;
    }
}