#pragma once

#include "WZE_include.hpp"

namespace wze
{
    class ObjectBox
    {
        private: float root_x;
        private: float root_y;
        private: float root_angle;
        private: float x;
        private: float y;
        private: float angle;
        private: float offset_x;
        private: float offset_y;
        private: float offset_length;
        private: float offset_angle;
        private: bool  x_lock;
        private: bool  y_lock;
        private: bool  angle_lock;

        public: float GetOrigoX();
        public: void  SetOrigoX(float x);

        public: float GetOrigoY();
        public: void  SetOrigoY(float y);

        public: float GetOrigoAngle();
        public: void  SetOrigoAngle(float angle);

        public: float GetX();
        public: void  SetX(float x);

        public: float GetY();
        public: void  SetY(float y);

        public: float GetAngle();
        public: void  SetAngle(float value);

        public: float GetOffsetX();
        public: void  SetOffsetX(float value);

        public: float GetOffsetY();
        public: void  SetOffsetY(float value);

        public: float GetOffsetLength();
        public: void  SetOffsetLength(float value);
        
        public: float GetOffsetAngle();
        public: void  SetOffsetAngle(float value);

        public: bool  GetXLock();
        public: void  SetXLock(bool value);

        public: bool  GetYLock();
        public: void  SetYLock(bool value);

        public: bool  GetAngleLock();
        public: void  SetAngleLock(bool value);

        public: ObjectBox(float *origo_x,
                          float *origo_y,
                          float  x,
                          float  y,
                          float  angle,
                          float  offset_x,
                          float  offset_y,
                          float  offset_length,
                          float  offset_angle);

        public: void UpdatePosition(float root_x,
                                    float root_y,
                                    float root_angle);
    };
}
