#include "../inc/body.hpp" // IWYU pragma: keep

std::vector<std::vector<wze::body*>> wze::body::bodies(UINT8_MAX);

float wze::body::get_x() const {
    return this->x;
}

void wze::body::set_x(float x) {
    float diff;

    diff = x - this->x;
    this->cur_tl_x += diff;
    this->cur_br_x += diff;

    // Update layer
}

float wze::body::get_y() const {
    return this->y;
}

void wze::body::set_y(float y) {
    float diff;

    diff = y - this->y;
    this->cur_br_y += diff;
    this->cur_br_y += diff;

    // Update layer
}

float wze::body::get_angle() const {
    return this->angle;
}

void wze::body::set_angle(float angle) {
    this->angle = angle;
    this->update_area();

    // Update layer
}

uint16_t wze::body::get_width() const {
    return this->width;
}

void wze::body::set_width(uint16_t width) {
    this->width = width;
    this->update_area();

    // Update layer
}

uint16_t wze::body::get_height() const {
    return this->height;
}

void wze::body::set_height(uint16_t height) {
    this->height = height;
    this->update_area();

    // Update layer
}

uint16_t wze::body::get_force() const {
    return this->force;
}

void wze::body::set_force(uint16_t force) {
    this->force = force;
}

uint16_t wze::body::get_mass() const {
    return this->mass;
}

void wze::body::set_mass(uint16_t mass) {
    this->mass = mass;
}

uint8_t wze::body::get_layer() const {
    return this->layer;
}

void wze::body::set_layer(uint8_t layer) {
    if (this->layer == layer) {
        return;
    }

    if (this->layer != UINT8_MAX) {
        this->bodies[this->layer].erase(std::find(this->bodies[this->layer].begin(),
                                                  this->bodies[this->layer].end(),
                                                  this));
    }

    if (layer != UINT8_MAX) {
        this->bodies[this->layer].push_back(this);
    }

    this->layer = layer;
}

wze::body::body(float x, float y, float angle, uint16_t width, uint16_t height,
                uint16_t force, uint16_t mass, uint8_t layer) {
    this->x = x;
    this->y = y;
    this->angle = angle;
    this->width = width;
    this->height = height;
    this->force = force;
    this->mass = mass;
    this->layer = layer;
    this->update_area();
    this->update_position();

    if (this->layer != UINT8_MAX) {
        this->bodies[this->layer].push_back(this);
    }
}

wze::body::~body() {
    if (this->layer != UINT8_MAX) {

        this->bodies[this->layer].erase(std::find(this->bodies[this->layer].begin(),
                                                  this->bodies[this->layer].end(),
                                                  this));
    }
}

void wze::body::update_area() {
    #define DEG_180 3.1415927f

    float distance;
    float angle;
    float angle1;
    float angle2;
    float angle3;
    float angle4;
    float x1;
    float x2;
    float x3;
    float x4;
    float y1;
    float y2;
    float y3;
    float y4;
    float cache1;
    float cache2;

    distance = math::distance(0, 0, this->width, this->height) / 2;
    angle = math::angle(0, 0, this->width, this->height);

    angle1 = this->angle + angle;
    angle2 = this->angle + DEG_180 - angle;
    angle3 = angle1 + DEG_180;
    angle4 = angle2 + DEG_180;

    x1 = this->x + distance * cosf(angle1);
    x2 = this->x + distance * cosf(angle2);
    x3 = this->x + distance * cosf(angle3);
    x4 = this->x + distance * cosf(angle4);

    y1 = this->y + distance * sinf(angle1);
    y2 = this->y + distance * sinf(angle2);
    y3 = this->y + distance * sinf(angle3);
    y4 = this->y + distance * sinf(angle4);

    cache1 = x1 < x2 ? x1 : x2;
    cache2 = x3 < x4 ? x3 : x4;   
    this->cur_tl_x = cache1 < cache2 ? cache1 : cache2;

    cache1 = y1 < y2 ? y2 : y1;
    cache2 = y3 < y4 ? y4 : y3;
    this->cur_tl_y = cache1 < cache2 ? cache2 : cache1;

    cache1 = x1 < x2 ? x2 : x1;
    cache2 = x3 < x4 ? x4 : x3;
    this->cur_br_x = cache1 < cache2 ? cache2 : cache1;

    cache1 = y1 < y2 ? y1 : y2;
    cache2 = y3 < y4 ? y3 : y4;
    this->cur_br_y = cache1 < cache2 ? cache1 : cache2;

    #undef DEG_180
}

void wze::body::update_position() {
    if (this->cur_tl_x == this->prv_tl_x && this->cur_tl_y == this->prv_tl_y &&
        this->cur_br_x == this->prv_br_x && this->cur_br_y == this->prv_br_y) {
        return;
    }

    this->x = (this->cur_br_x - this->cur_tl_x) / 2;
    this->y = (this->cur_tl_y - this->cur_br_y) / 2;

    this->prv_tl_x = this->cur_tl_x;
    this->prv_tl_y = this->cur_tl_y;
    this->prv_br_x = this->cur_br_x;
    this->prv_br_y = this->cur_br_y;
}
