#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "input.hpp"  // IWYU pragma: keep
#include "render.hpp" // IWYU pragma: keep
#include "timer.hpp"  // IWYU pragma: keep

namespace wze {
    class engine final {
        private:
        static std::deque<SDL_Event> _events;

        public:
        static const std::deque<SDL_Event> &events();
        static void init();
        static bool update();
    };
} // namespace wze
