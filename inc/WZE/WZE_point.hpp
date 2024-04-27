#pragma once

#include <cmath>
#include <stdexcept>

namespace wze {
    #define PI 3.1415927f
    #define DEG_MAX 360.0f
    #define RAD_MAX 6.2831855f

    struct vector {
        private: float x;
        private: float y;

        public: float get_x();
        public: void set_x(float value);

        public: float get_y();
        public: void set_y(float value);

        public: float get_length();
        public: void set_length(float value);

        public: float get_angle();
        public: void set_angle(float value);

        public: vector(float x, float y);
        public: vector();

        public: static vector from(float length, float angle);

        public: vector operator * (float x);
        public: vector operator / (float x);

        public: vector operator *= (float x);
        public: vector operator /= (float x);

        public: vector operator + (vector &other);
        public: vector operator - (vector &other);

        public: vector operator += (vector &other);
        public: vector operator -= (vector &other);

        public: float operator * (vector &other);

        public: bool operator == (vector &other);
        public: bool operator != (vector &other);

    }; typedef struct point point_t;
}
