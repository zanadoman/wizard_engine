#include "../include/WZE/camera.hpp" // IWYU pragma: keep

float wze::camera::_x = 0; // NOLINT
float wze::camera::_y = 0; // NOLINT

auto wze::camera::x() -> float {
    return _x;
}

void wze::camera::set_x(float x) {
    _x = x;
}

auto wze::camera::y() -> float {
    return _y;
}

void wze::camera::set_y(float y) {
    _y = y;
}
