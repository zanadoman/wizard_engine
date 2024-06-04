#pragma once

#include "common.hpp"     // IWYU pragma: keep
#include "renderable.hpp" // IWYU pragma: keep

namespace wze {
    class render final {
        private:
        static SDL_Renderer* _renderer;
        static float_t _origo_x;
        static float_t _origo_y;
        static std::vector<renderable const*> _projectables;
        static std::vector<renderable const*> _inprojectables;
        static void _open_frame();
        static bool _invisible(renderable const& instance);
        static void _transform(renderable& instance);
        static bool _offscreen(renderable const& instance);
        static void _render(renderable const& instance);
        static void _close_frame();

        public:
        static SDL_Renderer* __renderer();
        static float_t origo_x();
        static void set_origo_x(float_t origo_x);
        static float_t origo_y();
        static void set_origo_y(float_t origo_y);
        static void __init();
        static void __update();
        static std::pair<float_t, float_t> __itransform(float_t x, float_t y);
    };
} // namespace wze
