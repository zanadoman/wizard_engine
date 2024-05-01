#include "../inc/WZE/WZE_assets.hpp"

namespace wze
{
    SDL_Texture const*
    texture::get_data() const
    {
        return this->data;
    }

    inline
    texture::texture(const std::string path)
    {
        if ((this->data = IMG_LoadTexture(nullptr, path.c_str())) == nullptr)
            throw wze_error(SDL_GetError());
    }

    std::shared_ptr<texture>
    texture::create(const std::string path)
    {
        return std::shared_ptr<texture>(new texture(path));
    }

    texture::~texture()
    {
        SDL_DestroyTexture(this->data);
    }

    Mix_Chunk const*
    sound::get_data() const
    {
        return this->data;
    }

    inline
    sound::sound(const std::string path)
    {
        if ((this->data = Mix_LoadWAV(path.c_str())) == nullptr)
            throw wze_error(Mix_GetError());
    }

    std::shared_ptr<sound>
    sound::create(const std::string path)
    {
        return std::shared_ptr<sound>(new sound(path));
    }

    sound::~sound()
    {
        Mix_FreeChunk(this->data);
    }

    TTF_Font const*
    font::get_data() const
    {
        return this->data;
    }

    inline
    font::font(const std::string path,
               const uint8_t size)
    {
        if ((this->data = TTF_OpenFont(path.c_str(), size)) == nullptr)
            throw wze_error(TTF_GetError());
    }

    std::shared_ptr<font>
    font::create(const std::string path,
                 const uint8_t size)
    {
        return std::shared_ptr<font>(new font(path, size));
    }

    font::~font()
    {
        TTF_CloseFont(this->data);
    }
}
