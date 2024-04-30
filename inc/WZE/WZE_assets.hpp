#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_except.hpp" // IWYU pragma: keep

namespace wze {
    class _texture {
        private: SDL_Texture *data;

        public: inline const
        SDL_Texture* get_data() const {
            return this->data;
        }
        
        private: inline
        _texture(const std::string path) {
            if ((this->data = IMG_LoadTexture(nullptr, path.c_str())) == nullptr) {
                throw wze_error(SDL_GetError()); 
            }
        }

        public: static inline
        std::shared_ptr<_texture> load(const std::string path) {
            return std::shared_ptr<_texture>(new _texture(path));
        }

        public: inline
        ~_texture() {
            SDL_DestroyTexture(this->data);
        }
    }; typedef std::shared_ptr<_texture> texture;

    class _sound {
        private: Mix_Chunk *data;

        public: inline const
        Mix_Chunk* get_data() const {
            return this->data;
        }

        private: inline
        _sound(const std::string path) {
            if ((this->data = Mix_LoadWAV(path.c_str())) == nullptr) {
                throw wze_error(Mix_GetError());
            }
        }

        public: static inline
        std::shared_ptr<_sound> load(const std::string path) {
            return std::shared_ptr<_sound>(new _sound(path));
        }

        public: inline
        ~_sound() {
            Mix_FreeChunk(this->data);
        }
    }; typedef std::shared_ptr<_sound> sound;

    class _font {
        private: TTF_Font *data;

        public: inline const
        TTF_Font* get_data() const {
            return this->data;
        }

        private: inline 
        _font(const std::string path, const uint8_t size) {
            if ((this->data = TTF_OpenFont(path.c_str(), size)) == nullptr) {
                throw wze_error(TTF_GetError());
            }
        }

        public: static inline
        std::shared_ptr<_font> load(const std::string path, const uint8_t size) {
            return std::shared_ptr<_font>(new _font(path, size));
        }

        public: inline
        ~_font() {
            TTF_CloseFont(this->data);
        }
    }; typedef std::shared_ptr<_font> font;
}
