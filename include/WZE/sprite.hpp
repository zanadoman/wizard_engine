#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
    enum flip {
        FLIP_NONE,
        FLIP_HORIZONTAL,
        FLIP_VERTICAL,
        FLIP_BOTH
    };

    class sprite final {
        private:
        static std::deque<const sprite *> _sprites;
        double _x;
        double _y;
        double _z;
        double _angle;
        double _width;
        double _height;
        uint8_t _color_r;
        uint8_t _color_g;
        uint8_t _color_b;
        texture _data;
        flip _flip;
        bool _visible;
        std::array<double, 8> _area;

        public:
        static auto __sprites() -> const std::deque<const sprite *>;
        auto x() const -> double;
        void set_x(double x);
        auto y() const -> double;
        void set_y(double y);
        auto z() const -> double;
        void set_z(double z);
        auto angle() const -> double;
        void set_angle(double angle);
        auto width() const -> double;
        void set_width(double width);
        auto height() const -> double;
        void set_height(double height);
        auto color_r() const -> uint8_t;
        void set_color_r(uint8_t color_r);
        auto color_g() const -> uint8_t;
        void set_color_g(uint8_t color_g);
        auto color_b() const -> uint8_t;
        void set_color_b(uint8_t color_b);
        auto visible() const -> bool;
        void set_visibility(bool visibility);
        auto data() const -> const texture &;
        void set_data(const texture &data);
        auto flip() const -> flip;
        void set_flip(enum flip flip);
        auto __area(void) const -> const std::array<double, 8> &;
        sprite();
        ~sprite();
    };
} // namespace wze
