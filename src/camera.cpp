#include "WZE/camera.hpp"
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
    _focal = focal;
}

void wze::camera::__project_renderable(renderable& renderable) {
    SDL_FRect rect;
    float_t x;
    float_t y;
    float_t z;

    z = renderable.z() - _z;
    x = z == 0.f ? 0.f : (renderable.x() - _x) / z * _focal;
    y = z == 0.f ? 0.f : (renderable.y() - _y) / z * _focal;

    rect.x = x * _transmat.at(0) + y * _transmat.at(1) + _transmat.at(2);
    rect.y = x * _transmat.at(3) + y * _transmat.at(4) + _transmat.at(5);

    rect.w = z == 0.f ? 0.f : renderable.width() / z * _focal;
    rect.h = z == 0.f ? 0.f : renderable.height() / z * _focal;
    rect.x -= rect.w / 2;
    rect.y -= rect.h / 2;

    renderable.__set_rect(rect);
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
    x = _focal == 0.f ? 0.f : x / _focal * z + _x;
    y = _focal == 0.f ? 0.f : y / _focal * z + _y;
}

void wze::camera::__init() {
    _transmat.at(2) = window::width() / -2.f;
    _transmat.at(5) = window::height() / -2.f;
}
