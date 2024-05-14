#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "assets.hpp" // IWYU pragma: keep

namespace wze {
    class sprite final {
        private:
        static std::vector<const sprite*> _sprites;
        float                             _x;
        float                             _y;
        float                             _z;
        float                             _angle;
        float                             _width;
        float                             _height;
        uint8_t                           _priority;
        texture                           _data;
        void update();

        public: 
        static auto sprites() -> const std::vector<const sprite*> &;
        auto x() const -> float;
        void set_x(float x);
        auto y() const -> float;
        void set_y(float y);
        auto z() const -> float;
        void set_z(float z);
        auto angle() const -> float;
        void set_angle(float angle);
        auto width() const -> float;
        void set_width(float width);
        auto height() const -> float;
        void set_height(float height);
        auto priority() const -> uint8_t;
        void set_priority(uint8_t priority);
        auto data() const -> const texture &;
        void set_data(const texture &data);
        sprite();
        ~sprite();
    };
}
