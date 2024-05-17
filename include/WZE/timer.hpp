#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class timer final {
        private:
        static uint8_t _frametime;
        static uint64_t _lasttime;
        static uint8_t _deltatime;

        public:
        static auto frametime(void) -> uint8_t;
        static void set_frametime(uint8_t frametime);
        static auto deltatime(void) -> uint8_t;
        static void set_deltatime(uint8_t deltatime);
        static auto time(void) -> uint64_t;
        static void __update(void);
    };
} // namespace wze
