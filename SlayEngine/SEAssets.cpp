#include "SlayEngine.hpp"

namespace slay
{
    engine::assets::assets(engine& Engine) : Engine(Engine), Textures({(SDL_Texture*)NULL}), Sounds({(Mix_Chunk*)NULL}), Fonts({(TTF_Font*)NULL}), Cursors({(SDL_Cursor*)NULL}) {}

    uint64 engine::assets::LoadPNG(const char* Path)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("slay::engine.assets.LoadPNG(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("slay::engine.assets.LoadPNG(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = SDL_CreateTextureFromSurface(this->Engine.Window.Renderer, tmp)) == NULL)
                {
                    printf("slay::engine.assets.LoadPNG(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((*(this->Textures += {SDL_CreateTextureFromSurface(this->Engine.Window.Renderer, tmp)}))[this->Textures.Length() - 1] == NULL)
        {
            printf("slay::engine.assets.LoadPNG(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadPNG(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.assets.UnloadPNG(): Illegal deletion of NULL PNG\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Textures.Length() <= ID || this->Textures[ID] == NULL)
        {
            printf("slay::engine.assets.UnloadPNG(): PNG does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_DestroyTexture(this->Textures[ID]);
        this->Textures[ID] = NULL;

        if (ID == this->Textures.Length() - 1)
        {
            for (i = this->Textures.Length() - 1; 0 < i; i--)
            {
                if (this->Textures[i] != NULL)
                {
                    break;
                }
            }

            i++;
            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        for (uint64 i = 1; i < this->Engine.Actors.Actors.Length(); i++)
        {
            if (this->Engine.Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Textures.Textures.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Textures.Textures[j] == NULL)
                {
                    continue;
                }

                if (this->Engine.Actors.Actors[i]->Textures.Textures[j]->TextureID == ID)
                {
                    this->Engine.Actors.Actors[i]->Textures.Textures[j]->TextureID = 0;
                }
            }
        }

        return 0;
    }

    uint8 engine::assets::PurgePNGs()
    {
        for (uint64 i = 1; i < this->Engine.Actors.Actors.Length(); i++)
        {
            if (this->Engine.Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Textures.Textures.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Textures.Textures[j] == NULL)
                {
                    continue;
                }

                this->Engine.Actors.Actors[i]->Textures.Textures[j]->TextureID = 0;
            }
        }

        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            SDL_DestroyTexture(this->Textures[i]);
        }
        if (1 < this->Textures.Length())
        {
            this->Textures.Remove(1, this->Textures.Length() - 1);
        }

        return 0;
    }

    uint64 engine::assets::LoadWAV(const char* Path)
    {
        if (Path == NULL)
        {
            printf("slay::engine.assets.LoadWAV(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Sounds.Length(); i++)
        {
            if (this->Sounds[i] == NULL)
            {
                if ((this->Sounds[i] = Mix_LoadWAV(Path)) == NULL)
                {
                    printf("slay::engine.assets.LoadWAV(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Sounds += {Mix_LoadWAV(Path)}))[this->Sounds.Length() - 1] == NULL)
        {
            printf("slay::engine.assets.LoadWAV(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Sounds.Length() - 1;
    }

    uint8 engine::assets::UnloadWAV(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.assets.UnloadWAV(): Illegal deletion of NULL WAV\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Sounds.Length() <= ID || this->Sounds[ID] == NULL)
        {
            printf("slay::engine.assets.UnloadWAV(): WAV does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        Mix_FreeChunk(this->Sounds[ID]);
        this->Sounds[ID] = NULL;

        if (ID == this->Sounds.Length() - 1)
        {
            for (i = this->Sounds.Length() - 1; 0 < i; i--)
            {
                if (this->Sounds[i] != NULL)
                {
                    break;
                }
            }

            i++;
            this->Sounds.Remove(i, this->Sounds.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeWAVs()
    {
        for (uint64 i = 1; i < this->Sounds.Length(); i++)
        {
            Mix_FreeChunk(this->Sounds[i]);
        }
        if (1 < this->Sounds.Length())
        {
            this->Sounds.Remove(1, this->Sounds.Length() - 1);
        }

        return 0;
    }

    uint64 engine::assets::LoadTTF(const char* Path, uint8 Size)
    {
        if (Path == NULL)
        {
            printf("slay::engine.assets.LoadTTF(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Fonts.Length(); i++)
        {
            if (this->Fonts[i] == NULL)
            {
                if ((this->Fonts[i] = TTF_OpenFont(Path, Size)) == NULL)
                {
                    printf("slay::engine.assets.LoadTTF(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }

                return i;
            }
        }

        if ((*(this->Fonts += {TTF_OpenFont(Path, Size)}))[this->Fonts.Length() - 1] == NULL)
        {
            printf("slay::engine.assets.LoadTTF(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Fonts.Length() - 1;
    }

    uint8 engine::assets::UnloadTTF(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.assets.UnloadTTF(): Illegal deletion of NULL TTF\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Fonts.Length() <= ID || this->Fonts[ID] == NULL)
        {
            printf("slay::engine.assets.UnloadTTF(): TTF does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        TTF_CloseFont(this->Fonts[ID]);
        this->Fonts[ID] = NULL;

        if (ID == this->Fonts.Length() - 1)
        {
            for (i = this->Fonts.Length() - 1; 0 < i; i--)
            {
                if (this->Fonts[i] != NULL)
                {
                    break;
                }
            }

            i++;
            this->Fonts.Remove(i, this->Fonts.Length() - i);
        }

        for (uint64 i = 1; i < this->Engine.Actors.Actors.Length(); i++)
        {
            if (this->Engine.Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Texts.Texts.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Texts.Texts[j] == NULL)
                {
                    continue;
                }

                if (this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID == ID)
                {
                    this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID = 0;
                }
            }
        }

        return 0;
    }

    uint8 engine::assets::PurgeTTFs()
    {
        for (uint64 i = 1; i < this->Engine.Actors.Actors.Length(); i++)
        {
            if (this->Engine.Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine.Actors.Actors[i]->Texts.Texts.Length(); j++)
            {
                if (this->Engine.Actors.Actors[i]->Texts.Texts[j] == NULL)
                {
                    continue;
                }

                this->Engine.Actors.Actors[i]->Texts.Texts[j]->FontID = 0;
            }
        }

        for (uint64 i = 1; i < this->Fonts.Length(); i++)
        {
            TTF_CloseFont(this->Fonts[i]);
        }
        if (1 < this->Fonts.Length())
        {
            this->Fonts.Remove(1, this->Fonts.Length() - 1);
        }

        return 0;
    }

    uint64 engine::assets::LoadCursor(const char* Path, uint16 HotSpotX, uint16 HotSpotY)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("slay::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("slay::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        if (tmp->w <= HotSpotX)
        {
            printf("slay::engine.assets.LoadCursor(): HotSpotX is out of range\nParams: Path: %s\n", Path);
            exit(1);
        }
        if (tmp->h <= HotSpotY)
        {
            printf("slay::engine.assets.LoadCursor(): HotSpotY is out of range\nParams: Path: %s\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Cursors.Length(); i++)
        {
            if (this->Cursors[i] == NULL)
            {
                if ((this->Cursors[i] = SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)) == NULL)
                {
                    printf("slay::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((*(this->Cursors += {SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)}))[this->Cursors.Length() - 1] == NULL)
        {
            printf("slay::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Cursors.Length() - 1;
    }

    uint8 engine::assets::UnloadCursor(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("slay::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Cursors.Length() <= ID || this->Cursors[ID] == NULL)
        {
            printf("slay::engine.assets.UnloadCursor(): Cursor does not exists\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_FreeCursor(this->Cursors[ID]);
        this->Cursors[ID] = NULL;

        if (ID == this->Cursors.Length() - 1)
        {
            for (i = this->Cursors.Length() - 1; 0 < i; i--)
            {
                if (this->Cursors[i] != NULL)
                {
                    break;
                }
            }

            i++;
            this->Cursors.Remove(i, this->Cursors.Length() - i);
        }

        if (this->Engine.Mouse.Cursor == ID)
        {
            this->Engine.Mouse.Cursor = 0;
        }

        return 0;
    }

    uint8 engine::assets::PurgeCursors()
    {
        this->Engine.Mouse.Cursor = 0;

        for (uint64 i = 1; i < this->Cursors.Length(); i++)
        {
            SDL_FreeCursor(this->Cursors[i]);
        }
        if (1 < this->Cursors.Length())
        {
            this->Cursors.Remove(1, this->Cursors.Length() - 1);
        }

        return 0;
    }
}