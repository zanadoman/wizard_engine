#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
    enum flip { FLIP_NONE, FLIP_HORIZONTAL, FLIP_VERTICAL, FLIP_BOTH };

    class renderable {
        private:
        static std::deque<const renderable *> _instances;

        protected:
        renderable(void);

        public:
        const std::deque<const renderable *> &__instances(void);
        virtual double x(void) = 0;
        virtual double y(void) = 0;
        virtual double z(void) = 0;
        virtual double angle(void) = 0;
        virtual double width(void) = 0;
        virtual double height(void) = 0;
        virtual uint8_t color_r(void) = 0;
        virtual uint8_t color_g(void) = 0;
        virtual uint8_t color_b(void) = 0;
        virtual const texture &texture(void) = 0;
        virtual flip flip(void) = 0;
        virtual bool visible(void) = 0;
        virtual ~renderable(void);
    };
} // namespace wze
