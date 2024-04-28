#include "../../inc/WZE/WZE_socket.hpp" // IWYU pragma: keep

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

    bool socket::get_x_lock() {
        return this->x_lock;
    }

    void socket::set_x_lock(bool value) {
        if ((this->x_lock = value)) {
            this->update(this->origo, this->origo_angle);
        }
    }

    bool socket::get_y_lock() {
        return this->y_lock;
    }

    void socket::set_y_lock(bool value) {
        if ((this->y_lock = value)) {
            this->update(this->origo, this->origo_angle);
        }
    }

    bool socket::get_angle_lock() {
        return this->angle_lock;
    }

    void socket::set_angle_lock(bool value) {
        if ((this->angle_lock = value)) {
            this->update(this->origo, this->origo_angle);
        }
    }

    socket::socket(vector base, float angle, vector origo, float origo_angle)
            : vector(base) {
        this->set_angle(angle);
        this->update(origo, origo_angle);
    }

    void socket::update(vector origo, float origo_angle) {
        vector diff;
        float angle_diff;

        if (this->angle_lock) {
            angle_diff = origo_angle - this->origo_angle;
            this->angle += angle_diff;    
        }

        if ((this->x_lock || this->y_lock) && *this != origo) {
            diff = origo - this->origo;

            if (this->angle_lock) {
                diff.set_angle(diff.get_angle() + angle_diff);
            }

            if (this->x_lock) {
                this->set_x(this->get_x() + diff.get_x());
            }

            if (this->y_lock) {
                this->set_y(this->get_y() + diff.get_y());
            }
        }

        this->origo = origo;
        this->origo_angle = origo_angle;
    }
}
