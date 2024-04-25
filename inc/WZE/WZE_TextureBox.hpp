#pragma once

#include "WZE_include.hpp"
#include "WZE_RenderObject.hpp"
#include "WZE_assets.hpp"

namespace wze
{
    class TextureBox : public RenderObject
    {
        private: std::shared_ptr<Texture> texture;

        public: using RenderObject::GetX;
        public: using RenderObject::SetX;

        public: using RenderObject::GetY;
        public: using RenderObject::SetY;

        public: using RenderObject::GetWidth;
        public: using RenderObject::SetWidth;

        public: using RenderObject::GetHeight;
        public: using RenderObject::SetHeight;

        public: using RenderObject::GetAngle;
        public: using RenderObject::SetAngle;

        public: using RenderObject::GetFlip;
        public: using RenderObject::SetFlip;

        public: using RenderObject::GetLayer;
        public: using RenderObject::GetPriority;

        public: using RenderObject::SetLayer;
        public: using RenderObject::SetPriority;

        public: Texture            &GetTexture();
        public: void                SetTexture(Texture *value);

        public: using RenderObject::GetColorR;
        public: using RenderObject::SetColorR;

        public: using RenderObject::GetColorG;
        public: using RenderObject::SetColorG;

        public: using RenderObject::GetColorB;
        public: using RenderObject::SetColorB;

        public: using RenderObject::GetColorA;
        public: using RenderObject::SetColorA;

        public: TextureBox(float       x,
                           float       y,
                           uint16_t    width,
                           uint16_t    height,
                           float       angle,
                           wzc::Flip   flip,
                           float       layer,
                           uint8_t     priority,
                           Texture    *texture,
                           uint8_t     color_r,
                           uint8_t     color_g,
                           uint8_t     color_b,
                           uint8_t     color_a);
        
        public: TextureBox();
    };
}
