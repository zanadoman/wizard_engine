#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window   *_base;     // NOLINT
        static uint16_t      _width;    // NOLINT
        static uint16_t      _height;   // NOLINT
        static float         _ratio;    // NOLINT
        static void          resize();

        public:
        static auto base() -> SDL_Window *;
        static auto width() -> uint16_t;
        static auto height() -> uint16_t;
        static auto ratio() -> float;
        static void open(const std::string &title, const std::string &icon_path,
                         float ratio);
        static void update();
    };
} // namespace wze
