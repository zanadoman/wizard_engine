#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_vector.hpp" // IWYU pragma: keep

namespace wze {
    class collider : public vector {
        private: static std::vector<std::vector<collider*>> layers;

        private: float angle;
        private: uint16_t width;
        private: uint16_t height;
        private: uint16_t force;
        private: uint16_t resistance;
        private: uint8_t layer;
        private: vector cur_top_left;
        private: vector cur_bot_right;
        private: vector prv_top_left;
        private: vector prv_bot_right;

        public: inline virtual void set_x(const float value) override {
            vector::set_x(value);

            // Simulate
        }

        public: inline virtual void set_y(const float value) override {
            vector::set_y(value);

            // Simulate
        }

        private: inline void set_y(const float value, const uint16_t force) {
            if (force <= this->resistance) {
                return;
            }

            vector::set_y(value);
        }

        private: inline void set_x(const float value, const uint16_t force) {
            if (force <= this->resistance) {
                return;
            }

            vector::set_x(value);
        }

        public: inline float get_angle() const {
            return this->angle;
        }

        public: inline void set_angle(const float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            this->angle = value;
        }

        public: inline uint16_t get_width() const {
            return this->width;
        }

        public: inline void set_width(const uint16_t value) {
            this->width = value;
        }

        public: inline uint16_t get_height() const {
            return this->height;
        }

        public: inline void set_height(const uint16_t value) {
            this->height = value;
        }

        public: inline uint16_t get_force() const {
            return this->force;
        }

        public: inline void set_force(const uint16_t value) {
            this->force = value;
        }

        public: inline uint16_t get_resistance() const {
            return this->resistance;
        }

        public: inline void set_resistance(const uint16_t value) {
            this->resistance = value;
        }

        public: inline uint8_t get_layer() const {
            return this->layer;
        }

        public: inline void set_layer(const uint8_t value) {
            this->layers[this->layer].erase(std::remove(
                this->layers[this->layer].begin(),
                this->layers[this->layer].end(),
                this
            ));
            this->layers[value].push_back(this);

            this->layer = value;
        }

        protected: inline collider(const float angle, const uint16_t width,
                                   const uint16_t height, const uint8_t layer) {
            if (angle != angle) {
                throw std::invalid_argument("NaN angle");
            }
            
            this->angle = angle;
            this->width = width;
            this->layer = height;
            this->set_layer(layer);
        }

        public: static inline std::shared_ptr<collider> create(const float angle,
                                                               const uint16_t width,
                                                               const uint16_t height,
                                                               const uint8_t layer) {
            return std::shared_ptr<collider>(new collider(angle, width, height, layer));
        }

        public: inline ~collider() {
            this->layers[this->layer].erase(std::remove(this->layers[this->layer].begin(),
                                                        this->layers[this->layer].end(),
                                                        this));
        }

        private: inline void update() {
            
        }
    };
}
