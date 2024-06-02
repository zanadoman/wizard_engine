#include "WZE/renderable.hpp"

std::deque<wze::renderable const*> wze::renderable::_insts;

std::deque<wze::renderable const*> const& wze::renderable::__insts() {
    return _insts;
}

wze::renderable::renderable() {
    _insts.push_back(this);
}

wze::renderable::~renderable() {
    _insts.erase(std::find(_insts.begin(), _insts.end(), this));
}
