#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window *_base;
        static uint16_t _width;
        static uint16_t _height;
        static std::string _title;
        static image_t _icon;

        public:
        static SDL_Window *__base();
        static uint16_t width();
        static uint16_t height();
        static const std::string &title();
        static void set_title(const std::string &title);
        static const image_t &icon();
        static void set_icon(const image_t &icon);
        static bool visible();
        static bool focused();
        static void __init(uint16_t width, uint16_t height);
    };
} // namespace wze
