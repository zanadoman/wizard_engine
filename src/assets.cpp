/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

#define __WIZARD_ENGINE_INTERNAL

#include <wizard_engine/assets.hpp>
#include <wizard_engine/render.hpp>

std::shared_ptr<wze::image> wze::assets::load_image(std::string const& path) {
    std::shared_ptr<image> image;

    if (!(image = {IMG_Load(path.c_str()), SDL_FreeSurface})) {
        throw std::runtime_error(IMG_GetError());
    }

    return image;
}

std::shared_ptr<wze::image>
wze::assets::create_image(std::string const& text,
                          std::shared_ptr<font> const& font) {
    std::shared_ptr<image> image;

    if (!font) {
        return nullptr;
    }

    if (!(image = {
              TTF_RenderUTF8_Blended(font.get(), text.c_str(),
                                     {std::numeric_limits<uint8_t>::max(),
                                      std::numeric_limits<uint8_t>::max(),
                                      std::numeric_limits<uint8_t>::max(),
                                      std::numeric_limits<uint8_t>::max()}),
              SDL_FreeSurface})) {
        throw std::runtime_error(TTF_GetError());
    }

    return image;
}

std::shared_ptr<wze::texture>
wze::assets::create_texture(std::shared_ptr<image> const& image) {
    std::shared_ptr<texture> texture;

    if (!image) {
        return nullptr;
    }

    if (!(texture = {
              SDL_CreateTextureFromSurface(renderer::base(), image.get()),
              SDL_DestroyTexture})) {
        throw std::runtime_error(SDL_GetError());
    }

    return texture;
}

std::shared_ptr<wze::sound> wze::assets::load_sound(std::string const& path) {
    std::shared_ptr<sound> sound;

    if (!(sound = {Mix_LoadWAV(path.c_str()), Mix_FreeChunk})) {
        throw std::runtime_error(Mix_GetError());
    }

    return sound;
}

std::shared_ptr<wze::font> wze::assets::load_font(std::string const& path,
                                                  uint8_t size,
                                                  font_style style) {
    std::shared_ptr<font> font;

    if (!(font = {TTF_OpenFont(path.c_str(), size), TTF_CloseFont})) {
        throw std::runtime_error(TTF_GetError());
    }
    TTF_SetFontStyle(font.get(), style);

    return font;
}

std::shared_ptr<wze::cursor>
wze::assets::create_cursor(system_cursor system_cursor) {
    std::shared_ptr<cursor> cursor;

    if (!(cursor = {SDL_CreateSystemCursor((SDL_SystemCursor)system_cursor),
                    SDL_FreeCursor})) {
        throw std::runtime_error(SDL_GetError());
    }

    return cursor;
}

std::shared_ptr<wze::cursor>
wze::assets::create_cursor(std::shared_ptr<image> const& image, uint16_t hot_x,
                           uint16_t hot_y) {
    std::shared_ptr<cursor> cursor;

    if (!image) {
        return nullptr;
    }

    if (!(cursor = {SDL_CreateColorCursor(image.get(), hot_x, hot_y),
                    SDL_FreeCursor})) {
        throw std::runtime_error(SDL_GetError());
    }

    return cursor;
}
