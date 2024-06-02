#include "WZE/assets.hpp"
#include "WZE/render.hpp"
#include "WZE/error.hpp"

wze::image wze::assets::load_image(std::string const& path) {
    SDL_Surface* res;

    res = IMG_Load(path.c_str());

    if (!res) {
        throw sdl_image_error();
    }

    return {res, SDL_FreeSurface};
}

wze::image wze::assets::create_image(std::string const& text,
                                     font const& font) {
    SDL_Surface* res;

    res =
        TTF_RenderUTF8_Blended(font.get(), text.c_str(), {255, 255, 255, 255});

    if (!res) {
        throw sdl_ttf_error();
    }

    return {res, SDL_FreeSurface};
}

wze::texture wze::assets::load_texture(std::string const& path) {
    SDL_Texture* res;

    res = IMG_LoadTexture(render::__base(), path.c_str());

    if (!res) {
        throw sdl_image_error();
    }

    return {res, SDL_DestroyTexture};
}

wze::texture wze::assets::create_texture(image const& img) {
    SDL_Texture* res;

    res = SDL_CreateTextureFromSurface(render::__base(), img.get());

    if (!res) {
        throw sdl_error();
    }

    return {res, SDL_DestroyTexture};
}

wze::sound wze::assets::load_sound(std::string const& path) {
    Mix_Chunk* res;

    res = Mix_LoadWAV(path.c_str());

    if (!res) {
        throw sdl_mixer_error();
    }

    return {res, Mix_FreeChunk};
}

wze::font wze::assets::load_font(std::string const& path, uint8_t size) {
    TTF_Font* res;

    res = TTF_OpenFont(path.c_str(), size);

    if (!res) {
        throw sdl_ttf_error();
    }

    return {res, TTF_CloseFont};
}

wze::cursor wze::assets::create_cursor(sys_cursor type) {
    SDL_Cursor* res;

    res = SDL_CreateSystemCursor((SDL_SystemCursor)type);

    if (!res) {
        throw sdl_error();
    }

    return {res, SDL_FreeCursor};
}

wze::cursor wze::assets::create_cursor(image const& img, uint16_t hot_x,
                                       uint16_t hot_y) {
    SDL_Cursor* res;

    res = SDL_CreateColorCursor(img.get(), hot_x, hot_y);

    if (!res) {
        throw sdl_error();
    }

    return {res, SDL_FreeCursor};
}
