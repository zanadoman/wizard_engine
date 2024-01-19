#include "SlayEngine.hpp"

namespace slay
{
    engine::assets::assets(engine& Engine) : Engine(Engine), Textures(1), Fonts(1), Sounds(1) {}

    engine::assets::~assets()
    {
        for (uint64 i = 0; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] != NULL)
            {
                SDL_DestroyTexture(this->Textures[i]);
            }
        }
        for (uint64 i = 0; i < this->Fonts.Length(); i++)
        {
            if (this->Fonts[i] != NULL)
            {
                TTF_CloseFont(this->Fonts[i]);
            }
        }
        for (uint64 i = 0; i < this->Sounds.Length(); i++)
        {
            if (this->Sounds[i] != NULL)
            {
                Mix_FreeChunk(this->Sounds[i]);
            }
        }
    }

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
        if ((*(this->Textures += {SDL_CreateTextureFromSurface(this->Engine.Window.Renderer, tmp)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadTextures(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (IDs.begin()[i] == 0)
            {
                printf("engine.assets.UnloadTextures(): Illegal to unload NULL Texture\nParams: ID(length): %ld\n", IDs.size());
                exit(1);
            }
            if (this->Textures.Length() <= IDs.begin()[i] || this->Textures[IDs.begin()[i]] == NULL)
            {
                printf("engine.assets.UnloadTexture(): IDs[%lld] does not exists\nParams: ID(length): %ld\n", i, IDs.size());
                exit(1);
            }

            SDL_DestroyTexture(this->Textures[IDs.begin()[i]]);
            if (IDs.begin()[i] == this->Textures.Length() - 1)
            {
                this->Textures.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Textures[IDs.begin()[i]] = NULL;
            }
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

    uint8 engine::assets::UnloadFonts(std::initializer_list<uint64> IDs)
    {
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (IDs.begin()[i] == 0)
            {
                printf("engine.assets.UnloadFonts(): Illegal to unload NULL Font\nParams: IDs(length): %ld\n", IDs.size());
                exit(1);
            }
            if (this->Fonts.Length() <= IDs.begin()[i] || this->Fonts[IDs.begin()[i]] == NULL)
            {
                printf("engine.assets.UnloadFont(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
                exit(1);
            }

            TTF_CloseFont(this->Fonts[IDs.begin()[i]]);
            if (IDs.begin()[i] == this->Fonts.Length() - 1)
            {
                this->Fonts.Remove(IDs.begin()[i], 1);
            }
            else
            {
                this->Fonts[IDs.begin()[i]] = NULL;
            }
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

    uint8 engine::assets::UnloadSounds(std::initializer_list<uint64> IDs)
    {
        if (IDs.size() == 0)
        {
            printf("engine.assets.UnloadSounds(): IDs must not be empty\nParams: IDs(length): %ld\n", IDs.size());
            exit(1);
        }
        for (uint64 i = 0; i < IDs.size(); i++)
        {
            if (this->Sounds.Length() <= IDs.begin()[i] || this->Sounds[IDs.begin()[i]] == NULL)
            {
                printf("engine.assets.UnloadSound(): IDs[%lld] does not exists\nParams: IDs(length): %ld\n", i, IDs.size());
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