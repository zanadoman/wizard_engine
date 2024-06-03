#include "WZE/renderable.hpp"

std::deque<wze::renderable const*> wze::renderable::_insts;

std::deque<wze::renderable const*> const& wze::renderable::__insts() {
    return _insts;
}

SDL_FRect const& wze::renderable::__rect() {
    return _rect;
}

void wze::renderable::__set_rect(SDL_FRect const& rect) {
    _rect = rect;
}

wze::renderable::renderable() {
    _insts.push_back(this);
}

wze::renderable::~renderable() {
    _insts.erase(std::find(_insts.begin(), _insts.end(), this));
}
