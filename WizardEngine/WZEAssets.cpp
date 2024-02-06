#include "WizardEngine.hpp"

namespace wze
{
    engine::assets::assets(engine* Engine) : Engine(Engine), Textures({(SDL_Texture*)NULL}), Sounds({(Mix_Chunk*)NULL}), Fonts({(TTF_Font*)NULL}), Cursors({(SDL_Cursor*)NULL}) {}

    uint64 engine::assets::LoadTexture(const char* Path)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("wze::engine.assets.LoadTexture(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("wze::engine.assets.LoadTexture(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, tmp)) == NULL)
                {
                    printf("wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((this->Textures += {SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, tmp)})[this->Textures.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: Path: %s\n", Path);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadTexture(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.assets.UnloadTexture(): Illegal deletion of NULL Texture\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Textures.Length() <= ID || this->Textures[ID] == NULL)
        {
            printf("wze::engine.assets.UnloadTexture(): Texture does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_DestroyTexture(this->Textures[ID]);
        this->Textures[ID] = NULL;

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length(); 1 < i; i--)
            {
                if (this->Textures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        for (i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Textures.Textures.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Textures.Textures[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Actors.Actors[i]->Textures.Textures[j]->TextureID == ID)
                {
                    this->Engine->Actors.Actors[i]->Textures.Textures[j]->TextureID = 0;
                }
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j] == NULL)
                {
                    continue;
                }

                for (uint64 k = 0; k < this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures.Length(); k++)
                {
                    if (this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures[k] == ID)
                    {
                        this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures[k] = 0;
                    }
                }
            }
        }

        return 0;
    }

    uint8 engine::assets::PurgeTextures(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Textures.Length() <= Keep.begin()[i] || this->Textures[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.assets.PurgeTextures(): Texture does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Textures.Length(); i++)
        {
            for (j = 0; j < Keep.size(); j++)
            {
                if (i == Keep.begin()[j])
                {
                    break;
                }
            }

            if (j == Keep.size())
            {
                for (uint64 k = 1; k < this->Engine->Actors.Actors.Length(); k++)
                {
                    if (this->Engine->Actors.Actors[k] == NULL)
                    {
                        continue;
                    }

                    for (uint64 l = 1; l < this->Engine->Actors.Actors[k]->Textures.Textures.Length(); l++)
                    {
                        if (this->Engine->Actors.Actors[k]->Textures.Textures[l] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[k]->Textures.Textures[l]->TextureID == i)
                        {
                            this->Engine->Actors.Actors[k]->Textures.Textures[l]->TextureID = 0;
                        }
                    }

                    for (uint64 l = 1; l < this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks.Length(); l++)
                    {
                        if (this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l] == NULL)
                        {
                            continue;
                        }

                        for (uint64 m = 0; m < this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l]->Textures.Length(); m++)
                        {
                            if (this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l]->Textures[m] == i)
                            {
                                this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l]->Textures[m] = 0;
                            }
                        }
                    }
                }

                SDL_DestroyTexture(this->Textures[i]);
                this->Textures[i] = NULL;
            }
        }

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length(); 1 < i; i--)
            {
                if (this->Textures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeTextures(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Textures.Length() <= (*Keep)[i] || this->Textures[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.assets.PurgeTextures(): Texture does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Textures.Length(); i++)
        {
            for (j = 0; j < Keep->Length(); j++)
            {
                if (i == (*Keep)[j])
                {
                    break;
                }
            }

            if (j == Keep->Length())
            {
                for (uint64 k = 1; k < this->Engine->Actors.Actors.Length(); k++)
                {
                    if (this->Engine->Actors.Actors[k] == NULL)
                    {
                        continue;
                    }

                    for (uint64 l = 1; l < this->Engine->Actors.Actors[k]->Textures.Textures.Length(); l++)
                    {
                        if (this->Engine->Actors.Actors[k]->Textures.Textures[l] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[k]->Textures.Textures[l]->TextureID == i)
                        {
                            this->Engine->Actors.Actors[k]->Textures.Textures[l]->TextureID = 0;
                        }
                    }

                    for (uint64 l = 1; l < this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks.Length(); l++)
                    {
                        if (this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l] == NULL)
                        {
                            continue;
                        }

                        for (uint64 m = 0; m < this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l]->Textures.Length(); m++)
                        {
                            if (this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l]->Textures[m] == i)
                            {
                                this->Engine->Actors.Actors[k]->Flipbooks.Flipbooks[l]->Textures[m] = 0;
                            }
                        }
                    }
                }

                SDL_DestroyTexture(this->Textures[i]);
                this->Textures[i] = NULL;
            }
        }

        if (this->Textures[this->Textures.Length() - 1] == NULL && 1 < this->Textures.Length())
        {
            for (i = this->Textures.Length(); 1 < i; i--)
            {
                if (this->Textures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Textures.Remove(i, this->Textures.Length() - i);
        }

        return 0;
    }

    uint64 engine::assets::LoadSound(const char* Path)
    {
        if (Path == NULL)
        {
            printf("wze::engine.assets.LoadSound(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Sounds.Length(); i++)
        {
            if (this->Sounds[i] == NULL)
            {
                if ((this->Sounds[i] = Mix_LoadWAV(Path)) == NULL)
                {
                    printf("wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Sounds += {Mix_LoadWAV(Path)})[this->Sounds.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Sounds.Length() - 1;
    }

    uint8 engine::assets::UnloadSound(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.assets.UnloadSound(): Illegal deletion of NULL Sound\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Sounds.Length() <= ID || this->Sounds[ID] == NULL)
        {
            printf("wze::engine.assets.UnloadSound(): Sound does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        Mix_FreeChunk(this->Sounds[ID]);
        this->Sounds[ID] = NULL;

        if (this->Sounds[this->Sounds.Length() - 1] == NULL && 1 < this->Sounds.Length())
        {
            for (i = this->Sounds.Length(); 1 < i; i--)
            {
                if (this->Sounds[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Sounds.Remove(i, this->Sounds.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeSounds(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Sounds.Length() <= Keep.begin()[i] || this->Sounds[Keep.begin()[i]] == NULL))
            {
                printf("wze::assets.PurgeSounds(): Sound does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Sounds.Length(); i++)
        {
            for (j = 0; j < Keep.size(); j++)
            {
                if (i == Keep.begin()[j])
                {
                    break;
                }
            }

            if (j == Keep.size())
            {
                Mix_FreeChunk(this->Sounds[i]);
                this->Sounds[i] = NULL;
            }
        }

        if (this->Sounds[this->Sounds.Length() - 1] == NULL && 1 < this->Sounds.Length())
        {
            for (i = this->Sounds.Length(); 1 < i; i--)
            {
                if (this->Sounds[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Sounds.Remove(i, this->Sounds.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeSounds(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Sounds.Length() <= (*Keep)[i] || this->Sounds[(*Keep)[i]] == NULL))
            {
                printf("wze::assets.PurgeSounds(): Sound does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Sounds.Length(); i++)
        {
            for (j = 0; j < Keep->Length(); j++)
            {
                if (i == (*Keep)[j])
                {
                    break;
                }
            }

            if (j == Keep->Length())
            {
                Mix_FreeChunk(this->Sounds[i]);
                this->Sounds[i] = NULL;
            }
        }

        if (this->Sounds[this->Sounds.Length() - 1] == NULL && 1 < this->Sounds.Length())
        {
            for (i = this->Sounds.Length(); 1 < i; i--)
            {
                if (this->Sounds[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Sounds.Remove(i, this->Sounds.Length() - i);
        }

        return 0;
    }

    uint64 engine::assets::LoadFont(const char* Path, uint8 Size)
    {
        if (Path == NULL)
        {
            printf("wze::engine.assets.LoadFont(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Fonts.Length(); i++)
        {
            if (this->Fonts[i] == NULL)
            {
                if ((this->Fonts[i] = TTF_OpenFont(Path, Size)) == NULL)
                {
                    printf("wze::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Fonts += {TTF_OpenFont(Path, Size)})[this->Fonts.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        return this->Fonts.Length() - 1;
    }

    uint8 engine::assets::UnloadFont(uint64 ID)
    {
        uint64 i;

        if (ID == 0)
        {
            printf("wze::engine.assets.UnloadFont(): Illegal deletion of NULL Font\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Fonts.Length() <= ID || this->Fonts[ID] == NULL)
        {
            printf("wze::engine.assets.UnloadFont(): Font does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        TTF_CloseFont(this->Fonts[ID]);
        this->Fonts[ID] = NULL;

        if (this->Fonts[this->Fonts.Length() - 1] == NULL && 1 < this->Fonts.Length())
        {
            for (i = this->Fonts.Length(); 1 < i; i--)
            {
                if (this->Fonts[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Fonts.Remove(i, this->Fonts.Length() - i);
        }

        for (i = 1; i < this->Engine->Actors.Actors.Length(); i++)
        {
            if (this->Engine->Actors.Actors[i] == NULL)
            {
                continue;
            }

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Texts.Texts.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Texts.Texts[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID == ID)
                {
                    this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID = 0;
                }
            }
        }

        return 0;
    }

    uint8 engine::assets::PurgeFonts(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Fonts.Length() <= Keep.begin()[i] || this->Fonts[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.assets.PurgeFonts(): Font does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Fonts.Length(); i++)
        {
            for (j = 0; j < Keep.size(); j++)
            {
                if (i == Keep.begin()[j])
                {
                    break;
                }
            }

            if (j == Keep.size())
            {
                for (uint64 k = 1; k < this->Engine->Actors.Actors.Length(); k++)
                {
                    if (this->Engine->Actors.Actors[k] == NULL)
                    {
                        continue;
                    }

                    for (uint64 l = 1; l < this->Engine->Actors.Actors[k]->Texts.Texts.Length(); l++)
                    {
                        if (this->Engine->Actors.Actors[k]->Texts.Texts[l] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[k]->Texts.Texts[l]->FontID == i)
                        {
                            this->Engine->Actors.Actors[k]->Texts.Texts[l]->FontID = 0;
                        }
                    }
                }

                TTF_CloseFont(this->Fonts[i]);
                this->Fonts[i] = NULL;
            }
        }

        if (this->Fonts[this->Fonts.Length() - 1] == NULL && 1 < this->Fonts.Length())
        {
            for (i = this->Fonts.Length(); 1 < i; i--)
            {
                if (this->Fonts[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Fonts.Remove(i, this->Fonts.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeFonts(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Fonts.Length() <= (*Keep)[i] || this->Fonts[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.assets.PurgeFonts(): Font does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Fonts.Length(); i++)
        {
            for (j = 0; j < Keep->Length(); j++)
            {
                if (i == (*Keep)[j])
                {
                    break;
                }
            }

            if (j == Keep->Length())
            {
                for (uint64 k = 1; k < this->Engine->Actors.Actors.Length(); k++)
                {
                    if (this->Engine->Actors.Actors[k] == NULL)
                    {
                        continue;
                    }

                    for (uint64 l = 1; l < this->Engine->Actors.Actors[k]->Texts.Texts.Length(); l++)
                    {
                        if (this->Engine->Actors.Actors[k]->Texts.Texts[l] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[k]->Texts.Texts[l]->FontID == i)
                        {
                            this->Engine->Actors.Actors[k]->Texts.Texts[l]->FontID = 0;
                        }
                    }
                }

                TTF_CloseFont(this->Fonts[i]);
                this->Fonts[i] = NULL;
            }
        }

        if (this->Fonts[this->Fonts.Length() - 1] == NULL && 1 < this->Fonts.Length())
        {
            for (i = this->Fonts.Length(); 1 < i; i--)
            {
                if (this->Fonts[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Fonts.Remove(i, this->Fonts.Length() - i);
        }

        return 0;
    }

    uint64 engine::assets::LoadCursor(const char* Path, uint16 HotSpotX, uint16 HotSpotY)
    {
        SDL_Surface* tmp;

        if (Path == NULL)
        {
            printf("wze::engine.assets.LoadCursor(): Path must not be NULL\nParams: Path: %p\n", Path);
            exit(1);
        }

        if ((tmp = IMG_Load(Path)) == NULL)
        {
            printf("wze::engine.assets.LoadCursor(): IMG_Load() failed\nParams: Path: %s\n", Path);
            exit(1);
        }

        if (tmp->w <= HotSpotX)
        {
            printf("wze::engine.assets.LoadCursor(): HotSpotX out of range\nParams: Path: %s\n", Path);
            exit(1);
        }
        if (tmp->h <= HotSpotY)
        {
            printf("wze::engine.assets.LoadCursor(): HotSpotY out of range\nParams: Path: %s\n", Path);
            exit(1);
        }

        for (uint64 i = 1; i < this->Cursors.Length(); i++)
        {
            if (this->Cursors[i] == NULL)
            {
                if ((this->Cursors[i] = SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)) == NULL)
                {
                    printf("wze::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n", Path);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((this->Cursors += {SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)})[this->Cursors.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: Path: %s\n", Path);
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
            printf("wze::engine.assets.UnloadCursor(): Illegal deletion of NULL cursor\nParams: ID: %lld\n", ID);
            exit(1);
        }
        if (this->Cursors.Length() <= ID || this->Cursors[ID] == NULL)
        {
            printf("wze::engine.assets.UnloadCursor(): Cursor does not exist\nParams: ID: %lld\n", ID);
            exit(1);
        }

        SDL_FreeCursor(this->Cursors[ID]);
        this->Cursors[ID] = NULL;

        if (this->Cursors[this->Cursors.Length() - 1] == NULL && 1 < this->Cursors.Length())
        {
            for (i = this->Cursors.Length(); 1 < i; i--)
            {
                if (this->Cursors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Cursors.Remove(i, this->Cursors.Length() - i);
        }

        if (this->Engine->Mouse.Cursor == ID)
        {
            this->Engine->Mouse.Cursor = 0;
        }

        return 0;
    }

    uint8 engine::assets::PurgeCursors(std::initializer_list<uint64> Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep.size(); i++)
        {
            if (Keep.begin()[i] != 0 && (this->Cursors.Length() <= Keep.begin()[i] || this->Cursors[Keep.begin()[i]] == NULL))
            {
                printf("wze::engine.assets.PurgeCursors(): Cursor does not exist\nParams: Keep(length): %ld\n", Keep.size());
                exit(1);
            }
        }

        for (i = 1; i < this->Cursors.Length(); i++)
        {
            for (j = 0; j < Keep.size(); j++)
            {
                if (i == Keep.begin()[j])
                {
                    break;
                }
            }

            if (j == Keep.size())
            {
                if (this->Engine->Mouse.Cursor == i)
                {
                    this->Engine->Mouse.Cursor = 0;
                }

                SDL_FreeCursor(this->Cursors[i]);
                this->Cursors[i] = NULL;
            }
        }

        if (this->Cursors[this->Cursors.Length() - 1] == NULL && 1 < this->Cursors.Length())
        {
            for (i = this->Cursors.Length(); 1 < i; i--)
            {
                if (this->Cursors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Cursors.Remove(i, this->Cursors.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeCursors(array<uint64>* Keep)
    {
        uint64 i, j;

        for (i = 0; i < Keep->Length(); i++)
        {
            if ((*Keep)[i] != 0 && (this->Cursors.Length() <= (*Keep)[i] || this->Cursors[(*Keep)[i]] == NULL))
            {
                printf("wze::engine.assets.PurgeCursors(): Cursor does not exist\nParams: Keep: %p\n", Keep);
                exit(1);
            }
        }

        for (i = 1; i < this->Cursors.Length(); i++)
        {
            for (j = 0; j < Keep->Length(); j++)
            {
                if (i == (*Keep)[j])
                {
                    break;
                }
            }

            if (j == Keep->Length())
            {
                if (this->Engine->Mouse.Cursor == i)
                {
                    this->Engine->Mouse.Cursor = 0;
                }

                SDL_FreeCursor(this->Cursors[i]);
                this->Cursors[i] = NULL;
            }
        }

        if (this->Cursors[this->Cursors.Length() - 1] == NULL && 1 < this->Cursors.Length())
        {
            for (i = this->Cursors.Length(); 1 < i; i--)
            {
                if (this->Cursors[i - 1] != NULL)
                {
                    break;
                }
            }

            this->Cursors.Remove(i, this->Cursors.Length() - i);
        }

        return 0;
    }
}