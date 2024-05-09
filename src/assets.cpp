#include "../include/assets.hpp" // IWYU pragma: keep

wze::texture wze::load_texture(const std::string path) {
    SDL_Texture *result;

    result = IMG_LoadTexture(nullptr, path.c_str());

    if (!result) {
        throw wze_error(IMG_GetError());
    }

    return texture(result, SDL_DestroyTexture);
}

wze::sound wze::load_sound(const std::string path) {
    Mix_Chunk *result;

    result = Mix_LoadWAV(path.c_str());
    
    if (!result) {
        throw wze_error(Mix_GetError());
    }

    return sound(result, Mix_FreeChunk);
}

wze::font wze::load_font(const std::string path, uint8_t size) {
    TTF_Font *result;

    result = TTF_OpenFont(path.c_str(), size);

    if (!result) {
        throw wze_error(TTF_GetError());
    }

    return font(result, TTF_CloseFont);
}

wze::text wze::render_text(const std::string string, font font, style style) {
    SDL_Surface *result;

    TTF_SetFontStyle(font.get(), style);

    result = TTF_RenderUTF8_Blended(
        font.get(),
        string.c_str(),
        {255, 255, 255, 255}
    );
    
    if (!result) {
        throw wze_error(TTF_GetError());
    }

    return text(result, SDL_FreeSurface);
}
