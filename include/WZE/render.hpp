#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static SDL_Renderer *_renderer;
        static void open_frame();
        static void close_frame();

        public:
        static SDL_Renderer *renderer();
        static void init();
        static void update();
    };
} // namespace wze
