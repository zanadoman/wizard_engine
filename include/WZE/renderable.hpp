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
        static std::deque<renderable*> _insts;
        SDL_FRect _rect;
        float _recta;

        public:
        static std::deque<renderable*> const& __insts();
        SDL_FRect& __rect();
        float_t __recta() const;
        void __set_recta(float_t recta);
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
