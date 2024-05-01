#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_vector.hpp" // IWYU pragma: keep

namespace wze
{
    class collider : public vector
    {
        private: static std::vector<std::vector<collider*>> layers;

        private: float angle;
        private: uint16_t width;
        private: uint16_t height;
        private: uint16_t force;
        private: uint16_t resistance;
        private: uint8_t layer;
        private: point cur_top_left;
        private: point cur_bot_right;
        private: point prv_top_left;
        private: point prv_bot_right;

        public: virtual void
                set_x(const float x) override;

        private: void
                 set_x(const float x,
                       const uint16_t force);

        public: virtual void
                set_y(const float y) override;

        private: void
                 set_y(const float y,
                       const uint16_t force);

        public: float
                get_angle() const;

        public: void
                set_angle(const float angle);

        public: uint16_t
                get_width() const;

        public: void
                set_width(const uint16_t width);

        public: uint16_t
                get_height() const;

        public: void
                set_height(const uint16_t height);

        public: uint16_t
                get_force() const;

        public: void
                set_force(const uint16_t force);

        public: uint16_t
                get_resistance() const;

        public: void
                set_resistance(const uint16_t resistance);

        public: uint8_t
                get_layer() const;

        public: void
                set_layer(const uint8_t layer);

        protected: collider(const float x,
                            const float y,
                            const float angle,
                            const uint16_t width,
                            const uint16_t height,
                            const uint16_t force,
                            const uint16_t resistance,
                            const uint8_t layer);

        public: static std::shared_ptr<collider>
                create(const float x,
                       const float y,
                       const float angle,
                       const uint16_t width,
                       const uint16_t height,
                       const uint16_t force,
                       const uint16_t resistance,
                       const uint8_t layer);

        protected: collider(const collider &c);

        public: static std::shared_ptr<collider>
                create(const collider &c);

        public: virtual
                ~collider();

        private: void
                 update_area();

        private: void
                 update_layer();

        public: bool
                operator == (const collider &c) const;

        public: bool
                operator != (const collider &c) const;
    };

    typedef std::shared_ptr<collider> collider_t;
}
