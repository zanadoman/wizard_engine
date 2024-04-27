#include "../../inc/WZE/WZE_socket.hpp"

namespace wze {
    float socket::get_angle() {
        return this->angle;
    }

    void socket::set_angle(float value) {
        if (value != value) {
            throw std::invalid_argument("NaN value");
        }

        this->angle = value;
    }

    vector socket::get_origo() {
        return this->origo;
    }

    void socket::set_origo(vector value) {
        this->update(value, this->origo_angle);
    }

    float socket::get_origo_angle() {
        return this->origo_angle;
    }

    void socket::set_origo_angle(float value) {
        if (value != value) {
            throw std::invalid_argument("NaN value");
        }

        this->update(this->origo, value);
    }

    socket::socket(vector base, float angle, vector origo, float origo_angle)
            : vector(base) {
        this->set_angle(angle);
        this->update(origo, origo_angle);
    }

    void socket::update(vector origo, float origo_angle) {
        vector diff;
        float angle_diff;

        angle_diff = origo_angle - this->origo_angle;
        this->angle += angle_diff;    

        if (*this != origo) {
            diff = origo - this->origo; 
            diff.set_angle(diff.get_angle() + angle_diff);
            *this += diff;
        }

        this->origo = origo;
        this->origo_angle = origo_angle;
    }
}
