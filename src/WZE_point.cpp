#include "../inc/WZE/WZE_point.hpp"

inline float
wze::point::get_x() const
{
    return this->x;
}

void
wze::point::set_x(const float x)
{
    if (x != x)
        throw invalid_float_error("wze::point::set_x() Invalid x");

    this->x = x;
}

inline float
wze::point::get_y() const
{
    return this->y;
}

void
wze::point::set_y(const float y)
{
    if (y != y)
        throw invalid_float_error("wze::point::set_y() Invalid y");

    this->y = y;
}

wze::point::point(const float x,
                  const float y)
{
    this->set_x(x);
    this->set_y(y);
}

wze::point::point()
    : point(0, 0) {}

wze::point::point(const point &p)
{
    this->x = p.x;
    this->y = p.y;
}

wze::point&
wze::point::operator = (const point &p)
{
    this->set_x(p.x);
    this->set_y(p.y);
    return *this;
}

inline bool
wze::point::operator == (const point &p) const
{
    return this->x == p.x && this->y == p.y;
}

bool
wze::point::operator != (const point &p) const
{
    return !(*this == p);
}

std::ostream&
operator << (std::ostream &os,
             const wze::point &p)
{
    return os << "(" << p.get_x() << ", " << p.get_y() << ")";
}
