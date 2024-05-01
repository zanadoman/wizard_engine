#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_point.hpp" // IWYU pragma: keep

namespace wze
{
    struct vector : public point
    {
        public: float
                get_length() const;

        public: void
                set_length(const float length);

        public: float
                get_direction() const;

        public: void
                set_direction(const float direction);

        public: vector(const float x, const float y);

        public: vector();

        public: vector(const vector &v);

        public: inline virtual
                ~vector() = default;

        public: static vector
                from(const float length,
                     const float direction);

        public: vector&
                operator = (const float x);

        public: vector&
                operator = (const vector &v);

        public: vector
                operator + (void) const;

        public: vector
                operator - (void) const;

        public: vector
                operator + (const float x) const;

        public: vector
                operator + (const vector &v) const;

        public: vector&
                operator += (const float x);

        public: vector&
                operator += (const vector &v);

        public: vector
                operator - (const float x) const;

        public: vector
                operator - (const vector &v) const;

        public: vector&
                operator -= (const float x);

        public: vector&
                operator -= (const vector &v);

        public: vector
                operator * (const float x) const;

        public: float
                operator * (const vector &v) const;

        public: vector&
                operator *= (const float x);

        public: vector
                operator / (const float x) const;

        public: vector&
                operator /= (const float x);

        public: vector
                operator << (const float x) const;

        public: vector
                operator << (const vector &v) const;

        public: vector&
                operator <<= (const float x);

        public: vector&
                operator <<= (const vector &v);

        public: vector
                operator >> (const float x) const;

        public: vector
                operator >> (const vector &v) const;

        public: vector&
                operator >>= (const float x);

        public: vector&
                operator >>= (const vector &v);

        public: bool
                operator < (const float x) const;

        public: bool
                operator < (const vector &v) const;

        public: bool
                operator <= (const float x) const;

        public: bool
                operator <= (const vector &v) const;

        public: bool
                operator > (const float x) const;

        public: bool
                operator > (const vector &v) const;

        public: bool
                operator >= (const float x) const;

        public: bool
                operator >= (const vector &v) const;

        public: bool
                operator == (const float x) const;

        public: bool
                operator == (const vector &v) const;

        public: bool
                operator != (const float x) const;

        public: bool
                operator != (const vector &v) const;
    };

    typedef struct vector vector_t;
}

float
operator + (const float x,
            const wze::vector &v);

float&
operator += (float &x,
             const wze::vector &v);

float
operator - (const float x,
            const wze::vector &v);

float&
operator -= (float &x,
             const wze::vector &v);

float
operator * (const float x,
            const wze::vector &v);

float&
operator *= (float &x,
             const wze::vector &v);

float
operator / (const float x,
            const wze::vector &v);

float&
operator /= (float &x,
             const wze::vector &v);

float
operator << (const float x,
             const wze::vector &v);

float&
operator <<= (float &x,
              const wze::vector &v);

float
operator >> (const float x,
             const wze::vector &v);

float&
operator >>= (float &x,
              const wze::vector &v);

bool
operator < (const float x,
            const wze::vector &v);

bool
operator <= (const float x,
             const wze::vector &v);

bool
operator > (const float x,
            const wze::vector &v);

bool
operator >= (const float x,
             const wze::vector &v);

bool
operator == (const float x,
             const wze::vector &v);

bool
operator != (const float x,
             const wze::vector &v);
