#pragma once

#include "WZE_include.hpp"
#include "WZE_ObjectBox.hpp"

namespace wze
{
    class Socket
    {
        private: static std::vector<ObjectBox*> boxes;

        private: float x;
        private: float y;

        protected: float GetX();
        protected: void  SetX();

        protected: float GetY();
        protected: float SetY();

        protected: ObjectBox* NewBox(ObjectBox* box);
        protected: void       DeleteBox(ObjectBox* box);
    };
}
