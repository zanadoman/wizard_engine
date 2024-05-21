#include "../include/WZE/renderable.hpp" // IWYU pragma: keep

std::deque<const wze::renderable*> wze::renderable::_instances({});

const std::deque<const wze::renderable *> &wze::renderable::__instances(void) {
    return _instances;
}

wze::renderable::renderable(void) {
    _instances.push_back(this);
}

wze::renderable::~renderable(void) {
    _instances.erase(std::find(_instances.begin(), _instances.end(), this));
}
