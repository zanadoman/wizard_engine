#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class sprite final {
        private:
        static std::vector<const sprite *> _sprites;
        double                             _x;
        double                             _y;
        double                             _z;
        double                             _angle;
        double                             _width;
        double                             _height;
        uint8_t                            _priority;
        uint8_t                            _color_r;
        uint8_t                            _color_g;
        uint8_t                            _color_b;
        uint8_t                            _color_a;
        texture                            _data;
        bool                               _visible;
        void                               update();

        public:
        static auto sprites() -> const std::vector<const sprite *> &;
        auto        x() const -> double;
        void        set_x(double x);
        auto        y() const -> double;
        void        set_y(double y);
        auto        z() const -> double;
        void        set_z(double z);
        auto        angle() const -> double;
        void        set_angle(double angle);
        auto        width() const -> double;
        void        set_width(double width);
        auto        height() const -> double;
        void        set_height(double height);
        auto        priority() const -> uint8_t;
        void        set_priority(uint8_t priority);
        auto        color_r() const -> uint8_t;
        void        set_color_r(uint8_t color_r);
        auto        color_g() const -> uint8_t;
        void        set_color_g(uint8_t color_g);
        auto        color_b() const -> uint8_t;
        void        set_color_b(uint8_t color_b);
        auto        color_a() const -> uint8_t;
        void        set_color_a(uint8_t color_a);
        auto        visible() const -> bool;
        void        set_visibility(bool visibility);
        auto        data() const -> const texture &;
        void        set_data(const texture &data);
        sprite();
        ~sprite();
    };
} // namespace wze
