/**
 * This file is part of Wizard Engine
 * (https://github.com/zanadoman/Wizard-Engine). Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Wizard Engine. If not, see
 * https://www.gnu.org/licenses/licenses.html.
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

wze::image wze::assets::create_image(int32_t width, int32_t height) {
    SDL_Surface* image;

    image = SDL_CreateRGBSurfaceWithFormat(0, width, height, 24,
                                           SDL_PIXELFORMAT_RGBA8888);
    if (!image) {
        throw std::runtime_error(SDL_GetError());
    }

    return {image, SDL_FreeSurface};
}

wze::image wze::assets::create_image(std::string const& text, font const& font,
                                     font_style style) {
    SDL_Surface* image;

    TTF_SetFontStyle(font.get(), style);

    image =
        TTF_RenderUTF8_Blended(font.get(), text.c_str(), {255, 255, 255, 255});
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

wze::texture wze::assets::create_texture(image const& image) {
    SDL_Texture* texture;

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

wze::cursor wze::assets::create_cursor(image const& image, int32_t hot_x,
                                       int32_t hot_y) {
    SDL_Cursor* cursor;

    cursor = SDL_CreateColorCursor(image.get(), hot_x, hot_y);
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return {cursor, SDL_FreeCursor};
}
