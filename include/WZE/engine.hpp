#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class engine final {
        private:
        static std::deque<SDL_Event> _events;

        public:
        static const std::deque<SDL_Event> &__events();
        static void init(uint16_t width, uint16_t height);
        static bool update();
    };
} // namespace wze
