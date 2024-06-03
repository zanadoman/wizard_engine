#include "WZE/camera.hpp"

float_t wze::camera::_x = 0.f;
float_t wze::camera::_y = 0.f;
float_t wze::camera::_z = 0.f;
float_t wze::camera::_angle = 0.f;
float_t wze::camera::_focal = 1.f;
std::array<float_t, 4> wze::camera::_rotmat = {cosf(0.f), -sinf(0.f), sinf(0.f),
                                               cosf(0.f)};

float_t wze::camera::x() {
    return _x;
}

void wze::camera::set_x(float_t x) {
    _x = x;
}

float_t wze::camera::y() {
    return _y;
}

void wze::camera::set_y(float_t y) {
    _y = y;
}

float_t wze::camera::z() {
    return _z;
}

void wze::camera::set_z(float_t z) {
    _z = z;
}

float_t wze::camera::angle() {
    return _angle;
}

void wze::camera::set_angle(float_t angle) {
    float_t cosa;
    float_t sina;

    cosa = cosf(-angle);
    sina = sinf(-angle);
    _rotmat.at(0) = cosa;
    _rotmat.at(1) = -sina;
    _rotmat.at(2) = sina;
    _rotmat.at(3) = cosa;

    _angle = angle;
}

float_t wze::camera::focal() {
    return _focal;
}

void wze::camera::set_focal(float_t focal) {
    _focal = focal;
}

void wze::camera::__project(renderable& r) {
    float_t x;
    float_t y;
    float_t z;

    if (r.projectable()) {
        z = r.z() - _z;
        x = z == 0.f ? 0.f : (r.x() - _x) / z * _focal;
        y = z == 0.f ? 0.f : (r.y() - _y) / z * _focal;

        r.__rect() = {x * _rotmat.at(0) + y * _rotmat.at(1),
                      x * _rotmat.at(2) + y * _rotmat.at(3),
                      z == 0.f ? 0.f : r.width() / z * _focal,
                      z == 0.f ? 0.f : r.height() / z * _focal};
        r.__set_recta(r.angle() - _angle);
    } else {
        r.__rect() = {r.x(), r.y(), r.width(), r.height()};
        r.__set_recta(r.angle());
    }
}
