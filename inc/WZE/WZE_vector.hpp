#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep

namespace wze {
    struct vector {
        private: float x;
        private: float y;

        public: inline float get_x() const {
            return this->x;
        }

        public: inline void set_x(float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            this->x = value;
        }

        public: inline float get_y() const {
            return this->y;
        }

        public: inline void set_y(float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            this->y = value;
        }

        public: inline float get_length() const {
            return sqrtf(this->x * this->x + this->y * this->y);
        }

        public: inline void set_length(float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            *this = vector::from(value, this->get_angle());
        }

        public: inline float get_angle() const {
            if (this->x == 0 && this->y == 0) {
                return 0;
            }

            if (this->y < 0) {
                return RAD_MAX - acosf(this->x / this->get_length());
            } else {
                return acosf(this->x / this->get_length());
            }
        }

        public: inline void set_angle(const float value) {
            if (value != value) {
                throw std::invalid_argument("NaN value");
            }

            *this = vector::from(this->get_length(), value);
        }

        public: inline vector(const float x, const float y) {
            this->set_x(x);
            this->set_y(y);
        }

        public: inline vector() : vector(0, 0) {};

        public: static inline vector from(const float length, const float angle) {
            return vector(length * cosf(angle), length * sinf(angle));
        }

        public: inline vector operator + () const {
            return *this;
        }

        public: inline vector operator - () const {
            return vector(-this->x, -this->y);
        }

        public: inline vector operator * (const float x) const {
            return vector(this->x * x, this->y * x);
        }

        public: inline vector operator / (const float x) const {
            return vector(this->x / x, this->y / x);
        }

        public: inline vector operator + (const vector &other) const {
            return vector(this->x + other.x, this->y + other.y);
        }

        public: inline vector operator - (const vector &other) const {
            return vector(this->x - other.x, this->y - other.y);
        }

        public: inline float operator * (const vector &other) const {
            return this->x * other.x + this->y * other.y;
        }

        public: inline bool operator < (const float x) const {
            return this->get_length() < x;
        }

        public: inline bool operator <= (const float x) const {
            return this->get_length() <= x;
        }

        public: inline bool operator > (const float x) const {
            return this->get_length() > x;
        }

        public: inline bool operator >= (const float x) const {
            return this->get_length() >= x;
        }

        public: inline bool operator == (const float x) const {
            return this->get_length() == x;
        }

        public: inline bool operator != (const float x) const {
            return this->get_length() != x;
        }

        public: inline bool operator < (const vector &other) const {
            return this->get_length() < other.get_length();
        }

        public: inline bool operator <= (const vector &other) const {
            return this->get_length() <= other.get_length();
        }

        public: inline bool operator > (const vector &other) const {
            return this->get_length() > other.get_length();
        }

        public: inline bool operator >= (const vector &other) const {
            return this->get_length() >= other.get_length();
        }

        public: inline bool operator == (const vector &other) const {
            return this->x == other.x && this->y == other.y;
        }

        public: inline bool operator != (const vector &other) const {
            return this->x != other.x || this->y != other.y;
        }

    }; typedef struct vector vector_t;
}
