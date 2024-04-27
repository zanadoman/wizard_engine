#include "../../inc/WZE/WZE_point.hpp"

namespace wze {
    float vector::get_x() {
        return this->x;
    }

    void vector::set_x(float value) {
        if (value != value) {
            throw std::invalid_argument("NaN value");
        }

        this->x = value;
    }

    float vector::get_y() {
        return this->y;
    }

    void vector::set_y(float value) {
        if (value != value) {
            throw std::invalid_argument("NaN value");
        }

        this->y = value;
    }

    float vector::get_length() {
        return sqrtf(this->x * this->x + this->y * this->y);
    }

    void vector::set_length(float value) {
        if (value != value) {
            throw std::invalid_argument("NaN value");
        }

        *this = vector::from(value, this->get_angle());
    }

    float vector::get_angle() {
        if (this->x == 0 && this->y == 0) {
            return 0;
        }

        if (this->y < 0) {
            return RAD_MAX - acosf(this->x / this->get_length());
        } else {
            return acosf(this->x / this->get_length());
        }
    }

    void vector::set_angle(float value) {
        if (value != value) {
            throw std::invalid_argument("NaN value");
        }

        *this = vector::from(this->get_length(), value);
    } 

    vector::vector(float x, float y) {
        this->set_x(x);
        this->set_y(y);
    }

    vector::vector() : vector(0, 0) {}

    vector vector::from(float length, float angle) {
        if (length != length) {
            throw std::invalid_argument("NaN length");
        }
        if (angle != angle) {
            throw std::invalid_argument("NaN angle");
        }

        return vector(length * cosf(angle), length * sinf(angle));
    }

    vector vector::operator * (float x) {
        if (x != x) {
            throw std::invalid_argument("NaN x");
        }

        return vector(this->x * x, this->y * x);
    }

    vector vector::operator / (float x) {
        if (x != x) {
            throw std::invalid_argument("NaN x");
        }

        return vector(this->x / x, this->y / x);
    }

    vector vector::operator *= (float x) {
        if (x != x) {
            throw std::invalid_argument("NaN x");
        }

        return *this = vector(this->x * x, this->y * x);
    }

    vector vector::operator /= (float x) {
        if (x != x) {
            throw std::invalid_argument("NaN x");
        }

        return *this = vector(this->x / x, this->y / x);
    }

    vector vector::operator + (vector &other) {
        return vector(this->x + other.x, this->y + other.y);
    }

    vector vector::operator - (vector &other) {
        return vector(this->x - other.x, this->y - other.y);
    }

    vector vector::operator += (vector &other) {
        return vector(this->x += other.x, this->y += other.y);
    }

    vector vector::operator -= (vector &other) {
        return vector(this->x -= other.x, this->y -= other.y);
    }

    float vector::operator * (vector &other) {
        return this->x * other.x + this->y * other.y;
    }

    bool vector::operator == (vector &other) {
        return this->x == other.x && this->y == other.y;
    }

    bool vector::operator != (vector &other) {
        return !(*this == other);
    }
}
