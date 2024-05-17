#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window *_base;
        static int32_t _width;
        static int32_t _height;
        static std::array<int32_t, 4> _viewport;
        static float _aspect_ratio;
        static void _resize(void);
        static void _init_base(const std::string &title);
        static void _init_render(void);

        public:
        static auto base(void) -> SDL_Window *;
        static auto width(void) -> int32_t;
        static auto height(void) -> int32_t;
        static auto viewport(void) -> const std::array<int32_t, 4> &;
        static void set_icon(const std::string &path);
        static void __init(const std::string &title, float aspect_ratio);
        static void __update();
    };
} // namespace wze
