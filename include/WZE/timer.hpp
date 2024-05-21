#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class timer final {
        private:
        static uint8_t _frame;
        static uint64_t _last;
        static uint8_t _delta;

        public:
        static auto frame(void) -> uint8_t;
        static void set_frame(uint8_t ms);
        static auto delta(void) -> uint8_t;
        static void set_delta(uint8_t ms);
        static auto now(void) -> uint64_t;
        static void __update(void);
    };
} // namespace wze
