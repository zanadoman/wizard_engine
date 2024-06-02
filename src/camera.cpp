#include "WZE/camera.hpp"
#include "WZE/error.hpp"
#include "WZE/input.hpp"
#include "WZE/window.hpp"

float_t wze::camera::_x = 0.f;
float_t wze::camera::_y = 0.f;
float_t wze::camera::_z = 0.f;
float_t wze::camera::_angle = 0.f;
float_t wze::camera::_focal = 1.f;
std::array<float_t, 6> wze::camera::_transmat = {1.f, 0.f, 0.f, 0.f, 1.f, 0.f};

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
    _transmat.at(0) = cosa;
    _transmat.at(1) = -sina;
    _transmat.at(3) = sina;
    _transmat.at(4) = cosa;

    _angle = angle;
}

float_t wze::camera::focal() {
    return _focal;
}

void wze::camera::set_focal(float_t focal) {
    if (focal <= 0) {
        throw argument_error("Invalid focal value");
    }

    _focal = focal;
}

void wze::camera::project_renderable(renderable const& src, SDL_FRect& res) {
    float_t x;
    float_t y;
    float_t z;

    if (src.z() <= _z) {
        throw projection_error("Invalid z value");
    }

    z = src.z() - _z;
    x = (src.x() - _x) / z * _focal;
    y = (src.y() - _y) / z * _focal;

    res.x = x * _transmat.at(0) + y * _transmat.at(1) + _transmat.at(2);
    res.y = x * _transmat.at(3) + y * _transmat.at(4) + _transmat.at(5);

    res.w = src.width() / z * _focal;
    res.h = src.height() / z * _focal;
    res.x -= res.w / 2;
    res.y -= res.h / 2;
}

void wze::camera::unproject_cursor(float_t& x, float_t& y, float_t z) {
    float_t tx;
    float_t ty;
    float_t ta;

    tx = input::cursor_x() - _transmat.at(2);
    ty = input::cursor_y() - _transmat.at(5);
    ta = _transmat.at(0) * _transmat.at(4) - _transmat.at(1) * _transmat.at(3);
    x = (_transmat.at(4) * tx - _transmat.at(1) * ty) / ta;
    y = (_transmat.at(0) * ty - _transmat.at(3) * tx) / ta;

    z = z - _z;
    x = x / _focal * z + _x;
    y = y / _focal * z + _y;
}

void wze::camera::__init() {
    _transmat.at(2) = window::width() / -2.f;
    _transmat.at(5) = window::height() / -2.f;
}
