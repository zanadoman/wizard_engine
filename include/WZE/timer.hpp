#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class timer final {
        private:
        static uint8_t _frametime; // NOLINT
        static uint64_t _lasttime; // NOLINT
        static uint8_t _deltatime; // NOLINT

        public:
        static auto frametime(void) -> uint8_t;
        static void set_frametime(uint8_t frametime);
        static auto deltatime(void) -> uint8_t;
        static void set_deltatime(uint8_t deltatime);
        static auto time(void) -> uint64_t;
        static void update(void);
    };
} // namespace wze
