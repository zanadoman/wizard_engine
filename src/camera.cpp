#include "../include/WZE/camera.hpp" // IWYU pragma: keep

double wze::camera::_x = 0.0;
double wze::camera::_y = 0.0;
double wze::camera::_z = 0.0;
double wze::camera::_angle = 0.0;
double wze::camera::_fov = 60.0;
double wze::camera::_ar = 0.0;

void wze::camera::_update(void) {
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(_fov, _ar, 0.3, 1000.0);
}

auto wze::camera::x(void) -> double {
    return _x;
}

void wze::camera::set_x(double x) {
    _x = x;
}

auto wze::camera::y(void) -> double {
    return _y;
}

void wze::camera::set_y(double y) {
    _y = y;
}

auto wze::camera::z(void) -> double {
    return _z;
}

void wze::camera::set_z(double z) {
    _z = z;
}

auto wze::camera::angle(void) -> double {
    return _angle;
}

void wze::camera::set_angle(double angle) {
    _angle = angle;
}

auto wze::camera::fov(void) -> double {
    return _fov;
}

void wze::camera::set_fov(double fov) {
    _fov = fov;
    _update();
}

void wze::camera::__init(double ar) {
    _ar = ar;
    _update();
}
