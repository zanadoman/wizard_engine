#include "WZE/assets.hpp"
#include "WZE/render.hpp"

wze::image wze::assets::load_image(std::string const& path) {
    SDL_Surface* image;

    image = IMG_Load(path.c_str());
    if (!image) {
        throw std::runtime_error(IMG_GetError());
    }

    return {image, SDL_FreeSurface};
}

wze::image wze::assets::create_image(int32_t width, int32_t height, uint8_t r,
                                     uint8_t g, uint8_t b, uint8_t a) {
    SDL_Surface* image;

    image = SDL_CreateRGBSurfaceWithFormat(0, width, height, 24,
                                           SDL_PIXELFORMAT_RGBA8888);
    if (!image) {
        throw std::runtime_error(SDL_GetError());
    }

    if (SDL_SetSurfaceColorMod(image, r, g, b)) {
        throw std::runtime_error(SDL_GetError());
    }
    if (SDL_SetSurfaceAlphaMod(image, a)) {
        throw std::runtime_error(SDL_GetError());
    }

    return {image, SDL_FreeSurface};
}

wze::image wze::assets::create_image(std::string const& text, font const& font,
                                     font_style style, uint8_t r, uint8_t g,
                                     uint8_t b, uint8_t a) {
    SDL_Surface* image;

    TTF_SetFontStyle(font.get(), style);

    image = TTF_RenderUTF8_Blended(font.get(), text.c_str(), {r, g, b, a});
    if (!image) {
        throw std::runtime_error(TTF_GetError());
    }

    return {image, SDL_FreeSurface};
}

wze::texture wze::assets::load_texture(std::string const& path) {
    SDL_Texture* texture;

    texture = IMG_LoadTexture(render::__renderer(), path.c_str());
    if (!texture) {
        throw std::runtime_error(IMG_GetError());
    }

    return {texture, SDL_DestroyTexture};
}

wze::texture wze::assets::create_texture(image const& img) {
    SDL_Texture* texture;

    texture = SDL_CreateTextureFromSurface(render::__renderer(), img.get());
    if (!texture) {
        throw std::runtime_error(SDL_GetError());
    }

    return {texture, SDL_DestroyTexture};
}

wze::sound wze::assets::load_sound(std::string const& path) {
    Mix_Chunk* sound;

    sound = Mix_LoadWAV(path.c_str());
    if (!sound) {
        throw std::runtime_error(Mix_GetError());
    }

    return {sound, Mix_FreeChunk};
}

wze::font wze::assets::load_font(std::string const& path, uint8_t size) {
    TTF_Font* font;

    font = TTF_OpenFont(path.c_str(), size);
    if (!font) {
        throw std::runtime_error(TTF_GetError());
    }

    return {font, TTF_CloseFont};
}

wze::cursor wze::assets::create_cursor(sys_cursor type) {
    SDL_Cursor* cursor;

    cursor = SDL_CreateSystemCursor((SDL_SystemCursor)type);
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return {cursor, SDL_FreeCursor};
}

wze::cursor wze::assets::create_cursor(image const& img, int32_t hot_x,
                                       int32_t hot_y) {
    SDL_Cursor* cursor;

    cursor = SDL_CreateColorCursor(img.get(), hot_x, hot_y);
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return {cursor, SDL_FreeCursor};
}
