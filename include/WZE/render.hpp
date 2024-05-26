#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static SDL_Renderer *_renderer;
        static void open_frame();
        static void close_frame();

        public:
        static SDL_Renderer *__renderer();
        static void __init();
        static void __update();
    };
} // namespace wze
