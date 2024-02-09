#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::assets::assets(engine* Engine) : Engine(Engine), Textures({(SDL_Texture*)NULL}), Sounds({(Mix_Chunk*)NULL}), Fonts({(TTF_Font*)NULL}), Cursors({(SDL_Cursor*)NULL}) {}

    uint64 engine::assets::LoadTexture(const char* TexturePath)
    {
        SDL_Surface* tmp;

        if (TexturePath == NULL)
        {
            printf("wze::engine.assets.LoadTexture(): TexturePath must not be NULL\nParams: TexturePath: %p\n", TexturePath);
            exit(1);
        }

        if ((tmp = IMG_Load(TexturePath)) == NULL)
        {
            printf("wze::engine.assets.LoadTexture(): IMG_Load() failed\nParams: TexturePath: %s\n", TexturePath);
            exit(1);
        }

        for (uint64 i = 1; i < this->Textures.Length(); i++)
        {
            if (this->Textures[i] == NULL)
            {
                if ((this->Textures[i] = SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, tmp)) == NULL)
                {
                    printf("wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: TexturePath: %s\n", TexturePath);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((this->Textures += {SDL_CreateTextureFromSurface(this->Engine->Window.Renderer, tmp)})[this->Textures.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadTexture(): SDL_CreateTextureFromSurface() failed\nParams: TexturePath: %s\n", TexturePath);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Textures.Length() - 1;
    }

    uint8 engine::assets::UnloadTexture(uint64 TextureID)
    {
        uint64 i;

        if (this->Textures.Length() <= TextureID || this->Textures[TextureID] == NULL)
        {
            return 0;
        }

        SDL_DestroyTexture(this->Textures[TextureID]);
        this->Textures[TextureID] = NULL;

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

                if (this->Engine->Actors.Actors[i]->Textures.Textures[j]->TextureID == TextureID)
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
                    if (this->Engine->Actors.Actors[i]->Flipbooks.Flipbooks[j]->Textures[k] == TextureID)
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
        uint64 i;

        for (i = 1; i < this->Textures.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
            {
                for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
                {
                    if (this->Engine->Actors.Actors[j] == NULL)
                    {
                        continue;
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Textures.Textures.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Textures.Textures[k] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[j]->Textures.Textures[k]->TextureID == i)
                        {
                            this->Engine->Actors.Actors[j]->Textures.Textures[k]->TextureID = 0;
                        }
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k] == NULL)
                        {
                            continue;
                        }

                        for (uint64 l = 0; l < this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k]->Textures.Length(); l++)
                        {
                            if (this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k]->Textures[l] == i)
                            {
                                this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k]->Textures[l] = 0;
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
        uint64 i;

        if (Keep == NULL)
        {
            printf("wze::engine.assets.PurgeTextures(): Keep must not be NULL\nParams: Keep: %p\n", Keep);
            exit(1);
        }

        for (i = 1; i < this->Textures.Length(); i++)
        {
            if (!Keep->Contains({i}))
            {
                for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
                {
                    if (this->Engine->Actors.Actors[j] == NULL)
                    {
                        continue;
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Textures.Textures.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Textures.Textures[k] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[j]->Textures.Textures[k]->TextureID == i)
                        {
                            this->Engine->Actors.Actors[j]->Textures.Textures[k]->TextureID = 0;
                        }
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k] == NULL)
                        {
                            continue;
                        }

                        for (uint64 l = 0; l < this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k]->Textures.Length(); l++)
                        {
                            if (this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k]->Textures[l] == i)
                            {
                                this->Engine->Actors.Actors[j]->Flipbooks.Flipbooks[k]->Textures[l] = 0;
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

    uint64 engine::assets::LoadSound(const char* SoundPath)
    {
        if (SoundPath == NULL)
        {
            printf("wze::engine.assets.LoadSound(): SoundPath must not be NULL\nParams: SoundPath: %p\n", SoundPath);
            exit(1);
        }

        for (uint64 i = 1; i < this->Sounds.Length(); i++)
        {
            if (this->Sounds[i] == NULL)
            {
                if ((this->Sounds[i] = Mix_LoadWAV(SoundPath)) == NULL)
                {
                    printf("wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: SoundPath: %s\n", SoundPath);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Sounds += {Mix_LoadWAV(SoundPath)})[this->Sounds.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadSound(): Mix_LoadWAV() failed\nParams: SoundPath: %s\n", SoundPath);
            exit(1);
        }

        return this->Sounds.Length() - 1;
    }

    uint8 engine::assets::UnloadSound(uint64 SoundID)
    {
        uint64 i;

        if (this->Sounds.Length() <= SoundID || this->Sounds[SoundID] == NULL)
        {
            return 0;
        }

        Mix_FreeChunk(this->Sounds[SoundID]);
        this->Sounds[SoundID] = NULL;

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
        uint64 i;

        for (i = 1; i < this->Sounds.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
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
        uint64 i;

        if (Keep == NULL)
        {
            printf("wze::engine.assets.PurgeSounds(): Keep must not be NULL\nParams: Keep: %p\n", Keep);
            exit(1);
        }

        for (i = 1; i < this->Sounds.Length(); i++)
        {
            if (!Keep->Contains({i}))
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

    uint64 engine::assets::LoadFont(const char* FontPath, uint8 Size)
    {
        if (FontPath == NULL)
        {
            printf("wze::engine.assets.LoadFont(): FontPath must not be NULL\nParams: FontPath: %p\n", FontPath);
            exit(1);
        }

        for (uint64 i = 1; i < this->Fonts.Length(); i++)
        {
            if (this->Fonts[i] == NULL)
            {
                if ((this->Fonts[i] = TTF_OpenFont(FontPath, Size)) == NULL)
                {
                    printf("wze::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: FontPath: %s\n", FontPath);
                    exit(1);
                }

                return i;
            }
        }

        if ((this->Fonts += {TTF_OpenFont(FontPath, Size)})[this->Fonts.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadFont(): TTF_OpenFont() failed\nParams: FontPath: %s\n", FontPath);
            exit(1);
        }

        return this->Fonts.Length() - 1;
    }

    uint8 engine::assets::UnloadFont(uint64 FontID)
    {
        uint64 i;

        if (this->Fonts.Length() <= FontID || this->Fonts[FontID] == NULL)
        {
            return 0;
        }

        TTF_CloseFont(this->Fonts[FontID]);
        this->Fonts[FontID] = NULL;

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

                if (this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID == FontID)
                {
                    this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID = 0;
                }
            }
        }

        return 0;
    }

    uint8 engine::assets::PurgeFonts(std::initializer_list<uint64> Keep)
    {
        uint64 i;

        for (i = 1; i < this->Fonts.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
            {
                for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
                {
                    if (this->Engine->Actors.Actors[j] == NULL)
                    {
                        continue;
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Texts.Texts.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Texts.Texts[k] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[j]->Texts.Texts[k]->FontID == i)
                        {
                            this->Engine->Actors.Actors[j]->Texts.Texts[k]->FontID = 0;
                            SDL_DestroyTexture(this->Engine->Actors.Actors[j]->Texts.Texts[k]->Texture);
                            this->Engine->Actors.Actors[j]->Texts.Texts[k]->Texture = NULL;
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
        uint64 i;

        if (Keep == NULL)
        {
            printf("wze::engine.assets.PurgeFonts(): Keep must not be NULL\nParams: Keep: %p\n", Keep);
            exit(1);
        }

        for (i = 1; i < this->Fonts.Length(); i++)
        {
            if (!Keep->Contains({i}))
            {
                for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
                {
                    if (this->Engine->Actors.Actors[j] == NULL)
                    {
                        continue;
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Texts.Texts.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Texts.Texts[k] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[j]->Texts.Texts[k]->FontID == i)
                        {
                            this->Engine->Actors.Actors[j]->Texts.Texts[k]->FontID = 0;
                            SDL_DestroyTexture(this->Engine->Actors.Actors[j]->Texts.Texts[k]->Texture);
                            this->Engine->Actors.Actors[j]->Texts.Texts[k]->Texture = NULL;
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

    uint64 engine::assets::LoadCursor(const char* CursorPath, uint16 HotSpotX, uint16 HotSpotY)
    {
        SDL_Surface* tmp;

        if (CursorPath == NULL)
        {
            printf("wze::engine.assets.LoadCursor(): CursorPath must not be NULL\nParams: CursorPath: %p, HotSpotX: %d, HotSpotY: %d\n", CursorPath, HotSpotX, HotSpotY);
            exit(1);
        }

        if ((tmp = IMG_Load(CursorPath)) == NULL)
        {
            printf("wze::engine.assets.LoadCursor(): IMG_Load() failed\nParams: CursorPath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorPath, HotSpotX, HotSpotY);
            exit(1);
        }

        if (tmp->w <= HotSpotX)
        {
            printf("wze::engine.assets.LoadCursor(): HotSpotX out of range\nParams: CursorPath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorPath, HotSpotX, HotSpotY);
            exit(1);
        }
        if (tmp->h <= HotSpotY)
        {
            printf("wze::engine.assets.LoadCursor(): HotSpotY out of range\nParams: CursorPath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorPath, HotSpotX, HotSpotY);
            exit(1);
        }

        for (uint64 i = 1; i < this->Cursors.Length(); i++)
        {
            if (this->Cursors[i] == NULL)
            {
                if ((this->Cursors[i] = SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)) == NULL)
                {
                    printf("wze::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: CursorPath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorPath, HotSpotX, HotSpotY);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((this->Cursors += {SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)})[this->Cursors.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadCursor(): SDL_CreateColorCursor() failed\nParams: CursorPath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorPath, HotSpotX, HotSpotY);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->Cursors.Length() - 1;
    }

    uint8 engine::assets::UnloadCursor(uint64 CursorID)
    {
        uint64 i;

        if (this->Cursors.Length() <= CursorID || this->Cursors[CursorID] == NULL)
        {
            return 0;
        }

        SDL_FreeCursor(this->Cursors[CursorID]);
        this->Cursors[CursorID] = NULL;

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

        if (this->Engine->Mouse.Cursor == CursorID)
        {
            this->Engine->Mouse.Cursor = 0;
        }

        return 0;
    }

    uint8 engine::assets::PurgeCursors(std::initializer_list<uint64> Keep)
    {
        uint64 i;

        for (i = 1; i < this->Cursors.Length(); i++)
        {
            if (!initializer_list_Contains(Keep, {i}))
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
        uint64 i;

        if (Keep == NULL)
        {
            printf("wze::engine.assets.PurgeCursors(): Keep must not be NULL\nParams: Keep: %p\n", Keep);
            exit(1);
        }

        for (i = 1; i < this->Cursors.Length(); i++)
        {
            if (!Keep->Contains({i}))
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