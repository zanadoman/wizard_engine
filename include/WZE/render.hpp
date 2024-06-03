#pragma once

#include "common.hpp"     // IWYU pragma: keep
#include "renderable.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static SDL_Renderer* _base;
        static float_t _ox;
        static float_t _oy;
        static std::vector<renderable*> _projqueue;
        static std::vector<renderable*> _origqueue;
        static void _open_frame();
        static bool _invisible(renderable const& item);
        static bool _offscreen(renderable& item);
        static void _render(renderable& item);
        static void _close_frame();

        public:
        static SDL_Renderer* __base();
        static void __init();
        static void __update();
    };
} // namespace wze
