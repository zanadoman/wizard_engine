#pragma once

#include "../WZC/WZC_render.h"  

#include "WZE_assets.hpp"

#ifdef __linux__
    #include <SDL2/SDL.h>
#endif

#ifdef _WIN64
    #include "../SDL2/SDL.h"
#endif

#include <cstdint>
#include <vector>
#include <algorithm>
#include <stdexcept>

namespace wze
{
    class RenderObject : protected core::RenderObject
    {
        private: static std::vector<core::RenderObject*> objs;

        private: std::shared_ptr<Texture> texture;

        public: float         GetX();
        public: RenderObject &SetX(float value);

        public: float         GetY();
        public: RenderObject &SetY(float value);

        public: uint16_t              GetWidth();
        public: virtual RenderObject &SetWidth(uint16_t value);

        public: uint16_t              GetHeight();
        public: virtual RenderObject &SetHeight(uint16_t value);

        public: float         GetAngle();
        public: RenderObject &SetAngle(float value);

        public: core::Flip    GetFlip();
        public: RenderObject &SetFlip(core::Flip value);

        public: float         GetLayer();
        public: RenderObject &SetLayer(float value);

        public: uint8_t       GetPriority();
        public: RenderObject &SetPriority(uint8_t value);

        public: Texture      &GetTexture();
        public: RenderObject &SetTexture(Texture *value);

        public: uint8_t       GetColorR();
        public: RenderObject &SetColorR(uint8_t value);

        public: uint8_t       GetColorG();
        public: RenderObject &SetColorG(uint8_t value);

        public: uint8_t       GetColorB();
        public: RenderObject &SetColorB(uint8_t value);

        public: uint8_t       GetColorA();
        public: RenderObject &SetColorA(uint8_t value);

        protected:  RenderObject(Texture *texture);
        public:    ~RenderObject();

        public: static void UpdateRender();
    };
}
