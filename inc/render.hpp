#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private: static void open_frame(void);
        private: static void close_frame(void);

        public: static void update(void);
    };
}
