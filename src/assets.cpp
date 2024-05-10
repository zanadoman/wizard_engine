#include "../include/WZE/assets.hpp" // IWYU pragma: keep

auto wze::load_texture(const std::string &path) -> texture {
    SDL_Texture *result = IMG_LoadTexture(nullptr, path.c_str());

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
    TTF_Font *result = nullptr;

    result = TTF_OpenFont(path.c_str(), size);

    if (!result) {
        throw std::runtime_error(TTF_GetError());
    }

    return {result, TTF_CloseFont};
}

auto wze::render_text(const std::string &string, const font &font, style style)
    -> text {
    SDL_Surface *result = nullptr;

    TTF_SetFontStyle(font.get(), style);

    result =
        TTF_RenderUTF8_Blended(font.get(), string.c_str(),
                               {UINT8_MAX, UINT8_MAX, UINT8_MAX, UINT8_MAX});

    if (!result) {
        throw std::runtime_error(TTF_GetError());
    }

    return {result, SDL_FreeSurface};
}
