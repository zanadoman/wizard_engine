#include "../include/WZE/sprite.hpp" // IWYU pragma: keep

std::vector<const wze::sprite *> wze::sprite::_sprites;

auto wze::sprite::sprites() -> const std::vector<const sprite *> & {
    return _sprites;
}

auto wze::sprite::x() const -> double {
    return _x;
}

void wze::sprite::set_x(double x) {
    _x = x;
}

auto wze::sprite::y() const -> double {
    return _y;
}

void wze::sprite::set_y(double y) {
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
    _width = width;
}

auto wze::sprite::height() const -> double {
    return _height;
}

void wze::sprite::set_height(double height) {
    _height = height;
}

auto wze::sprite::priority() const -> uint8_t {
    return _priority;
}

void wze::sprite::set_priority(uint8_t priority) {
    _priority = priority;
}

auto wze::sprite::color_r() -> uint8_t {
    return _color_r;
}

void wze::sprite::set_color_r(uint8_t color_r) {
    _color_r = color_r;
}

auto wze::sprite::color_g() -> uint8_t {
    return _color_g;
}

void wze::sprite::set_color_g(uint8_t color_g) {
    _color_g = color_g;
}

auto wze::sprite::color_b() -> uint8_t {
    return _color_b;
}

void wze::sprite::set_color_b(uint8_t color_b) {
    _color_b = color_b;
}

auto wze::sprite::color_a() -> uint8_t {
    return _color_a;
}

void wze::sprite::set_color_a(uint8_t color_a) {
    _color_a = color_a;
}

auto wze::sprite::visible() -> bool {
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

wze::sprite::sprite() {
    _sprites.push_back(this);
}

wze::sprite::~sprite() {
    _sprites.erase(std::find(_sprites.begin(), _sprites.end(), this));
}
