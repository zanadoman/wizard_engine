#include "../inc/WZE/WZE_assets.hpp" // IWYU pragma: keep

wze::texture wze::load_texture(const std::string path) {
    SDL_Texture *result;

    if ((result = IMG_LoadTexture(nullptr, path.c_str())) == nullptr) {
        throw wze_error(IMG_GetError());
    }

    return texture(result, SDL_DestroyTexture);
}

wze::sound wze::load_sound(const std::string path) {
    Mix_Chunk *result;

    if ((result = Mix_LoadWAV(path.c_str())) == nullptr) {
        throw wze_error(Mix_GetError());
    }

    return sound(result, Mix_FreeChunk);
}

wze::font wze::load_font(const std::string path, uint8_t size) {
    TTF_Font *result;

    if ((result = TTF_OpenFont(path.c_str(), size)) == nullptr) {
        throw wze_error(TTF_GetError());
    }

    return font(result, TTF_CloseFont);
}
