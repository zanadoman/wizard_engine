#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class engine final {
        private:
        static std::vector<SDL_Event> _events;
        engine();

        public:
        static std::vector<SDL_Event> const& __events();
        static void init(uint16_t width, uint16_t height);
        static bool update();
    };
} // namespace wze
