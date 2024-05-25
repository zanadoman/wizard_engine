#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window *_base;
        static uint16_t _width;
        static uint16_t _height;
        static std::string _title;
        static std::string _icon;

        public:
        static auto base(void) -> SDL_Window *;
        static auto width(void) -> int32_t;
        static auto height(void) -> int32_t;
        static auto view(void) -> const std::array<int32_t, 4> &;
        static auto title(void) -> const std::string &;
        static void set_title(const std::string &title);
        static auto icon(void) -> const std::string &;
        static void set_icon(const std::string &icon);
        static void __init(uint16_t width, uint16_t height);
    };
} // namespace wze
