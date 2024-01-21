#include "SlayEngine.hpp"

namespace slay
{
    engine::assets::assets(engine& Engine) : Engine(Engine), Textures({(SDL_Texture*)NULL}), Fonts({(TTF_Font*)NULL}), Sounds({(Mix_Chunk*)NULL}) {}

    engine::assets::~assets()
    {
        for (uint64 i = 0; i < this->Textures.Length(); i++)
        {
            SDL_DestroyTexture(this->Textures[i]);
        }
        for (uint64 i = 0; i < this->Fonts.Length(); i++)
        {
            TTF_CloseFont(this->Fonts[i]);
        }
        for (uint64 i = 0; i < this->Sounds.Length(); i++)
        {
            Mix_FreeChunk(this->Sounds[i]);
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

        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = SDL_CreateTextureFromSurface(this->Engine.Window.Renderer, tmp)) == NULL)
                {
                    printf("engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((*(this->Textures += {SDL_CreateTextureFromSurface(this->Engine.Window.Renderer, tmp)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadTexture(uint64 ID)
    {
        if (ID == 0)
        {
            printf("engine.assets.UnloadTextures(): Illegal deletion of NULL Texture\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Textures.Length() <= ID || this->Textures[ID] == NULL)
        {
            printf("engine.assets.UnloadTextures(): Texture does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_DestroyTexture(this->Textures[ID]);
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

        for (uint64 i = 1; i < this->Fonts.Length(); i++)
        {
            if (this->Fonts[i] == NULL)
            {
                if ((this->Fonts[i] = TTF_OpenFont(Path, Size)) == NULL)
                {
                    printf("engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Fonts += {TTF_OpenFont(Path, Size)}))[this->Fonts.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Fonts.Length() - 1;
    }

    uint8 engine::assets::UnloadFont(uint64 ID)
    {
        if (ID == 0)
        {
            printf("engine.assets.UnloadFonts(): Illegal deletion of NULL Font\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Fonts.Length() <= ID || this->Fonts[ID] == NULL)
        {
            printf("engine.assets.UnloadFonts(): Font does not exists\nParams: ID: %lld\n", ID);
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

        for (uint64 i = 1; i < this->Sounds.Length(); i++)
        {
            if (this->Sounds[i] == NULL)
            {
                if ((this->Sounds[i] = Mix_LoadWAV(Path)) == NULL)
                {
                    printf("engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Sounds += {Mix_LoadWAV(Path)}))[this->Sounds.Length() - 1] == NULL)
        {
            printf("engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Sounds.Length() - 1;
    }

    uint8 engine::assets::UnloadSound(uint64 ID)
    {
        if (ID == 0)
        {
            printf("engine.assets.UnloadSounds(): Illegal deletion of NULL Sound\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Sounds.Length() <= ID || this->Sounds[ID] == NULL)
        {
            printf("engine.assets.UnloadSounds(): Sound does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        Mix_FreeChunk(this->Sounds[ID]);
        if (ID == this->Sounds.Length() - 1)
        {
            while (this->Sounds[this->Sounds.Length() - 1] == NULL && 1 < this->Sounds.Length())
            {
                this->Sounds.Remove(this->Sounds.Length() - 1, 1);
            }
        }
        else
        {
            this->Sounds[ID] = NULL;
        }

        return 0;
    }
}