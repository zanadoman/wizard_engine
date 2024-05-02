#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_vector.hpp" // IWYU pragma: keep

namespace wze {
    class collider;

    typedef collider collider_t;

    class collider : public vector {
        private: static std::vector<std::vector<collider*>> layers;

        private: float angle;
        private: uint16_t width;
        private: uint16_t height;
        private: uint16_t force;
        private: uint16_t resistance;
        private: uint8_t layer;
        private: point top_left;
        private: point bot_right;

        public: virtual void set_x(const float x) override;
        private: void set_x(const collider *const root, const vector diff,
                            const uint16_t force);

        public: virtual void set_y(const float y) override;
        private: void set_y(const float y, const uint16_t force);

        public: float get_angle() const;
        public: void set_angle(const float angle);

        public: uint16_t get_width() const;
        public: void set_width(const uint16_t width);

        public: uint16_t get_height() const;
        public: void set_height(const uint16_t height);

        public: uint16_t get_force() const;
        public: void set_force(const uint16_t force);

        public: uint16_t get_resistance() const;
        public: void set_resistance(const uint16_t resistance);

        public: uint8_t get_layer() const;
        public: void set_layer(const uint8_t layer);

        protected: collider(const float x, const float y, const float angle,
                            const uint16_t width, const uint16_t height,
                            const uint16_t force, const uint16_t resistance,
                            const uint8_t layer);
        protected: collider(const collider &c);
        public: virtual ~collider();

        private: void update_area();

        private: bool is_colliding(const collider *const c) const;

        public: bool operator == (const collider &c) const;
        public: bool operator != (const collider &c) const;
    };
}
