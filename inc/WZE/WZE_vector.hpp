#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_point.hpp" // IWYU pragma: keep

namespace wze {
    struct vector : public point {
        public: inline float get_length() const {
            return sqrtf(this->get_x() * this->get_x() + this->get_y() * this->get_y());
        }

        public: inline void set_length(float value) {
            const float angle = this->get_angle();

            this->set_x(value * cosf(angle));
            this->set_y(value * sinf(angle));
        }

        public: inline float get_angle() const {
            if (this->get_y() < 0) {
                return RAD_MAX - acosf(this->get_x() / this->get_length());
            }

            if (this->get_y() == 0 && this->get_x() == 0) {
                return 0;
            }

            return acosf(this->get_x() / this->get_length());
        }

        public: inline void set_angle(const float value) {
            const float length = this->get_length();

            this->set_x(length * cosf(value));
            this->set_y(length * sinf(value));
        }

        public: inline vector(const float x, const float y) : point(x, y) {}

        public: inline vector() : vector(0, 0) {}

        protected: inline vector(const vector &other) : vector(other.get_x(), other.get_y()) {}

        public: static inline vector from(const float length, const float angle) {
            return vector(length * cosf(angle), length * sinf(angle));
        }

        public: inline vector operator = (const float value) {
            return *this = vector::from(value, this->get_angle());
        }

        public: inline vector operator = (const vector other) {
            this->set_x(other.get_x());
            this->set_y(other.get_y());

            return *this;
        }

        public: inline vector operator + () {
            return *this;
        }

        public: inline vector operator - () const {
            return vector(-this->get_x(), -this->get_y());
        }

        public: inline vector operator * (const float x) const {
            return vector(this->get_x() * x, this->get_y() * x);
        }

        public: inline vector operator / (const float x) const {
            return vector(this->get_x() / x, this->get_y() / x);
        }

        public: inline vector operator + (const vector &other) const {
            return vector(this->get_x() + other.get_x(), this->get_y() + other.get_y());
        }

        public: inline vector operator - (const vector &other) const {
            return vector(this->get_x() - other.get_x(), this->get_y() - other.get_y());
        }

        public: inline float operator * (const vector &other) const {
            return this->get_x() * other.get_x() + this->get_y() * other.get_y();
        }

        public: inline vector operator += (const vector other) {
            this->set_x(this->get_x() + other.get_y());
            this->set_y(this->get_x() + other.get_y());

            return *this;
        }

        public: inline vector operator -= (const vector other) {
            this->set_x(this->get_x() - other.get_y());
            this->set_y(this->get_x() - other.get_y());

            return *this;
        }

        public: inline vector operator *= (const float value) {
            this->set_x(this->get_x() * value);
            this->set_y(this->get_y() * value);

            return *this;
        }

        public: inline vector operator /= (const float value) {
            this->set_x(this->get_x() / value);
            this->set_y(this->get_y() / value);

            return *this;
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
            return this->get_x() == other.get_x() && this->get_y() == other.get_y();
        }

        public: inline bool operator != (const vector &other) const {
            return this->get_x() != other.get_x() || this->get_y() != other.get_y();
        }

    }; typedef struct vector vector_t;
}
