#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static SDL_Renderer *_base;
        static constexpr SDL_Texture *_starg = nullptr;
        static SDL_Rect _sview;
        static SDL_Texture *_dtarg;
        static SDL_Rect _dview;
        static void _clear_targ();
        static void _set_dtarg();
        static void _set_starg();
        static void _put_dtarg();
        static void _put_starg();

        public:
        static SDL_Renderer *__base();
        static void __init();
        static void __update();
    };
} // namespace wze
