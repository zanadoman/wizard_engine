#include "../include/WZE/camera.hpp" // IWYU pragma: keep

double wze::camera::_x = 0;     // NOLINT
double wze::camera::_y = 0;     // NOLINT
double wze::camera::_z = 0;     // NOLINT
double wze::camera::_angle = 0; // NOLINT

auto wze::camera::x() -> double {
    return _x;
}

void wze::camera::set_x(double x) {
    _x = x;
}

auto wze::camera::y() -> double {
    return _y;
}

void wze::camera::set_y(double y) {
    _y = y;
}

auto wze::camera::z() -> double {
    return _z;
}

void wze::camera::set_z(double z) {
    _z = z;
}

auto wze::camera::angle() -> double {
    return _angle;
}

void wze::camera::set_angle(double angle) {
    _angle = angle;
}
