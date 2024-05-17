#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
    class camera final {
        private:
        static float _x;
        static float _y;
        static float _z;
        static float _angle;
        static float _fov;
        static float _aspect;
        static void _update(void);

        public:
        static auto x(void) -> float;
        static void set_x(float x);
        static auto y(void) -> float;
        static void set_y(float y);
        static auto z(void) -> float;
        static void set_z(float z);
        static auto angle(void) -> float;
        static void set_angle(float angle);
        static auto fov(void) -> float;
        static void set_fov(float fov);
        static void __init(float aspect);
    };
} // namespace wze
