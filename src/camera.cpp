#include "WZE/camera.hpp"

float_t wze::camera::_x = 0.f;
float_t wze::camera::_y = 0.f;
float_t wze::camera::_z = 0.f;
float_t wze::camera::_angle = 0.f;
float_t wze::camera::_focus = 1.f;
std::array<float_t, 4> wze::camera::_rotation_matrix = {1.f, 0.f, -0.f, 1.f};

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
    _rotation_matrix.at(0) = cosf(angle);
    _rotation_matrix.at(1) = sinf(angle);
    _rotation_matrix.at(2) = -_rotation_matrix.at(1);
    _rotation_matrix.at(3) = _rotation_matrix.at(0);
    _angle = angle;
}

float_t wze::camera::focus() {
    return _focus;
}

void wze::camera::set_focus(float_t focus) {
    _focus = focus;
}

void wze::camera::__project_renderable(renderable& instance) {
    float_t x_;
    float_t y_;
    float_t z_;
    float_t scale;

    if (instance.projectable()) {
        z_ = instance.z() - _z;
        if (z_ == 0.f) {
            instance.__set_render_area({0.f, 0.f, 0.f, 0.f});
        } else {
            scale = _focus / z_;
            x_ = (instance.x() - _x) * scale;
            y_ = (instance.y() - _y) * scale;
            instance.__set_render_area(
                {x_ * _rotation_matrix.at(0) + y_ * _rotation_matrix.at(1),
                 x_ * _rotation_matrix.at(2) + y_ * _rotation_matrix.at(3),
                 instance.width() * scale, instance.height() * scale});
        }
        instance.__set_render_angle(instance.angle() - _angle);
    } else {
        instance.__set_render_area(
            {instance.x(), instance.y(), instance.width(), instance.height()});
        instance.__set_render_angle(instance.angle());
    }
}

void wze::camera::__unproject(float_t& x, float_t& y, float_t z) {
    float_t x_;
    float_t y_;
    float_t z_;
    float_t divisor;
    float_t scale;

    y_ = y;
    x_ = x;
    divisor = _rotation_matrix.at(0) * _rotation_matrix.at(3) -
              _rotation_matrix.at(1) * _rotation_matrix.at(2);
    x = (x_ * _rotation_matrix.at(3) - y_ * _rotation_matrix.at(1)) / divisor;
    y = (y_ * _rotation_matrix.at(0) - x_ * _rotation_matrix.at(2)) / divisor;

    z_ = z - _z;
    if (z_ == 0.f) {
        x = 0.f;
        y = 0.f;
    } else {
        scale = z_ / _focus;
        x = _x + x * scale;
        y = _y + y * scale;
    }
}
