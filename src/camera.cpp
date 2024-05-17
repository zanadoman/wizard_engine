#include "../include/WZE/camera.hpp" // IWYU pragma: keep

double wze::camera::_x = double();
double wze::camera::_y = double();
double wze::camera::_z = double();
double wze::camera::_angle = double();
double wze::camera::_fov = 60.0;
double wze::camera::_aspect = double();

void wze::camera::_update(void) {
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(_fov, _aspect, 0.3, 1000.0);
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

void wze::camera::__init(double aspect) {
    _aspect = aspect;
    _update();
}
