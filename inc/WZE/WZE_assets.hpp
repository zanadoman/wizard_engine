#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_except.hpp" // IWYU pragma: keep

namespace wze {
    class texture;
    class sound;
    class font;

    typedef std::shared_ptr<texture> texture_t;
    typedef std::shared_ptr<sound> sound_t;
    typedef std::shared_ptr<font> font_t;

    class texture {
        private: SDL_Texture *data;

        public: SDL_Texture const* get_data() const;
        
        private: texture(const std::string path); 
        public: static texture_t create(const std::string path); 
        public: ~texture();
    };

    class sound {
        private: Mix_Chunk *data;

        public: Mix_Chunk const* get_data() const; 

        private: sound(const std::string path);
        public: static sound_t create(const std::string path);
        public: ~sound();
    };

    class font {
        private: TTF_Font *data;

        public: TTF_Font const* get_data() const;

        private: font(const std::string path, const uint8_t size); 
        public: static font_t create(const std::string path, const uint8_t size); 
        public: ~font();
    };
}
