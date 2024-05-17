#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    using texture = std::shared_ptr<uint32_t>;
    using sound = std::shared_ptr<Mix_Chunk>;
    using font = std::shared_ptr<TTF_Font>;

    enum styles {
        STYLE_NORMAL = TTF_STYLE_BOLD,
        STYLE_BOLD = TTF_STYLE_BOLD,
        STYLE_ITALIC = TTF_STYLE_ITALIC,
        STYLE_UNDERLINE = TTF_STYLE_UNDERLINE,
        STYLE_STRIKETHROUGH = TTF_STYLE_STRIKETHROUGH
    };

    class assets final {
        private:
        static auto _new_texture(SDL_Surface *surface) -> texture;
        static void _delete_texture(uint32_t *id);

        public:
        static auto load_texture(const std::string &path) -> texture;
        static auto load_texture(const std::string &string, const font &font,
                                 styles style) -> texture;
        static auto load_sound(const std::string &path) -> sound;
        static auto load_font(const std::string &path, uint8_t size) -> font;
    };
} // namespace wze
