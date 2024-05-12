#include "../include/WZE/assets.hpp" // IWYU pragma: keep

auto wze::load_texture(const std::string &path) -> texture {
    SDL_Texture *result = IMG_LoadTexture(window::renderer(), path.c_str());

    if (!result) {
        throw std::runtime_error(IMG_GetError());
    }

    return {result, SDL_DestroyTexture};
}

auto wze::load_sound(const std::string &path) -> sound {
    Mix_Chunk *result = Mix_LoadWAV(path.c_str());

    if (!result) {
        throw std::runtime_error(Mix_GetError());
    }

    return {result, Mix_FreeChunk};
}

auto wze::load_font(const std::string &path, uint8_t size) -> font {
    TTF_Font *result = TTF_OpenFont(path.c_str(), size);

    if (!result) {
        throw std::runtime_error(TTF_GetError());
    }

    return {result, TTF_CloseFont};
}

auto wze::render_text(const std::string &string, const font &font, style style)
    -> texture {
    SDL_Surface *tmp    = nullptr;
    SDL_Texture *result = nullptr;

    TTF_SetFontStyle(font.get(), style);

    tmp = TTF_RenderUTF8_Blended(font.get(), string.c_str(),
                                 {UINT8_MAX, UINT8_MAX, UINT8_MAX, UINT8_MAX});

    if (!tmp) {
        throw std::runtime_error(TTF_GetError());
    }

    result = SDL_CreateTextureFromSurface(window::renderer(), tmp);

    if (!result) {
        throw std::runtime_error(SDL_GetError());
    }

    SDL_FreeSurface(tmp);

    return {result, SDL_DestroyTexture};
}
