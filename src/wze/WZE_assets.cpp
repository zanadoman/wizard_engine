#include "../../inc/WZE/WZE_assets.hpp"

namespace wze
{
    Texture::Texture(std::string path)
    {
        SDL_Surface *tmp;

        if ((tmp = IMG_Load(path.c_str())) == nullptr)
        {
            throw new std::invalid_argument("invalid path");
        }
        if ((this->data = SDL_CreateTextureFromSurface(, tmp)) == nullptr)
        {
            throw new std::runtime_error("SDL_CreateTextureFromSurface failed");
        }

        SDL_FreeSurface(tmp);
    }

    Texture::~Texture()
    {
        SDL_DestroyTexture(this->data);
    }

    bool Texture::operator == (Texture &other)
    {
        return other.data == this->data;
    }

    SDL_Texture *Texture::GetData()
    {
        return this->data;
    }

    Sound::Sound(std::string path)
    {
        if ((this->data = Mix_LoadWAV(path.c_str())) == nullptr)
        {
            throw std::invalid_argument("invalid path");
        }
    }

    Sound::~Sound()
    {
        Mix_FreeChunk(this->data);
    }

    bool Sound::operator == (Sound &other)
    {
        return other.data == this->data;
    }

    Mix_Chunk *Sound::GetData()
    {
        return this->data;
    }

    Font::Font(std::string path, uint8_t size)
    {
        if ((this->data = TTF_OpenFont(path.c_str(), size)) == nullptr)
        {
            throw std::invalid_argument("invalid path");
        }
    }

    Font::~Font()
    {
        TTF_CloseFont(this->data);
    }

    bool Font::operator == (Font &other)
    {
        return other.data == this->data;
    }

    TTF_Font *Font::GetData()
    {
        return this->data;
    }
}
