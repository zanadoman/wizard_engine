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

    cosa = cosf(angle);
    sina = sinf(angle);
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

void wze::camera::__project(renderable& renderable) {
    float_t x;
    float_t y;
    float_t z;

    z = renderable.z() - _z;
    x = z == 0.f ? 0.f : (renderable.x() - _x) / z * _focal;
    y = z == 0.f ? 0.f : (renderable.y() - _y) / z * _focal;

    renderable.__rect().x = x * _rotmat.at(0) + y * _rotmat.at(1);
    renderable.__rect().y = x * _rotmat.at(2) + y * _rotmat.at(3);
    renderable.__rect().w = z == 0.f ? 0.f : renderable.width() / z * _focal;
    renderable.__rect().h = z == 0.f ? 0.f : renderable.height() / z * _focal;
    renderable.__set_recta(_angle + renderable.angle());
}
