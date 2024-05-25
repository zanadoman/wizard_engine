#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window *_base;
        static uint16_t _width;
        static uint16_t _height;
        static image _icon;

        public:
        static SDL_Window *base();
        static int32_t width();
        static int32_t height();
        static std::string title();
        static void set_title(const std::string &title);
        static const image &icon();
        static void set_icon(const image &icon);
        static void __init(uint16_t width, uint16_t height);
    };
} // namespace wze
