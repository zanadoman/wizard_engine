#include "../inc/WZE/WZE_assets.hpp" // IWYU pragma: keep

namespace wze {
    SDL_Texture const* texture::get_data() const {
        return this->data;
    }

    inline texture::texture(const std::string path) {
        if ((this->data = IMG_LoadTexture(nullptr, path.c_str())) == nullptr) {
            throw wze_error(SDL_GetError());
        }
    }

    texture_t texture::create(const std::string path) {
        return texture_t(new texture(path));
    }

    texture::~texture() {
        SDL_DestroyTexture(this->data);
    }

    Mix_Chunk const* sound::get_data() const {
        return this->data;
    }

    inline sound::sound(const std::string path) {
        if ((this->data = Mix_LoadWAV(path.c_str())) == nullptr) {
            throw wze_error(Mix_GetError());
        }
    }

    sound_t sound::create(const std::string path) {
        return sound_t(new sound(path));
    }

    sound::~sound() {
        Mix_FreeChunk(this->data);
    }

    TTF_Font const* font::get_data() const {
        return this->data;
    }

    inline font::font(const std::string path, const uint8_t size) {
        if ((this->data = TTF_OpenFont(path.c_str(), size)) == nullptr) {
            throw wze_error(TTF_GetError());
        }
    }

    font_t font::create(const std::string path, const uint8_t size) {
        return font_t(new font(path, size));
    }

    font::~font() {
        TTF_CloseFont(this->data);
    }
}
