#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_except.hpp" // IWYU pragma: keep

namespace wze
{
    class texture
    {
        private: SDL_Texture *data;

        public: SDL_Texture const*
                get_data() const;
        
        private: texture(const std::string path); 

        public: static std::shared_ptr<texture>
                create(const std::string path); 

        public: ~texture();
    };

    typedef std::shared_ptr<texture> texture_t;

    class sound
    {
        private: Mix_Chunk *data;

        public: Mix_Chunk const*
                get_data() const; 

        private: sound(const std::string path);

        public: static std::shared_ptr<sound>
                create(const std::string path);

        public: ~sound();
    };

    typedef std::shared_ptr<sound> sound_t;

    class font {
        private: TTF_Font *data;

        public: TTF_Font const* 
                get_data() const;

        private: font(const std::string path,
                      const uint8_t size); 

        public: static std::shared_ptr<font>
                create(const std::string path,
                       const uint8_t size); 

        public: ~font();
    };

    typedef std::shared_ptr<font> font_t;
}
