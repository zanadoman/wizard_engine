#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window   *_base;
        static SDL_Renderer *_renderer;
        static uint16_t      _width;
        static uint16_t      _height;

        public:
        static auto base() -> SDL_Window *;
        static auto renderer() -> SDL_Renderer *;
        static auto width() -> uint16_t;
        static auto height() -> uint16_t;
        static void open(const std::string &title, const std::string &icon_path,
                         uint16_t width, uint16_t height);
    };
} // namespace wze
