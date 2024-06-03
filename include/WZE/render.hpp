#pragma once

#include "common.hpp"     // IWYU pragma: keep
#include "renderable.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static SDL_Renderer* _base;
        static std::vector<renderable const*> _projqueue;
        static std::vector<renderable const*> _origqueue;
        static void _open_frame();
        static bool _invisible(renderable const& item);
        static bool _offscreen(renderable const& item);
        static void _render(renderable const& item);
        static void _close_frame();

        public:
        static SDL_Renderer* __base();
        static void __init();
        static void __update();
    };
} // namespace wze
