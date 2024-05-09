#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
enum style
{
    STYLE_NORMAL        = TTF_STYLE_BOLD,
    STYLE_BOLD          = TTF_STYLE_BOLD,
    STYLE_ITALIC        = TTF_STYLE_ITALIC,
    STYLE_UNDERLINE     = TTF_STYLE_UNDERLINE,
    STYLE_STRIKETHROUGH = TTF_STYLE_STRIKETHROUGH
};

typedef std::shared_ptr<SDL_Texture> texture;
typedef std::shared_ptr<Mix_Chunk>   sound;
typedef std::shared_ptr<TTF_Font>    font;
typedef std::shared_ptr<SDL_Surface> text;

texture
load_texture(const std::string path);
sound
load_sound(const std::string sound);
font
load_font(const std::string path, uint8_t size);
text
render_text(const std::string string, font font, style style);
} // namespace wze
