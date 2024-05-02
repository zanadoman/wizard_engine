#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_except.hpp" // IWYU pragma: keep

namespace wze {
    typedef std::shared_ptr<SDL_Texture> texture;
    typedef std::shared_ptr<Mix_Chunk> sound;
    typedef std::shared_ptr<TTF_Font> font;

    texture load_texture(const std::string path);
    sound load_sound(const std::string sound);
    font load_font(const std::string path, uint8_t size);
}
