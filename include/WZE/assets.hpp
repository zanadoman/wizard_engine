#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

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

    auto load_texture(const std::string &path) -> texture;
    auto load_sound(const std::string &path) -> sound;
    auto load_font(const std::string &path, uint8_t size) -> font;
    auto render_text(const std::string &string, const font &font, style style)
        -> std::tuple<texture, std::string>;

    class gl_texture final {
        private:
        GLuint _id;

        public:
        auto id() -> GLuint;
        static auto load_texture(const std::string &path)
            -> std::shared_ptr<gl_texture>;
        ~gl_texture();
    };
} // namespace wze
