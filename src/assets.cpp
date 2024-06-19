/**
 * zlib License
 *
 * Copyright (C) 2023 Zana Domán
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

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

wze::image wze::assets::create_image(std::string const& text, font const& font,
                                     font_style font_style) {
    SDL_Surface* image;

    if (!font.get()) {
        throw std::invalid_argument("nullptr font");
    }

    TTF_SetFontStyle(font.get(), font_style);

    image =
        TTF_RenderUTF8_Blended(font.get(), text.c_str(), {255, 255, 255, 255});
    if (!image) {
        throw std::runtime_error(TTF_GetError());
    }

    return {image, SDL_FreeSurface};
}

wze::texture wze::assets::create_texture(image const& image) {
    SDL_Texture* texture;

    if (!image.get()) {
        throw std::invalid_argument("nullptr image");
    }

    texture = SDL_CreateTextureFromSurface(render::__renderer(), image.get());
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

wze::cursor wze::assets::create_cursor(system_cursor system_cursor) {
    SDL_Cursor* cursor;

    cursor = SDL_CreateSystemCursor((SDL_SystemCursor)system_cursor);
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return {cursor, SDL_FreeCursor};
}

wze::cursor wze::assets::create_cursor(image const& image, uint16_t hot_x,
                                       uint16_t hot_y) {
    SDL_Cursor* cursor;

    if (!image.get()) {
        throw std::invalid_argument("nullptr image");
    }

    cursor = SDL_CreateColorCursor(image.get(), hot_x, hot_y);
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return {cursor, SDL_FreeCursor};
}
