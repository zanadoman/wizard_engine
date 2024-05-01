#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_except.hpp" // IWYU pragma: keep

namespace wze {
    struct point;

    typedef point point_t;

    struct point {
        private: float x;
        private: float y;

        public: float get_x() const;
        public: virtual void set_x(const float x);

        public: float get_y() const;

        public: virtual void set_y(const float y);

        public: point(const float x, const float y);
        public: point();
        public: point(const point &p);
        public: virtual ~point() = default;

        public: point& operator = (const point &p);
        public: bool operator == (const point &p) const;
        public: bool operator != (const point &p) const;
    };
}

std::ostream& operator << (std::ostream &os, const wze::point &p);
