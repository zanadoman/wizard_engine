#pragma once

#include "common.hpp"     // IWYU pragma: keep
#include "renderable.hpp" // IWYU pragma: keep

namespace wze {
    class camera final {
        private:
        static float_t _x;
        static float_t _y;
        static float_t _z;
        static float_t _angle;
        static float_t _focal;
        static std::array<float_t, 6> _transmat;

        public:
        float_t x();
        void set_x(float_t x);
        float_t y();
        void set_y(float_t y);
        float_t z();
        void set_z(float_t z);
        float_t angle();
        void set_angle(float_t angle);
        float_t focal();
        void set_focal(float_t focal);
        void project_renderable(renderable const& src, SDL_FRect& res);
        void unproject_cursor(float_t& x, float_t& y, float_t z);
        void __init();
    };
} // namespace wze
