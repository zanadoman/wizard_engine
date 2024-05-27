#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    using image_t = std::shared_ptr<SDL_Surface>;
    using texture_t = std::shared_ptr<SDL_Texture>;
    using sound_t = std::shared_ptr<Mix_Chunk>;
    using font_t = std::shared_ptr<TTF_Font>;
    using cursor_t = std::shared_ptr<SDL_Cursor>;

    enum font_style {
        FONT_NORMAL = TTF_STYLE_NORMAL,
        FONT_BOLD = TTF_STYLE_BOLD,
        FONT_ITALIC = TTF_STYLE_ITALIC,
        FONT_UNDERLINE = TTF_STYLE_UNDERLINE,
        FONT_STRIKETHROUGH = TTF_STYLE_STRIKETHROUGH
    };

    enum sys_cursor {
        CURSOR_ARROW = SDL_SYSTEM_CURSOR_ARROW,
        CURSOR_IBEAM = SDL_SYSTEM_CURSOR_IBEAM,
        CURSOR_WAIT = SDL_SYSTEM_CURSOR_WAIT,
        CURSOR_CROSSHAIR = SDL_SYSTEM_CURSOR_CROSSHAIR,
        CURSOR_WAITARROW = SDL_SYSTEM_CURSOR_WAITARROW,
        CURSOR_SIZENWSE = SDL_SYSTEM_CURSOR_SIZENWSE,
        CURSOR_SIZENESW = SDL_SYSTEM_CURSOR_SIZENESW,
        CURSOR_SIZEWE = SDL_SYSTEM_CURSOR_SIZEWE,
        CURSOR_SIZENS = SDL_SYSTEM_CURSOR_SIZENS,
        CURSOR_SIZEALL = SDL_SYSTEM_CURSOR_SIZEALL,
        CURSOR_NO = SDL_SYSTEM_CURSOR_NO,
        CURSOR_HAND = SDL_SYSTEM_CURSOR_HAND,
        CURSOR_COUNT = SDL_NUM_SYSTEM_CURSORS
    };

    class assets final {
        public:
        static image_t load_image(const std::string &path);
        static image_t new_image(const std::string &text, const font_t &font);
        static texture_t load_texture(const std::string &path);
        static texture_t new_texture(const image_t &img);
        static sound_t load_sound(const std::string &path);
        static font_t load_font(const std::string &path, uint8_t size);
        static cursor_t new_cursor(const image_t &img, uint16_t hot_x,
                                   uint16_t hot_y);
        static cursor_t new_cursor(sys_cursor type);
    };
} // namespace wze
