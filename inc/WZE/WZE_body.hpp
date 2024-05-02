#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_math.hpp" // IWYU pragma: keep

namespace wze {
    class body final {
        private: static std::vector<std::vector<body*>> bodies;

        private: float    x;
        private: float    y;
        private: float    angle;
        private: uint16_t width;
        private: uint16_t height;
        private: uint16_t force;
        private: uint16_t mass;
        private: uint8_t  layer;
        private: float    cur_tl_x;
        private: float    cur_tl_y;
        private: float    cur_br_x;
        private: float    cur_br_y;
        private: float    prv_tl_x;
        private: float    prv_tl_y;
        private: float    prv_br_x;
        private: float    prv_br_y;

        public: float    get_x() const;
        public: void     set_x(float x);

        public: float    get_y() const;
        public: void     set_y(float y);

        public: float    get_angle() const;
        public: void     set_angle(float angle);

        public: uint16_t get_width() const;
        public: void     set_width(uint16_t width);

        public: uint16_t get_height() const;
        public: void     set_height(uint16_t height);

        public: uint16_t get_force() const;
        public: void     set_force(uint16_t force);

        public: uint16_t get_mass() const;
        public: void     set_mass(uint16_t mass);

        public: uint8_t  get_layer() const;
        public: void     set_layer(uint8_t layer);

        public: body(float x, float y, float angle, uint16_t width, uint16_t height,
                     uint16_t force, uint16_t mass, uint8_t layer);

        public: ~body();

        private: void update_area();
        private: void update_position();
    };
}
