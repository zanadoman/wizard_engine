#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "engine.hpp" // IWYU pragma: keep

namespace wze {
    class window final {
        private:
        static SDL_Window *_base;          // NOLINT
        static int32_t     _base_width;    // NOLINT
        static int32_t     _base_height;   // NOLINT
        static double      _base_ratio;    // NOLINT
        static int32_t     _render_width;  // NOLINT
        static int32_t     _render_height; // NOLINT
        static double      _render_ratio;  // NOLINT
        static void        resize();

        public:
        static auto base() -> SDL_Window *;
        static auto base_width() -> int32_t;
        static auto base_height() -> int32_t;
        static auto base_ratio() -> double;
        static auto render_width() -> int32_t;
        static auto render_height() -> int32_t;
        static auto render_ratio() -> double;
        static void open(const std::string &title, const std::string &icon_path,
                         double render_ratio);
        static void update();
    };
} // namespace wze
