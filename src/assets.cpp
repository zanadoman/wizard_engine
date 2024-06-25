/**
 * zlib License
 *
 * Copyright (C) 2023-2024 Zana Domán
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

std::unique_ptr<wze::image, std::function<void(wze::image*)>>
wze::assets::load_image(std::string const& path) {
    std::unique_ptr<image, std::function<void(image*)>> image;

    image = {IMG_Load(path.c_str()), SDL_FreeSurface};
    if (!image) {
        throw std::runtime_error(IMG_GetError());
    }

    return image;
}

std::unique_ptr<wze::image, std::function<void(wze::image*)>>
wze::assets::create_image(std::string const& text,
                          std::shared_ptr<font> const& font) {
    std::unique_ptr<image, std::function<void(image*)>> image;

    if (!font) {
        return nullptr;
    }

    image = {
        TTF_RenderUTF8_Blended(font.get(), text.c_str(), {255, 255, 255, 255}),
        SDL_FreeSurface};
    if (!image) {
        throw std::runtime_error(TTF_GetError());
    }

    return image;
}

std::unique_ptr<wze::texture, std::function<void(wze::texture*)>>
wze::assets::create_texture(std::shared_ptr<image> const& image) {
    std::unique_ptr<texture, std::function<void(texture*)>> texture;

    if (!image) {
        return nullptr;
    }

    texture = {SDL_CreateTextureFromSurface(render::__renderer(), image.get()),
               SDL_DestroyTexture};
    if (!texture) {
        throw std::runtime_error(SDL_GetError());
    }

    return texture;
}

std::unique_ptr<wze::sound, std::function<void(wze::sound*)>>
wze::assets::load_sound(std::string const& path) {
    std::unique_ptr<sound, std::function<void(sound*)>> sound;

    sound = {Mix_LoadWAV(path.c_str()), Mix_FreeChunk};
    if (!sound) {
        throw std::runtime_error(Mix_GetError());
    }

    return sound;
}

std::unique_ptr<wze::font, std::function<void(wze::font*)>>
wze::assets::load_font(std::string const& path, uint8_t size,
                       font_style font_style) {
    std::unique_ptr<font, std::function<void(font*)>> font;

    font = {TTF_OpenFont(path.c_str(), size), TTF_CloseFont};
    if (!font) {
        throw std::runtime_error(TTF_GetError());
    }

    TTF_SetFontStyle(font.get(), font_style);
    return font;
}

std::unique_ptr<wze::cursor, std::function<void(wze::cursor*)>>
wze::assets::create_cursor(system_cursor system_cursor) {
    std::unique_ptr<cursor, std::function<void(cursor*)>> cursor;

    cursor = {SDL_CreateSystemCursor((SDL_SystemCursor)system_cursor),
              SDL_FreeCursor};
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return cursor;
}

std::unique_ptr<wze::cursor, std::function<void(wze::cursor*)>>
wze::assets::create_cursor(std::shared_ptr<image> const& image, uint16_t hot_x,
                           uint16_t hot_y) {
    std::unique_ptr<cursor, std::function<void(cursor*)>> cursor;

    if (!image) {
        return nullptr;
    }

    cursor = {SDL_CreateColorCursor(image.get(), hot_x, hot_y), SDL_FreeCursor};
    if (!cursor) {
        throw std::runtime_error(SDL_GetError());
    }

    return cursor;
}
