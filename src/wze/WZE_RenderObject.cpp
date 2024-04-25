#include "../../inc/WZE/WZE_RenderObject.hpp"

namespace wze
{
    std::vector<wzc::RenderObject*> RenderObject::objs;

    float RenderObject::GetX()
    {
        return this->x;
    }

    void RenderObject::SetX(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        this->x = value;
    }

    float RenderObject::GetY()
    {
        return this->y;
    }

    void RenderObject::SetY(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        this->y = y;
    }

    uint16_t RenderObject::GetWidth()
    {
        return this->width;
    }

    void RenderObject::SetWidth(uint16_t width)
    {
        this->width = width;
    }

    uint16_t RenderObject::GetHeight()
    {
        return this->height;
    }

    void RenderObject::SetHeight(uint16_t height)
    {
        this->height = height;
    }

    float RenderObject::GetAngle()
    {
        return this->angle;
    }

    void RenderObject::SetAngle(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("invalid value");
        }

        this->angle = value;
    }

    wzc::Flip RenderObject::GetFlip()
    {
        return this->flip;
    }

    void RenderObject::SetFlip(wzc::Flip value)
    {
        if (value < wzc::FLIP_NONE || wzc::FLIP_COUNT <= value)
        {
            throw std::invalid_argument("invalid value");
        }

        this->flip = flip;
    }

    float RenderObject::GetLayer()
    {
        return this->layer;
    }

    void RenderObject::SetLayer(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }
        if (value < 0)
        {
            throw std::invalid_argument("negative value");
        }

        this->layer = value;
    }

    uint8_t RenderObject::GetPriority()
    {
        return this->priority;
    }

    void RenderObject::SetPriority(uint8_t priority)
    {
        this->priority = priority;
    }

    SDL_Texture *RenderObject::GetData()
    {
        return this->data;
    }

    void RenderObject::SetData(SDL_Texture *value)
    {
        this->data = value;
    }

    uint8_t RenderObject::GetColorR()
    {
        return this->color.r;
    }

    void RenderObject::SetColorR(uint8_t r)
    {
        this->color.r = r;
    }
    uint8_t RenderObject::GetColorG()
    {
        return this->color.g;
    }

    void RenderObject::SetColorG(uint8_t g)
    {
        this->color.g = g;
    }
    uint8_t RenderObject::GetColorB()
    {
        return this->color.b;
    }

    void RenderObject::SetColorB(uint8_t b)
    {
        this->color.b = b;
    }
    uint8_t RenderObject::GetColorA()
    {
        return this->color.a;
    }

    void RenderObject::SetColorA(uint8_t a)
    {
        this->color.a = a;
    }

    RenderObject::RenderObject(float        x,
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
                               uint8_t      color_a)
    {
        this->SetX(x);
        this->SetY(y);
        this->SetWidth(width);
        this->SetHeight(height);
        this->SetAngle(angle);
        this->SetFlip(flip);
        this->SetLayer(layer);
        this->SetPriority(priority);
        this->SetData(data);
        this->SetColorR(color_r);
        this->SetColorG(color_g);
        this->SetColorB(color_b);
        this->SetColorA(color_a);

        this->objs.push_back(this);
    }

    RenderObject::RenderObject()
        : RenderObject(0,
                       0,
                       0,
                       0,
                       0,
                       wzc::FLIP_NONE,
                       0,
                       UINT8_MAX >> 1,
                       nullptr,
                       UINT8_MAX,
                       UINT8_MAX,
                       UINT8_MAX,
                       UINT8_MAX) {}

    RenderObject::~RenderObject()
    {
        this->objs.erase(std::remove(this->objs.begin(), this->objs.end(), this));
    }

    void RenderObject::UpdateRender()
    {
        wzc::UpdateRender(RenderObject::objs.data(),
                           RenderObject::objs.data() + RenderObject::objs.size());
    }
}
