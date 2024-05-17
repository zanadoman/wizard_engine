#include "../include/WZE/camera.hpp" // IWYU pragma: keep

GLdouble wze::camera::_x     = 0; // NOLINT
GLdouble wze::camera::_y     = 0; // NOLINT
GLdouble wze::camera::_z     = 0; // NOLINT
GLdouble wze::camera::_angle = 0; // NOLINT

auto wze::camera::x() -> GLdouble {
    return _x;
}

void wze::camera::set_x(GLdouble x) {
    _x = x;
}

auto wze::camera::y() -> GLdouble {
    return _y;
}

void wze::camera::set_y(GLdouble y) {
    _y = y;
}

auto wze::camera::z() -> GLdouble {
    return _z;
}

void wze::camera::set_z(GLdouble z) {
    _z = z;
}

auto wze::camera::angle() -> GLdouble {
    return _angle;
}

void wze::camera::set_angle(GLdouble angle) {
    _angle = angle;
}
