#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
enum style {
    STYLE_NORMAL        = TTF_STYLE_BOLD,
    STYLE_BOLD          = TTF_STYLE_BOLD,
    STYLE_ITALIC        = TTF_STYLE_ITALIC,
    STYLE_UNDERLINE     = TTF_STYLE_UNDERLINE,
    STYLE_STRIKETHROUGH = TTF_STYLE_STRIKETHROUGH
};

using texture = std::shared_ptr<SDL_Texture>;
using sound   = std::shared_ptr<Mix_Chunk>;
using font    = std::shared_ptr<TTF_Font>;
using text    = std::shared_ptr<SDL_Surface>;

auto load_texture(const std::string &path) -> wze::texture;
auto load_sound(const std::string &path) -> wze::sound;
auto load_font(const std::string &path, uint8_t size) -> wze::font;
auto render_text(const std::string &string, const font &font, style style)
    -> wze::text;
} // namespace wze
