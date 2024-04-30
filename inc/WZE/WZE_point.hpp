#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep

namespace wze {
    struct point {
        private: float x;
        private: float y;

        public: inline float get_x() const {
            return this->x;
        }

        public: inline virtual void set_x(const float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            this->x = value;
        }

        public: inline float get_y() const {
            return this->y;
        }

        public: inline virtual void set_y(const float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            this->y = value;
        }

        public: inline point(const float x, const float y) {
            this->set_x(x);
            this->set_y(y);
        }

        public: inline point() : point(0, 0) {}

        public: inline point(const point &p) {
            this->x = p.x;
            this->y = p.y;
        }

        public: inline point& operator = (const point &p) {
            this->set_x(p.x);
            this->set_y(p.y);
            return *this;
        }

        public: inline virtual ~point() = default;

        public: inline bool operator == (const point &p) const {
            return this->x == p.x && this->y == p.y;
        }

        public: inline bool operator != (const point &p) const {
            return !(*this == p);
        }
    }; typedef point point_t;
}
