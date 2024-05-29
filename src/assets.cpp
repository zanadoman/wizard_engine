#include "WZE/assets.hpp"
#include "WZE/render.hpp"

wze::image_t wze::assets::load_image(const std::string &path) {
    SDL_Surface *res;

    res = IMG_Load(path.c_str());

    if (!res) {
        throw std::runtime_error(IMG_GetError());
    }

    return {res, SDL_FreeSurface};
}

wze::image_t wze::assets::new_image(const std::string &text,
                                    const font_t &font) {
    SDL_Surface *res;

    res =
        TTF_RenderUTF8_Blended(font.get(), text.c_str(), {255, 255, 255, 255});

    if (!res) {
        throw std::runtime_error(TTF_GetError());
    }

    return {res, SDL_FreeSurface};
}

wze::texture_t wze::assets::load_texture(const std::string &path) {
    SDL_Texture *res;

    res = IMG_LoadTexture(render::__base(), path.c_str());

    if (!res) {
        throw std::runtime_error(IMG_GetError());
    }

    return {res, SDL_DestroyTexture};
}

wze::texture_t wze::assets::new_texture(const image_t &img) {
    SDL_Texture *res;

    res = SDL_CreateTextureFromSurface(render::__base(), img.get());

    if (!res) {
        throw std::runtime_error(SDL_GetError());
    }

    return {res, SDL_DestroyTexture};
}

wze::sound_t wze::assets::load_sound(const std::string &path) {
    Mix_Chunk *res;

    res = Mix_LoadWAV(path.c_str());

    if (!res) {
        throw std::runtime_error(Mix_GetError());
    }

    return {res, Mix_FreeChunk};
}

wze::font_t wze::assets::load_font(const std::string &path, uint8_t size) {
    TTF_Font *res;

    res = TTF_OpenFont(path.c_str(), size);

    if (!res) {
        throw std::runtime_error(TTF_GetError());
    }

    return {res, TTF_CloseFont};
}

wze::cursor_t wze::assets::new_cursor(const image_t &img, uint16_t hot_x,
                                      uint16_t hot_y) {
    SDL_Cursor *res;

    res = SDL_CreateColorCursor(img.get(), hot_x, hot_y);

    if (!res) {
        throw std::runtime_error(SDL_GetError());
    }

    return {res, SDL_FreeCursor};
}

wze::cursor_t wze::assets::new_cursor(sys_cursor type) {
    SDL_Cursor *res;

    res = SDL_CreateSystemCursor((SDL_SystemCursor)type);

    if (!res) {
        throw std::runtime_error(SDL_GetError());
    }

    return {res, SDL_FreeCursor};
}
