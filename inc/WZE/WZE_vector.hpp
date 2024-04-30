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
            float result;

            if (this->get_y() == 0 && this->get_x() == 0) {
                return 0;
            }

            result = acosf(this->get_x() / this->get_length());

            return this->get_y() < 0 ? -result : result;
        }

        public: inline void set_angle(const float value) {
            const float length = this->get_length();

            this->set_x(length * cosf(value));
            this->set_y(length * sinf(value));
        }

        public: inline vector(const float x, const float y) : point(x, y) {}

        public: inline vector() : vector(0, 0) {}

        public: inline vector(vector const &v) : point(v) {}

        public: inline virtual ~vector() = default;

        public: static inline vector from(const float length, const float angle) {
            return vector(length * cosf(angle), length * sinf(angle));
        }

        public: inline vector& operator = (const float x) {
            return *this = vector::from(x, this->get_angle());
        }

        public: inline vector& operator = (const vector &v) {
            this->set_x(v.get_x());
            this->set_y(v.get_y());
            return *this;
        }

        public: inline vector operator + () {
            return *this;
        }

        public: inline vector operator - () const {
            return vector(-this->get_x(), -this->get_y());
        }

        public: inline vector operator + (const float x) const {
            return vector::from(this->get_length() + x, this->get_angle());
        }

        public: inline vector operator + (const vector &v) const {
            return vector(this->get_x() + v.get_x(), this->get_y() + v.get_y());
        }

        public: inline vector& operator += (const float x) {
            return *this = *this + x;
        }

        public: inline vector& operator += (const vector &v) {
            return *this = *this + v;
        }

        public: inline vector operator - (const float x) const {
            return vector::from(this->get_length() - x, this->get_angle());
        }

        public: inline vector operator - (const vector &v) const {
            return vector(this->get_x() - v.get_x(), this->get_y() - v.get_y());
        }

        public: inline vector operator -= (const float x) {
            return *this = *this - x;
        }

        public: inline vector operator -= (const vector &v) {
            return *this = *this - v;
        }

        public: inline vector operator * (const float x) const {
            return vector(this->get_x() * x, this->get_y() * x);
        }

        public: inline float operator * (const vector &v) const {
            return this->get_x() * v.get_x() + this->get_y() * v.get_y(); 
        }

        public: inline vector& operator *= (const float x) {
            return *this = *this * x;
        }

        public: inline vector operator / (const float x) const {
            return vector(this->get_x() / x, this->get_y() / x);
        }

        public: inline vector& operator /= (const float x) {
            return *this = *this / x;
        }

        public: inline vector operator << (const float x) {
            return vector::from(this->get_length(), this->get_angle() + x);
        }

        public: inline vector operator << (const vector &v) {
            return vector::from(this->get_length(), this->get_angle() + v.get_angle());
        }

        public: inline vector& operator <<= (const float x) {
            return *this = *this << x;
        }

        public: inline vector& operator <<= (const vector &v) {
            return *this = *this << v;
        }

        public: inline vector operator >> (const float x) {
            return vector::from(this->get_length(), this->get_angle() - x);
        }

        public: inline vector operator >> (const vector &v) {
            return vector::from(this->get_length(), this->get_angle() - v.get_angle());
        }

        public: inline vector& operator >>= (const float x) {
            return *this = *this >> x;
        }

        public: inline vector& operator >>= (const vector &v) {
            return *this = *this >> v;
        }

        public: inline bool operator < (const float x) const {
            return this->get_length() < x;
        }

        public: inline bool operator < (const vector &v) const {
            return this->get_length() < v.get_length();
        }

        public: inline bool operator <= (const float x) const {
            return this->get_length() <= x;
        }

        public: inline bool operator <= (const vector &v) const {
            return this->get_length() <= v.get_length();
        }

        public: inline bool operator > (const float x) const {
            return this->get_length() > x;
        }

        public: inline bool operator > (const vector &v) const {
            return this->get_length() > v.get_length();
        }

        public: inline bool operator >= (const float x) const {
            return this->get_length() >= x;
        }

        public: inline bool operator >= (const vector &v) const {
            return this->get_length() >= v.get_length();
        }

        public: inline bool operator == (const float x) const {
            return this->get_length() == x;
        }

        public: inline bool operator == (const vector &v) const {
            return point::operator == (v);
        }

        public: inline bool operator != (const float x) const {
            return this->get_length() != x;
        }

        public: inline bool operator != (const vector &v) const {
            return !(*this == v);
        }
    }; typedef struct vector vector_t;

    inline float operator + (const float x, const vector &v) {
        return x + v.get_length();
    }

    inline float& operator += (float &x, const vector &v) {
        return x = x + v;
    }

    inline float operator - (const float x, const vector &v) {
        return x - v.get_length();
    }

    inline float& operator -= (float &x, const vector &v) {
        return x = x - v;
    }

    inline float operator * (const float x, const vector &v) {
        return x * v.get_length();
    }

    inline float& operator *= (float &x, const vector &v) {
        return x = x * v;
    }

    inline float operator / (const float x, const vector &v) {
        return x / v.get_length();
    }

    inline float& operator /= (float &x, const vector &v) {
        return x = x / v;
    }

    inline float operator << (const float x, const vector &v) {
        return x + v.get_angle();
    }

    inline float& operator <<= (float &x, const vector &v) {
        return x = x << v;
    }

    inline float operator >> (const float x, const vector &v) {
        return x - v.get_angle();
    }

    inline float& operator >>= (float &x, const vector &v) {
        return x = x >> v;
    }

    inline bool operator < (const float x, const vector &v) {
        return x < v.get_length();
    }

    inline bool operator <= (const float x, const vector &v) {
        return x <= v.get_length();
    }

    inline bool operator > (const float x, const vector &v) {
        return x > v.get_length();
    }

    inline bool operator >= (const float x, const vector &v) {
        return x >= v.get_length();
    }

    inline bool operator == (const float x, const vector &v) {
        return x == v.get_length();
    }

    inline bool operator != (const float x, const vector &v) {
        return x != v.get_length();
    }

    inline std::ostream& operator << (std::ostream &os, const vector &v) {
        return os << "(" << v.get_x() << ", " << v.get_y() << ")";
    }
}
