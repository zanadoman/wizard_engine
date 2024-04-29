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

        protected: inline point(const float x, const float y) {
            this->set_x(x);
            this->set_y(y);
        }

        protected: inline point() : point(0, 0) {}

        protected: inline point(const point &other) : point(other.x, other.y) {}
    }; typedef std::shared_ptr<point> point_t;
}
