#include "../inc/WZE/WZE_vector.hpp" // IWYU pragma: keep

inline float
wze::vector::get_length() const
{
    return sqrtf(this->get_x() * this->get_x() + this->get_y() * this->get_y());
}

void
wze::vector::set_length(const float length)
{
    const float direction = this->get_direction();
    this->set_x(length * cosf(direction));
    this->set_y(length * sinf(direction));
}

inline float
wze::vector::get_direction() const
{
    if (point::operator == (point(0, 0)))
        return 0;

    const float angle = acosf(this->get_x() / this->get_length());
    return this->get_y() < 0 ? -angle : angle;
}

void
wze::vector::set_direction(const float direction)
{
    const float length = this->get_length();
    this->set_x(length * cosf(direction));
    this->set_y(length * sinf(direction));
}

inline
wze::vector::vector(const float x,
                    const float y)
    : point(x, y) {}

wze::vector::vector()
    : vector(0, 0) {}

wze::vector::vector(const vector &v)
    : point(v) {}

inline wze::vector
wze::vector::from(const float length,
                  const float direction)
{
    return vector(length * cosf(direction), length * sinf(direction));
}

wze::vector&
wze::vector::operator = (const float x)
{
    return *this = vector::from(x, this->get_direction());
}

inline wze::vector&
wze::vector::operator = (const vector &v)
{
    this->set_x(v.get_x());
    this->set_y(v.get_y());
    return *this;
}

wze::vector
wze::vector::operator + (void) const
{
    return *this;
}

wze::vector
wze::vector::operator - (void) const
{
    return vector(-this->get_x(), -this->get_y());
}

inline wze::vector
wze::vector::operator + (const float x) const
{
    return from(this->get_length() + x, this->get_direction());
}

inline wze::vector
wze::vector::operator + (const vector &v) const
{
    return {this->get_x() + v.get_x(), this->get_y() + v.get_y()};
}

wze::vector&
wze::vector::operator += (const float x)
{
    return *this = *this + x;
}

wze::vector&
wze::vector::operator += (const vector &v)
{
    return *this = *this + v;
}

inline wze::vector
wze::vector::operator - (const float x) const
{
    return from(this->get_length() - x, this->get_direction());
}

inline wze::vector
wze::vector::operator - (const vector &v) const
{
    return {this->get_x() - v.get_x(), this->get_y() - v.get_y()};
}

wze::vector&
wze::vector::operator -= (const float x)
{
    return *this = *this - x;
}

wze::vector&
wze::vector::operator -= (const vector &v)
{
    return *this = *this - v;
}

inline wze::vector
wze::vector::operator * (const float x) const
{
    return {this->get_x() * x, this->get_y() * x};
}

float
wze::vector::operator * (const vector &v) const
{
    return this->get_x() * v.get_x() + this->get_y() * v.get_y();
}

wze::vector&
wze::vector::operator *= (const float x)
{
    return *this = *this * x;
}

inline wze::vector
wze::vector::operator / (const float x) const
{
    return {this->get_x() / x, this->get_y() / x};
}

wze::vector&
wze::vector::operator /= (const float x)
{
    return *this = *this / x;
}

inline wze::vector
wze::vector::operator << (const float x) const
{
    return from(this->get_length(), this->get_direction() + x);
}

inline wze::vector
wze::vector::operator << (const vector &v) const
{
    return from(this->get_length(), this->get_direction() + v.get_direction());
}

wze::vector&
wze::vector::operator <<= (const float x)
{
    return *this = *this << x;
}

wze::vector&
wze::vector::operator <<= (const vector &v)
{
    return *this = *this << v;
}

inline wze::vector
wze::vector::operator >> (const float x) const
{
    return from(this->get_length(), this->get_direction() - x);
}

inline wze::vector
wze::vector::operator >> (const vector &v) const
{
    return from(this->get_length(), this->get_direction() - v.get_direction());
}

wze::vector&
wze::vector::operator >>= (const float x)
{
    return *this = *this >> x;
}

wze::vector&
wze::vector::operator >>= (const vector &v)
{
    return *this = *this >> v;
}

bool
wze::vector::operator < (const float x) const
{
    return this->get_length() < x;
}

bool
wze::vector::operator < (const vector &v) const
{
    return this->get_length() < v.get_length();
}

bool
wze::vector::operator <= (const float x) const
{
    return this->get_length() <= x;
}

bool
wze::vector::operator <= (const vector &v) const
{
    return this->get_length() <= v.get_length();
}

bool
wze::vector::operator > (const float x) const
{
    return this->get_length() > x;
}

bool
wze::vector::operator > (const vector &v) const
{
    return this->get_length() > v.get_length();
}

bool
wze::vector::operator >= (const float x) const
{
    return this->get_length() >= x;
}

bool
wze::vector::operator >= (const vector &v) const
{
    return this->get_length() >= v.get_length();
}

inline bool
wze::vector::operator == (const float x) const
{
    return this->get_length() == x;
}

inline bool
wze::vector::operator == (const vector &v) const
{
    return this->get_x() == v.get_x() && this->get_y() == v.get_y();
}

bool
wze::vector::operator != (const float x) const
{
    return !(*this == x);
}

bool
wze::vector::operator != (const vector &v) const
{
    return !(*this == v);
}

inline float
operator + (const float x,
            const wze::vector &v)
{
    return x + v.get_length();
}

float&
operator += (float &x,
             const wze::vector &v)
{
    return x = x + v;
}

inline float
operator - (const float x,
            const wze::vector &v)
{
    return x - v.get_length();
}

float&
operator -= (float &x,
             const wze::vector &v)
{
    return x = x - v;
}

inline float
operator * (const float x,
            const wze::vector &v)
{
    return x * v.get_length();
}

float&
operator *= (float &x,
             const wze::vector &v)
{
    return x = x * v;
}

inline float
operator / (const float x,
            const wze::vector &v)
{
    return x / v.get_length();
}

float&
operator /= (float &x,
             const wze::vector &v)
{
    return x = x / v;
}

inline float
operator << (const float x,
             const wze::vector &v)
{
    return x + v.get_direction();
}

float&
operator <<= (float &x,
              const wze::vector &v)
{
    return x = x << v;
}

inline float
operator >> (const float x,
             const wze::vector &v)
{
    return x - v.get_direction();
}

float&
operator >>= (float &x,
              const wze::vector &v)
{
    return x = x >> v;
}

bool
operator < (const float x,
            const wze::vector &v)
{
    return x < v.get_length();
}

bool
operator <= (const float x,
             const wze::vector &v)
{
    return x <= v.get_length();
}

bool
operator > (const float x,
            const wze::vector &v)
{
    return x > v.get_length();
}

bool
operator >= (const float x,
             const wze::vector &v)
{
    return x >= v.get_length();
}

inline bool
operator == (const float x,
             const wze::vector &v)
{
    return x == v.get_length();
}

bool
operator != (const float x,
             const wze::vector &v)
{
    return !(x == v);
}
