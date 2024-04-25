#pragma once

#include "WZE_include.hpp"

namespace wze
{
    class RenderObject : protected wzc::RenderObject
    {
        private: static std::vector<wzc::RenderObject*> objs;

        protected: float        GetX();
        protected: void         SetX(float value);

        protected: float        GetY();
        protected: void         SetY(float value);

        protected: uint16_t     GetWidth();
        protected:  void        SetWidth(uint16_t value);

        protected: uint16_t     GetHeight();
        protected: void         SetHeight(uint16_t value);

        protected: float        GetAngle();
        protected: void         SetAngle(float value);

        protected: wzc::Flip   GetFlip();
        protected: void         SetFlip(wzc::Flip value);

        protected: float        GetLayer();
        protected: void         SetLayer(float value);

        protected: uint8_t      GetPriority();
        protected: void         SetPriority(uint8_t value);

        protected: SDL_Texture *GetData();
        protected: void         SetData(SDL_Texture *value);

        protected: uint8_t      GetColorR();
        protected: void         SetColorR(uint8_t value);

        protected: uint8_t      GetColorG();
        protected: void         SetColorG(uint8_t value);

        protected: uint8_t      GetColorB();
        protected: void         SetColorB(uint8_t value);

        protected: uint8_t      GetColorA();
        protected: void         SetColorA(uint8_t value);

        protected:  RenderObject(float        x,
                                 float        y,
                                 uint16_t     width,
                                 uint16_t     height,
                                 float        angle,
                                 wzc::Flip   flip,
                                 float        layer,
                                 uint8_t      priority,
                                 SDL_Texture *data,
                                 uint8_t      color_r,
                                 uint8_t      color_g,
                                 uint8_t      color_b,
                                 uint8_t      color_a);
        protected:  RenderObject();
        public:    ~RenderObject();

        public: static void UpdateRender();
    };
}
