#include "../inc/WZE/WZE_collider.hpp" // IWYU pragma: keep

std::vector<std::vector<wze::collider*>> wze::collider::layers(UINT8_MAX);

void wze::collider::set_x(const float x) {
    std::vector<collider*> candidates;
    int32_t rem_force;
    vector diff;

    vector::set_x(x);
    this->update_area();

    if (this->layer == UINT8_MAX) {
        return;
    }

    rem_force = this->force;

    for (auto elem : layers[this->layer]) {
        if (this->is_colliding(elem)) {
            rem_force -= elem->resistance;
            candidates.push_back(elem);
        }
    }

    if (0 < rem_force) {
        for (auto elem : layers[this->layer]) {
            elem->set_x(this, vector(x, this->get_y()) - *this,
                        elem->resistance + rem_force);
            elem->set_x()
        }
    }
}

inline void wze::collider::set_x(const collider *const root, const vector diff, 
                                 const uint16_t force) {
    if (force <= this->resistance) {
        return;
    }

    // Do stuff
}

void wze::collider::set_y(const float y) {
    vector::set_y(y);
    this->update_area();

    if (this->layer == UINT8_MAX) {
        return;
    }

    // Do stuff
}

inline void wze::collider::set_y(const float x, const uint16_t force) {
    if (force <= this->resistance) {
        return;
    }

    // Do stuff
}

float wze::collider::get_angle() const {
    return this->angle;
}

void wze::collider::set_angle(const float angle) {
    this->angle = angle;
    this->update_area();
}

uint16_t wze::collider::get_width() const {
    return this->width;
}

void wze::collider::set_width(const uint16_t width) {
    this->width = width;
    this->update_area();
}

uint16_t wze::collider::get_height() const {
    return this->height;
}

void wze::collider::set_height(const uint16_t height) {
    this->height = height;
    this->update_area();
}

uint16_t wze::collider::get_force() const {
    return this->force;
}

void wze::collider::set_force(const uint16_t force) {
    this->force = force;
}

uint16_t wze::collider::get_resistance() const {
    return this->resistance;
}

void wze::collider::set_resistance(const uint16_t resistance) {
    this->resistance = resistance;
}

uint8_t wze::collider::get_layer() const {
    return this->layer;
}

void wze::collider::set_layer(const uint8_t layer)
{
    if (this->layer != UINT8_MAX) {
        layers[this->layer].erase(std::find(layers[this->layer].begin(),
                                            layers[this->layer].end(),
                                            this));
    }

    if (layer != UINT8_MAX) {
        layers[layer].push_back(this);
    }

    this->layer = layer;
}

inline wze::collider::collider(const float x, const float y, const float angle,
                               const uint16_t width, const uint16_t height,
                               const uint16_t force, const uint16_t resistance,
                               const uint8_t layer) : vector(x, y) {
    this->set_angle(angle);
    this->set_width(width);
    this->set_height(height);
    this->set_force(force);
    this->set_resistance(resistance);
    this->set_layer(layer);
}

wze::collider::collider(const collider &c) : vector(c) {
    this->angle = c.angle;
    this->width = c.width;
    this->height = c.height;
    this->force = c.force;
    this->resistance = c.resistance;
    this->layer = c.layer;
    this->top_left = c.top_left;
    this->bot_right = c.bot_right;

    if (this->layer != UINT8_MAX) {
        layers[this->layer].push_back(this);
    }
}

wze::collider::~collider() {
    if (this->layer != UINT8_MAX) {
        layers[this->layer].erase(std::find(layers[this->layer].begin(),
                                            layers[this->layer].end(),
                                            this));
    }
}

inline void wze::collider::update_area() {
    const uint16_t x = this->width >> 1;
    const uint16_t y = this->height >> 1;

    this->top_left = *this + (vector(-x, y) << this->angle);
    this->bot_right = *this + (vector(x, -y) << this->angle);
}

inline bool wze::collider::is_colliding(const collider *const c) const {
    if (c->bot_right.get_x() <= this->top_left.get_x() ||
        this->bot_right.get_x() <= c->top_left.get_x() ||
        c->top_left.get_y() <= this->bot_right.get_y() ||
        this->top_left.get_y() <= c->bot_right.get_y()) {
        return false;
    }

    return true;
}

inline bool wze::collider::operator == (const collider &c) const {
    return vector::operator == (c) && this->angle == c.angle &&
           this->width == c.width && this->height == c.height &&
           this->force == c.force && this->resistance == c.resistance &&
           this->layer == c.layer;
}

bool wze::collider::operator != (const collider &c) const {
    return !(*this == c);
}
