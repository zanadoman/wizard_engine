#include "../inc/WZE/WZE_collider.hpp" // IWYU pragma: keep

std::vector<std::vector<wze::collider*>> wze::collider::layers(UINT8_MAX);

void
wze::collider::set_x(const float x)
{
    vector::set_x(x);

    if (this->layer == UINT8_MAX)
        return;

    // Do stuff
}

inline void
wze::collider::set_x(const float x,
                     const uint16_t force)
{
    if (force <= this->resistance)
        return;

    // Do stuff
}

void
wze::collider::set_y(const float y)
{
    vector::set_y(y);

    if (this->layer == UINT8_MAX)
        return;

    // Do stuff
}

inline void
wze::collider::set_y(const float x,
                     const uint16_t force)
{
    if (force <= this->resistance)
        return;

    // Do stuff
}

float
wze::collider::get_angle() const
{
    return this->angle;
}

void
wze::collider::set_angle(const float angle)
{
    this->angle = angle;
}

uint16_t
wze::collider::get_width() const
{
    return this->width;
}

void
wze::collider::set_width(const uint16_t width)
{
    this->width = width;
}

uint16_t
wze::collider::get_height() const
{
    return this->height;
}

void
wze::collider::set_height(const uint16_t height)
{
    this->height = height;
}

uint16_t
wze::collider::get_force() const
{
    return this->force;
}

void
wze::collider::set_force(const uint16_t force)
{
    this->force = force;
}

uint16_t
wze::collider::get_resistance() const
{
    return this->resistance;
}

void
wze::collider::set_resistance(const uint16_t resistance)
{
    this->resistance = resistance;
}

uint8_t
wze::collider::get_layer() const
{
    return this->layer;
}

void
wze::collider::set_layer(const uint8_t layer)
{
    if (this->layer != UINT8_MAX)
        layers[this->layer].erase(std::remove(layers[this->layer].begin(),
                                              layers[this->layer].end(),
                                              this));

    if (layer != UINT8_MAX)
        layers[layer].push_back(this);

    this->layer = layer;
}

inline
wze::collider::collider(const float x,
                        const float y,
                        const float angle,
                        const uint16_t width,
                        const uint16_t height,
                        const uint16_t force,
                        const uint16_t resistance,
                        const uint8_t layer)
    : vector(x, y)
{
    this->set_angle(angle);
    this->set_width(width);
    this->set_height(height);
    this->set_force(force);
    this->set_resistance(resistance);
    this->set_layer(layer);
}

std::shared_ptr<wze::collider>
wze::collider::create(const float x,
                      const float y,
                      const float angle,
                      const uint16_t width,
                      const uint16_t height,
                      const uint16_t force,
                      const uint16_t resistance,
                      const uint8_t layer)
{
    return std::shared_ptr<collider>(new collider(x,
                                                  y,
                                                  angle,
                                                  width,
                                                  height,
                                                  force,
                                                  resistance,
                                                  layer));
}

wze::collider::collider(const collider &c)
    : vector(c)
{
    this->angle = c.angle;
    this->width = c.width;
    this->height = c.height;
    this->force = c.force;
    this->resistance = c.resistance;
    this->layer = c.layer;
    this->cur_top_left = c.cur_top_left;
    this->cur_bot_right = c.cur_bot_right;
    this->prv_top_left = c.prv_top_left;
    this->prv_bot_right = c.prv_bot_right;

    if (this->layer != UINT8_MAX)
        layers[this->layer].push_back(this);
}

inline bool
wze::collider::operator == (const collider &c) const
{
    return vector::operator == (c) &&
           this->angle == c.angle &&
           this->width == c.width &&
           this->height == c.height &&
           this->force == c.force &&
           this->resistance == c.resistance &&
           this->layer == c.layer;
}

bool
wze::collider::operator != (const collider &c) const
{
    return !(*this == c);
}
