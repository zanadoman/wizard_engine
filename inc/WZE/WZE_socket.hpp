#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep
#include "WZE_vector.hpp" // IWYU pragma: keep

namespace wze {
    class socket : public vector {
        private: float angle;
        private: vector origo;
        private: float origo_angle;
        private: bool x_lock;
        private: bool y_lock;
        private: bool angle_lock;

        public: float get_angle();
        public: void set_angle(float value);

        public: vector get_origo();
        public: void set_origo(vector value);
        
        public: float get_origo_angle();
        public: void set_origo_angle(float value);

        public: bool get_x_lock();
        public: void set_x_lock(bool value);

        public: bool get_y_lock();
        public: void set_y_lock(bool value);

        public: bool get_angle_lock();
        public: void set_angle_lock(bool value);

        public: socket(vector base, float angle, 
                          vector origo, float origo_angle);

        private: void update(vector origo, float origo_angle);
    }; typedef std::shared_ptr<socket> socket_t;
}
