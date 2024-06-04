#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
    enum flip {
        FLIP_NONE = SDL_FLIP_NONE,
        FLIP_HORIZONTAL = SDL_FLIP_HORIZONTAL,
        FLIP_VERTICAL = SDL_FLIP_VERTICAL
    };

    class renderable {
        private:
        static std::deque<renderable*> _instances;
        SDL_FRect _render_area;
        float _render_angle;

        public:
        static std::deque<renderable*> const& __instances();
        SDL_FRect const& __render_area() const;
        void __set_render_area(SDL_FRect const& render_area);
        float_t __render_angle() const;
        void __set_render_angle(float_t target_angle);
        virtual float_t x() const = 0;
        virtual float_t y() const = 0;
        virtual float_t z() const = 0;
        virtual float_t width() const = 0;
        virtual float_t height() const = 0;
        virtual float_t angle() const = 0;
        virtual float_t flip() const = 0;
        virtual uint8_t color_r() const = 0;
        virtual uint8_t color_g() const = 0;
        virtual uint8_t color_b() const = 0;
        virtual uint8_t color_a() const = 0;
        virtual bool visible() const = 0;
        virtual wze::texture const& texture() const = 0;
        virtual uint8_t priority() const = 0;
        virtual bool projectable() const = 0;
        renderable();
        virtual ~renderable();
    };
} // namespace wze
