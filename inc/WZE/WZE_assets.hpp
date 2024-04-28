#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep

namespace wze
{
    class texture {
        private: SDL_Texture *data;

        public: const SDL_Texture* get_data();

        private: texture(std::string path);
        public: static std::shared_ptr<texture> create(std::string path);
        public: ~texture();
    }; typedef std::shared_ptr<texture> texture_t;

    class sound {
        private: Mix_Chunk *data;

        public: const Mix_Chunk* get_data();

        private: sound(std::string path);
        public: static std::shared_ptr<sound> create(std::string path);
        public: ~sound();
    }; typedef std::shared_ptr<sound> sound_t;

    class font {
        private: TTF_Font *data;

        public: const TTF_Font* get_data();

        private: font(std::string path, uint8_t size);
        public: static std::shared_ptr<font> create(std::string path, uint8_t size);
        public: ~font();
    }; typedef std::shared_ptr<font> font_t;
}
