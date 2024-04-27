#include "../../inc/WZE/WZE_assets.hpp"

namespace wze
{
    const SDL_Texture* texture::get_data() {
        return this->data;
    }

    texture::texture(std::string path) {
        if ((this->data = IMG_LoadTexture(, path.c_str())) == nullptr) {
            throw std::runtime_error(SDL_GetError());
        }
    }

    std::shared_ptr<texture> texture::create(std::string path) {
        return std::shared_ptr<texture>(new texture(path));
    }

    texture::~texture() {
        SDL_DestroyTexture(this->data);
    }

    const Mix_Chunk* sound::get_data() {
        return this->data;
    }

    sound::sound(std::string path) {
        if ((this->data = Mix_LoadWAV(path.c_str())) == nullptr) {
            throw std::runtime_error(Mix_GetError());
        }
    }

    std::shared_ptr<sound> sound::create(std::string path) {
        return std::shared_ptr<sound>(new sound(path));
    }

    sound::~sound() {
        Mix_FreeChunk(this->data);
    }

    const TTF_Font* font::get_data() {
        return this->data;
    }

    font::font(std::string path, uint8_t size) {
        if ((this->data = TTF_OpenFont(path.c_str(), size)) == nullptr) {
            throw std::runtime_error(TTF_GetError());
        }
    }

    std::shared_ptr<font> font::create(std::string path, uint8_t size) {
        return std::shared_ptr<font>(new font(path, size));
    }

    font::~font() {
        TTF_CloseFont(this->data);
    }
}
