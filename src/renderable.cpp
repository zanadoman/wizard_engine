#include "WZE/renderable.hpp"

std::deque<wze::renderable*> wze::renderable::_insts;

std::deque<wze::renderable*> const& wze::renderable::__insts() {
    return _insts;
}

SDL_FRect& wze::renderable::__rect() {
    return _rect;
}

float_t wze::renderable::__recta() const {
    return _recta;
}

void wze::renderable::__set_recta(float_t recta) {
    _recta = recta;
}

wze::renderable::renderable() {
    _insts.push_back(this);
}

wze::renderable::~renderable() {
    _insts.erase(std::find(_insts.begin(), _insts.end(), this));
}
