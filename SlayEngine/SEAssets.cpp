#include "Includes/SDL_image.h"
#include "Includes/SDL_mixer.h"
#include "Includes/SDL_render.h"
#include "Includes/SDL_surface.h"
#include "Includes/SDL_ttf.h"
#include "SlayEngine.hpp"

namespace slay
{
    engine::assets::assets(engine& Engine) : Engine(Engine) {}

    uint64 engine::assets::LoadTexture(const char* Path)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        if ((*(this->Textures += {SDL_CreateTextureFromSurface(Engine.Window.Renderer, tmp)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadTexture(std::initializer_list<uint64> IDs)
    {
        if (this->Textures.Length() <= ID)
        {
            printf("engine.assets.UnloadTexture(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_DestroyTexture(this->Textures[ID]);
        this->Textures[ID] = NULL;
        if (ID == this->Textures.Length() - 1)
        {
            this->Textures.Remove(ID, 1);
        }
        else
        {
            this->Textures[ID] = NULL;
        }

        return 0;
    }

    uint64 engine::assets::LoadFont(const char* Path, uint8 Size)
    {
        if (Path == NULL)
        {
            printf("engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((*(this->Fonts += {TTF_OpenFont(Path, Size)}))[this->Fonts.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Fonts.Length() - 1;
    }

    uint8 engine::assets::UnloadFont(std::initializer_list<uint64> IDs)
    {
        if (this->Fonts.Length() <= ID)
        {
            printf("engine.assets.UnloadFont(): ID does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        TTF_CloseFont(this->Fonts[ID]);
        if (ID == this->Fonts.Length() - 1)
        {
            this->Fonts.Remove(ID, 1);
        }
        else
        {
            this->Fonts[ID] = NULL;
        }

        return 0;
    }

    uint64 engine::assets::LoadSound(const char* Path)
    {
        if (Path == NULL)
        {
            printf("engine.assets.LoadSound(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((*(this->Sounds += {Mix_LoadWAV(Path)}))[this->Sounds.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Sounds.Length() - 1;
    }

    uint8 engine::assets::UnloadSound(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Sounds.Length() <= IDs.begin()[i])
            {
                printf("engine.assets.UnloadSound(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", IDs.begin()[i], IDs.size());
                exit(1);
            }

            Mix_FreeChunk(this->Sounds[IDs.begin()[i]]);
            if (IDs.begin()[i] == this->Sounds.Length() - 1)
            {
                this->Sounds.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Sounds[IDs.begin()[i]] = NULL;
            }
        }

        return 0;
    }
}