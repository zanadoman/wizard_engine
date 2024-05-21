#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class timer final {
        private:
        static uint8_t _frame;
        static uint64_t _last;
        static uint8_t _delta;

        public:
        static uint8_t frame();
        static void set_frame(uint8_t ms);
        static uint8_t delta();
        static void set_delta(uint8_t ms);
        static uint64_t now();
        static void __update();
    };
} // namespace wze
