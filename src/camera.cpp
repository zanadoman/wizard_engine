#include "../include/WZE/camera.hpp" // IWYU pragma: keep

float wze::camera::_x = float();
float wze::camera::_y = float();
float wze::camera::_z = float();
float wze::camera::_angle = float();
float wze::camera::_fov = 60.0f;
float wze::camera::_aspect = float();

void wze::camera::_update(void) {
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective((double)_fov, (double)_aspect, 0.3, 1000.0);
}

auto wze::camera::x(void) -> float {
    return _x;
}

void wze::camera::set_x(float x) {
    _x = x;
}

auto wze::camera::y(void) -> float {
    return _y;
}

void wze::camera::set_y(float y) {
    _y = y;
}

auto wze::camera::z(void) -> float {
    return _z;
}

void wze::camera::set_z(float z) {
    _z = z;
}

auto wze::camera::angle(void) -> float {
    return _angle;
}

void wze::camera::set_angle(float angle) {
    _angle = angle;
}

auto wze::camera::fov(void) -> float {
    return _fov;
}

void wze::camera::set_fov(float fov) {
    _fov = fov;
    _update();
}

void wze::camera::__init(float aspect) {
    _aspect = aspect;
    _update();
}
