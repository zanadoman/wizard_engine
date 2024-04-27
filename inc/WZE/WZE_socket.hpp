#pragma once

#include "WZE_point.hpp"

namespace wze {
    struct socket : public vector {
        private: float angle;
        private: vector origo;
        private: float origo_angle;

        protected: float get_angle();
        protected: void set_angle(float value);

        protected: vector get_origo();
        protected: void set_origo(vector value);
        
        protected: float get_origo_angle();
        protected: void set_origo_angle(float value);

        protected: socket(vector base, float angle, 
                          vector origo, float origo_angle);

        private: void update(vector origo, float origo_angle);
    };
}
