#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    using image = std::shared_ptr<SDL_Surface>;
    using texture = std::shared_ptr<SDL_Texture>;
    using sound = std::shared_ptr<Mix_Chunk>;
    using font = std::shared_ptr<TTF_Font>;
    using cursor = std::shared_ptr<SDL_Cursor>;

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
        static image load_image(std::string const& path);
        static image create_image(int32_t width, int32_t height,
                                  uint8_t r = 255, uint8_t g = 255,
                                  uint8_t b = 255, uint8_t a = 255);
        static image create_image(std::string const& text, font const& font,
                                  font_style style = FONT_NORMAL,
                                  uint8_t r = 255, uint8_t g = 255,
                                  uint8_t b = 255, uint8_t a = 255);
        static texture load_texture(std::string const& path);
        static texture create_texture(image const& img);
        static sound load_sound(std::string const& path);
        static font load_font(std::string const& path, uint8_t size);
        static cursor create_cursor(sys_cursor type = CURSOR_ARROW);
        static cursor create_cursor(image const& img, int32_t hot_x = 0,
                                    int32_t hot_y = 0);
    };
} // namespace wze
