#pragma once

#ifdef __linux__
    #include <SDL2/SDL.h>
    #include <SDL2/SDL_image.h>
    #include <SDL2/SDL_mixer.h>
    #include <SDL2/SDL_ttf.h>
#endif

#ifdef _WIN64
    #include <SDL2/SDL.h>
    #include "../SDL2/SDL_image.h"
    #include "../SDL2/SDL_mixer.h"
    #include "../SDL2/SDL_ttf.h"
#endif

#include <cstdint>
#include <string>
#include <memory>
#include <stdexcept>

namespace wze
{
    class Texture
    {
        private: SDL_Texture *data;

        public:  Texture(std::string path);
        public: ~Texture();

        public: bool operator == (Texture &other);

        public: SDL_Texture *GetData();
    };

    class Sound
    {
        private: Mix_Chunk *data;

        public:  Sound(std::string path);
        public: ~Sound();

        public: bool operator == (Sound &other);

        public: Mix_Chunk *GetData();
    };

    class Font
    {
        private: TTF_Font *data;

        public:  Font(std::string path, uint8_t size);
        public: ~Font();

        public: bool operator == (Font &other);

        public: TTF_Font *GetData();
    };
}
