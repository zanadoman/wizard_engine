#include "../include/WZE/sprite.hpp" // IWYU pragma: keep

std::deque<const wze::sprite *> wze::sprite::_sprites;

auto wze::sprite::__sprites(void) -> const std::deque<const sprite *> {
    return _sprites;
}

auto wze::sprite::x() const -> double {
    return _x;
}

void wze::sprite::set_x(double x) {
    auto diff = x - _x;

    _area.at(0) += diff;
    _area.at(2) += diff;
    _area.at(4) += diff;
    _area.at(6) += diff;

    _x = x;
}

auto wze::sprite::y() const -> double {
    return _y;
}

void wze::sprite::set_y(double y) {
    auto diff = y - _y;

    _area.at(1) += diff;
    _area.at(3) += diff;
    _area.at(5) += diff;
    _area.at(7) += diff;
    
    _y = y;
}

auto wze::sprite::z() const -> double {
    return _z;
}

void wze::sprite::set_z(double z) {
    _z = z;
}

auto wze::sprite::angle() const -> double {
    return _angle;
}

void wze::sprite::set_angle(double angle) {
    _angle = angle;
}

auto wze::sprite::width() const -> double {
    return _width;
}

void wze::sprite::set_width(double width) {
    auto half = width / 2;

    _area.at(0) = _x - half;
    _area.at(2) = _x + half;
    _area.at(4) = _x + half;
    _area.at(6) = _x - half;

    _width = width;
}

auto wze::sprite::height() const -> double {
    return _height;
}

void wze::sprite::set_height(double height) {
    auto half = height / 2;

    _area.at(1) = _y - half;
    _area.at(3) = _y - half;
    _area.at(5) = _y + half;
    _area.at(7) = _y + half;

    _height = height;
}

auto wze::sprite::color_r() const -> uint8_t {
    return _color_r;
}

void wze::sprite::set_color_r(uint8_t color_r) {
    _color_r = color_r;
}

auto wze::sprite::color_g() const -> uint8_t {
    return _color_g;
}

void wze::sprite::set_color_g(uint8_t color_g) {
    _color_g = color_g;
}

auto wze::sprite::color_b() const -> uint8_t {
    return _color_b;
}

void wze::sprite::set_color_b(uint8_t color_b) {
    _color_b = color_b;
}

auto wze::sprite::visible() const -> bool {
    return _visible;
}

void wze::sprite::set_visibility(bool visibility) {
    _visible = visibility;
}

auto wze::sprite::data() const -> const texture & {
    return _data;
}

void wze::sprite::set_data(const texture &data) {
    _data = data;
}

auto wze::sprite::__area(void) const -> const std::array<double, 8> & {
    return _area;
}

wze::sprite::sprite() {
    _sprites.push_back(this);
}

wze::sprite::~sprite() {
    _sprites.erase(std::find(_sprites.begin(),
                             _sprites.end(), this));
}
