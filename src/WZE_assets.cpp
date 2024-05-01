#include "../inc/WZE/WZE_assets.hpp" // IWYU pragma: keep

SDL_Texture const* wze::texture::get_data() const {
    return this->data;
}

inline wze::texture::texture(const std::string path) {
    if ((this->data = IMG_LoadTexture(nullptr, path.c_str())) == nullptr) {
        throw wze_error(SDL_GetError());
    }
}

wze::texture_t wze::texture::create(const std::string path) {
    return texture_t(new texture(path));
}

wze::texture::~texture() {
    SDL_DestroyTexture(this->data);
}

Mix_Chunk const* wze::sound::get_data() const {
    return this->data;
}

inline wze::sound::sound(const std::string path) {
    if ((this->data = Mix_LoadWAV(path.c_str())) == nullptr) {
        throw wze_error(Mix_GetError());
    }
}

wze::sound_t wze::sound::create(const std::string path) {
    return sound_t(new sound(path));
}

wze::sound::~sound() {
    Mix_FreeChunk(this->data);
}

TTF_Font const* wze::font::get_data() const {
    return this->data;
}

inline wze::font::font(const std::string path, const uint8_t size) {
    if ((this->data = TTF_OpenFont(path.c_str(), size)) == nullptr) {
        throw wze_error(TTF_GetError());
    }
}

wze::font_t wze::font::create(const std::string path, const uint8_t size) {
    return font_t(new font(path, size));
}

wze::font::~font() {
    TTF_CloseFont(this->data);
}
