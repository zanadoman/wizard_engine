#pragma once

#include <SDL2/SDL.h>
#include <SDL2/SDL_mixer.h>
#include <SDL2/SDL_ttf.h>
#include <cstdint>
#include <memory>
#include <string>

namespace wze {
    using image = std::shared_ptr<SDL_Surface>;
    using texture = std::shared_ptr<SDL_Texture>;
    using sound = std::shared_ptr<Mix_Chunk>;
    using font = std::shared_ptr<TTF_Font>;

    class assets final {
        public:
        static image load_image(const std::string &path);
        static texture load_texture(const std::string &path);
        static sound load_sound(const std::string &path);
        static font load_font(const std::string &path, uint8_t size);
    };
} // namespace wze
