#include "WZE/renderable.hpp"

std::deque<wze::renderable*> wze::renderable::_instances;

std::deque<wze::renderable*> const& wze::renderable::__instances() {
    return _instances;
}

SDL_FRect const& wze::renderable::__render_area() const {
    return _render_area;
}

void wze::renderable::__set_render_area(SDL_FRect const& render_area) {
    _render_area = render_area;
}

float_t wze::renderable::__render_angle() const {
    return _render_angle;
}

void wze::renderable::__set_render_angle(float_t render_angle) {
    _render_angle = render_angle;
}

wze::renderable::renderable() {
    _instances.push_back(this);
}

wze::renderable::~renderable() {
    _instances.erase(std::ranges::find(_instances, this));
}
