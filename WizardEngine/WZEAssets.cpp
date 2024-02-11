#include "WizardEngine.hpp"

using namespace neo;

namespace wze
{
    engine::assets::assets(engine* Engine) : Engine(Engine), Textures({(SDL_Texture*)NULL}), Sounds({(Mix_Chunk*)NULL}), Fonts({(TTF_Font*)NULL}), CursorTextures({(SDL_Cursor*)NULL}) {}

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

            for (uint64 j = 1; j < this->Engine->Actors.Actors[i]->Textureboxes.Textureboxes.Length(); j++)
            {
                if (this->Engine->Actors.Actors[i]->Textureboxes.Textureboxes[j] == NULL)
                {
                    continue;
                }

                if (this->Engine->Actors.Actors[i]->Textureboxes.Textureboxes[j]->TextureID == TextureID)
                {
                    this->Engine->Actors.Actors[i]->Textureboxes.Textureboxes[j]->TextureID = 0;
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

    uint8 engine::assets::PurgeTextures(std::initializer_list<uint64> KeepTextureIDs)
    {
        uint64 i;

        for (i = 1; i < this->Textures.Length(); i++)
        {
            if (!initializer_list_Contains(KeepTextureIDs, {i}))
            {
                for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
                {
                    if (this->Engine->Actors.Actors[j] == NULL)
                    {
                        continue;
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes[k] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes[k]->TextureID == i)
                        {
                            this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes[k]->TextureID = 0;
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

    uint8 engine::assets::PurgeTextures(array<uint64>* KeepTextureIDs)
    {
        uint64 i;

        if (KeepTextureIDs == NULL)
        {
            printf("wze::engine.assets.PurgeTextures(): KeepTextureIDs must not be NULL\nParams: KeepTextureIDs: %p\n", KeepTextureIDs);
            exit(1);
        }

        for (i = 1; i < this->Textures.Length(); i++)
        {
            if (!KeepTextureIDs->Contains({i}))
            {
                for (uint64 j = 1; j < this->Engine->Actors.Actors.Length(); j++)
                {
                    if (this->Engine->Actors.Actors[j] == NULL)
                    {
                        continue;
                    }

                    for (uint64 k = 1; k < this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes.Length(); k++)
                    {
                        if (this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes[k] == NULL)
                        {
                            continue;
                        }

                        if (this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes[k]->TextureID == i)
                        {
                            this->Engine->Actors.Actors[j]->Textureboxes.Textureboxes[k]->TextureID = 0;
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

    uint8 engine::assets::PurgeSounds(std::initializer_list<uint64> KeepSoundIDs)
    {
        uint64 i;

        for (i = 1; i < this->Sounds.Length(); i++)
        {
            if (!initializer_list_Contains(KeepSoundIDs, {i}))
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

    uint8 engine::assets::PurgeSounds(array<uint64>* KeepSoundIDs)
    {
        uint64 i;

        if (KeepSoundIDs == NULL)
        {
            printf("wze::engine.assets.PurgeSounds(): KeepSoundIDs must not be NULL\nParams: KeepSoundIDs: %p\n", KeepSoundIDs);
            exit(1);
        }

        for (i = 1; i < this->Sounds.Length(); i++)
        {
            if (!KeepSoundIDs->Contains({i}))
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
                    this->Engine->Actors.Actors[i]->Texts.Texts[j]->Width = 0;
                    this->Engine->Actors.Actors[i]->Texts.Texts[j]->FontID = 0;
                    SDL_DestroyTexture(this->Engine->Actors.Actors[i]->Texts.Texts[j]->Texture);
                    this->Engine->Actors.Actors[i]->Texts.Texts[j]->Texture = NULL;
                }
            }
        }

        return 0;
    }

    uint8 engine::assets::PurgeFonts(std::initializer_list<uint64> KeepFontIDs)
    {
        uint64 i;

        for (i = 1; i < this->Fonts.Length(); i++)
        {
            if (!initializer_list_Contains(KeepFontIDs, {i}))
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
                            this->Engine->Actors.Actors[j]->Texts.Texts[k]->Width = 0;
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

    uint8 engine::assets::PurgeFonts(array<uint64>* KeepFontIDs)
    {
        uint64 i;

        if (KeepFontIDs == NULL)
        {
            printf("wze::engine.assets.PurgeFonts(): KeepFontIDs must not be NULL\nParams: KeepFontIDs: %p\n", KeepFontIDs);
            exit(1);
        }

        for (i = 1; i < this->Fonts.Length(); i++)
        {
            if (!KeepFontIDs->Contains({i}))
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
                            this->Engine->Actors.Actors[j]->Texts.Texts[k]->Width = 0;
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

    uint64 engine::assets::LoadCursorTexture(const char* CursorTexturePath, uint16 HotSpotX, uint16 HotSpotY)
    {
        SDL_Surface* tmp;

        if (CursorTexturePath == NULL)
        {
            printf("wze::engine.assets.LoadCursorTexture(): CursorTexturePath must not be NULL\nParams: CursorTexturePath: %p, HotSpotX: %d, HotSpotY: %d\n", CursorTexturePath, HotSpotX, HotSpotY);
            exit(1);
        }

        if ((tmp = IMG_Load(CursorTexturePath)) == NULL)
        {
            printf("wze::engine.assets.LoadCursorTexture(): IMG_Load() failed\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorTexturePath, HotSpotX, HotSpotY);
            exit(1);
        }

        if (tmp->w <= HotSpotX)
        {
            printf("wze::engine.assets.LoadCursorTexture(): HotSpotX out of range\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorTexturePath, HotSpotX, HotSpotY);
            exit(1);
        }
        if (tmp->h <= HotSpotY)
        {
            printf("wze::engine.assets.LoadCursorTexture(): HotSpotY out of range\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorTexturePath, HotSpotX, HotSpotY);
            exit(1);
        }

        for (uint64 i = 1; i < this->CursorTextures.Length(); i++)
        {
            if (this->CursorTextures[i] == NULL)
            {
                if ((this->CursorTextures[i] = SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)) == NULL)
                {
                    printf("wze::engine.assets.LoadCursorTexture(): SDL_CreateColorCursor() failed\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorTexturePath, HotSpotX, HotSpotY);
                    exit(1);
                }
                SDL_FreeSurface(tmp);

                return i;
            }
        }

        if ((this->CursorTextures += {SDL_CreateColorCursor(tmp, HotSpotX, HotSpotY)})[this->CursorTextures.Length() - 1] == NULL)
        {
            printf("wze::engine.assets.LoadCursorTexture(): SDL_CreateColorCursor() failed\nParams: CursorTexturePath: %s, HotSpotX: %d, HotSpotY: %d\n", CursorTexturePath, HotSpotX, HotSpotY);
            exit(1);
        }
        SDL_FreeSurface(tmp);

        return this->CursorTextures.Length() - 1;
    }

    uint8 engine::assets::UnloadCursorTexture(uint64 CursorTextureID)
    {
        uint64 i;

        if (this->CursorTextures.Length() <= CursorTextureID || this->CursorTextures[CursorTextureID] == NULL)
        {
            return 0;
        }

        SDL_FreeCursor(this->CursorTextures[CursorTextureID]);
        this->CursorTextures[CursorTextureID] = NULL;

        if (this->CursorTextures[this->CursorTextures.Length() - 1] == NULL && 1 < this->CursorTextures.Length())
        {
            for (i = this->CursorTextures.Length(); 1 < i; i--)
            {
                if (this->CursorTextures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->CursorTextures.Remove(i, this->CursorTextures.Length() - i);
        }

        if (this->Engine->Mouse.CursorTextureID == CursorTextureID)
        {
            this->Engine->Mouse.CursorTextureID = 0;
        }

        return 0;
    }

    uint8 engine::assets::PurgeCursorTextures(std::initializer_list<uint64> KeepCursorTextureIDs)
    {
        uint64 i;

        for (i = 1; i < this->CursorTextures.Length(); i++)
        {
            if (!initializer_list_Contains(KeepCursorTextureIDs, {i}))
            {
                if (this->Engine->Mouse.CursorTextureID == i)
                {
                    this->Engine->Mouse.CursorTextureID = 0;
                }

                SDL_FreeCursor(this->CursorTextures[i]);
                this->CursorTextures[i] = NULL;
            }
        }

        if (this->CursorTextures[this->CursorTextures.Length() - 1] == NULL && 1 < this->CursorTextures.Length())
        {
            for (i = this->CursorTextures.Length(); 1 < i; i--)
            {
                if (this->CursorTextures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->CursorTextures.Remove(i, this->CursorTextures.Length() - i);
        }

        return 0;
    }

    uint8 engine::assets::PurgeCursorTextures(array<uint64>* KeepCursorTextureIDs)
    {
        uint64 i;

        if (KeepCursorTextureIDs == NULL)
        {
            printf("wze::engine.assets.PurgeCursorTextures(): KeepCursorTextureIDs must not be NULL\nParams: KeepCursorTextureIDs: %p\n", KeepCursorTextureIDs);
            exit(1);
        }

        for (i = 1; i < this->CursorTextures.Length(); i++)
        {
            if (!KeepCursorTextureIDs->Contains({i}))
            {
                if (this->Engine->Mouse.CursorTextureID == i)
                {
                    this->Engine->Mouse.CursorTextureID = 0;
                }

                SDL_FreeCursor(this->CursorTextures[i]);
                this->CursorTextures[i] = NULL;
            }
        }

        if (this->CursorTextures[this->CursorTextures.Length() - 1] == NULL && 1 < this->CursorTextures.Length())
        {
            for (i = this->CursorTextures.Length(); 1 < i; i--)
            {
                if (this->CursorTextures[i - 1] != NULL)
                {
                    break;
                }
            }

            this->CursorTextures.Remove(i, this->CursorTextures.Length() - i);
        }

        return 0;
    }
}