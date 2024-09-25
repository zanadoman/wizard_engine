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

// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE_INTERNAL__

#include <wizard_engine/assets.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/renderer.hpp>

void wze::assets::combine_hash(size_t& seed, size_t value) {
    // NOLINTNEXTLINE(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
    seed ^= value + 0x9e3779b9 + (seed << 6) + (seed >> 2);
}

std::shared_ptr<wze::image> wze::assets::load_image(std::string const& path) {
    std::shared_ptr<image> image;

    image = {
        IMG_Load(std::filesystem::relative(_assets + path).string().c_str()),
        SDL_FreeSurface};
    if (!image) {
        throw exception(IMG_GetError());
    }

    return image;
}

std::shared_ptr<wze::image>
wze::assets::create_image(std::string const& text,
                          std::shared_ptr<font> const& font,
                          uint32_t wrap_length) {
    std::shared_ptr<image> image;

    image = {
        TTF_RenderUTF8_Blended_Wrapped(font.get(), text.c_str(),
                                       {std::numeric_limits<uint8_t>::max(),
                                        std::numeric_limits<uint8_t>::max(),
                                        std::numeric_limits<uint8_t>::max(),
                                        std::numeric_limits<uint8_t>::max()},
                                       wrap_length),
        SDL_FreeSurface};
    if (!image) {
        throw exception(TTF_GetError());
    }

    return image;
}

size_t wze::assets::hash_image(std::shared_ptr<image> const& image) {
    size_t seed;
    std::hash<uint8_t> hash;

    if (!image) {
        return hash(0);
    }

    seed = 0;
    std::for_each(
        static_cast<uint8_t*>(image->pixels),
        // NOLINTNEXTLINE(bugprone-implicit-widening-of-multiplication-result,cppcoreguidelines-pro-bounds-pointer-arithmetic)
        static_cast<uint8_t*>(image->pixels) +
            image->w * image->h * image->format->BytesPerPixel,
        [&](uint8_t pixel) -> void {
            combine_hash(seed, hash(pixel));
        });

    return seed;
}

std::shared_ptr<wze::texture>
wze::assets::create_texture(std::shared_ptr<image> const& image) {
    std::shared_ptr<texture> texture;

    texture = {SDL_CreateTextureFromSurface(renderer::base(), image.get()),
               SDL_DestroyTexture};
    if (!texture) {
        throw exception(SDL_GetError());
    }

    return texture;
}

std::shared_ptr<wze::sound> wze::assets::load_sound(std::string const& path) {
    std::shared_ptr<sound> sound;

    sound = {
        Mix_LoadWAV(std::filesystem::relative(_assets + path).string().c_str()),
        Mix_FreeChunk};
    if (!sound) {
        throw exception(Mix_GetError());
    }

    return sound;
}

size_t wze::assets::hash_sound(std::shared_ptr<sound> const& sound) {
    size_t seed;
    std::hash<uint8_t> hash;

    if (!sound) {
        return hash(0);
    }

    seed = 0;
    // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-pointer-arithmetic)
    std::for_each(sound->abuf, sound->abuf + sound->alen,
                  [&](uint8_t sample) -> void {
                      combine_hash(seed, hash(sample));
                  });

    return seed;
}

std::shared_ptr<wze::font> wze::assets::load_font(std::string const& path,
                                                  uint8_t size,
                                                  font_style style) {
    std::shared_ptr<font> font;

    font = {
        TTF_OpenFont(std::filesystem::relative(_assets + path).string().c_str(),
                     size),
        TTF_CloseFont};
    if (!font) {
        throw exception(TTF_GetError());
    }
    TTF_SetFontStyle(font.get(), style);

    return font;
}

std::unique_ptr<wze::cursor, std::function<void(wze::cursor*)>>
wze::assets::create_cursor(system_cursor system_cursor) {
    std::unique_ptr<cursor, std::function<void(cursor*)>> cursor;

    cursor = {SDL_CreateSystemCursor((SDL_SystemCursor)system_cursor),
              SDL_FreeCursor};
    if (!cursor) {
        throw exception(SDL_GetError());
    }

    return cursor;
}

std::unique_ptr<wze::cursor, std::function<void(wze::cursor*)>>
wze::assets::create_cursor(std::shared_ptr<image> const& image, uint16_t hot_x,
                           uint16_t hot_y) {
    std::unique_ptr<cursor, std::function<void(cursor*)>> cursor;

    cursor = {SDL_CreateColorCursor(image.get(), hot_x, hot_y), SDL_FreeCursor};
    if (!cursor) {
        throw exception(SDL_GetError());
    }

    return cursor;
}
