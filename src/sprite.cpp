#include "../include/WZE/sprite.hpp" // IWYU pragma: keep

std::vector<const wze::sprite*> wze::sprite::_sprites;

auto wze::sprite::x() const -> float {
    return _x;
}

void wze::sprite::set_x(float x) {
    _x = x;
}

auto wze::sprite::y() const -> float {
    return _y;
}

void wze::sprite::set_y(float y) {
    _y = y;
}

auto wze::sprite::z() const -> float {
    return _z;
}

void wze::sprite::set_z(float z) {
    _z = z;
}

auto wze::sprite::angle() const -> float {
    return _angle;
}

void wze::sprite::set_angle(float angle) {
    _angle = angle;
}

auto wze::sprite::width() const -> float {
    return _width;
}

void wze::sprite::set_width(float width) {
    _width = width;
}

auto wze::sprite::height() const -> float {
    return _height;
}

void wze::sprite::set_height(float height) {
    _height = height;
}

auto wze::sprite::priority() const -> uint8_t {
    return _priority;
}

void wze::sprite::set_priority(uint8_t priority) {
    _priority = priority;
}

auto wze::sprite::data() const -> const wze::texture & {
    return _data;
}

void wze::sprite::set_data(const wze::texture &data) {
    _data = data;
}

auto wze::sprite::sprites() -> const std::vector<const sprite*> & {
    return _sprites;
}

wze::sprite::sprite() {
    _sprites.push_back(this);
}

wze::sprite::~sprite() {
    _sprites.erase(std::find(_sprites.begin(), _sprites.end(), this));
}
