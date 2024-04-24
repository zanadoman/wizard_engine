#include "../../inc/WZE/WZE_render.hpp"

namespace wze
{
    std::vector<core::RenderObject*> RenderObject::objs;

    float RenderObject::GetX()
    {
        return this->x;
    }

    RenderObject &RenderObject::SetX(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        this->x = value;
        return *this;
    }

    float RenderObject::GetY()
    {
        return this->y;
    }

    RenderObject &RenderObject::SetY(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        this->y = y;
        return *this;
    }

    uint16_t RenderObject::GetWidth()
    {
        return this->width;
    }

    RenderObject &RenderObject::SetWidth(uint16_t width)
    {
        this->width = width;
        return *this;
    }

    uint16_t RenderObject::GetHeight()
    {
        return this->height;
    }

    RenderObject &RenderObject::SetHeight(uint16_t height)
    {
        this->height = height;
        return *this;
    }

    float RenderObject::GetAngle()
    {
        return this->angle;
    }

    RenderObject &RenderObject::SetAngle(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("invalid value");
        }

        this->angle = value;
        return *this;
    }

    core::Flip RenderObject::GetFlip()
    {
        return this->flip;
    }

    RenderObject &RenderObject::SetFlip(core::Flip value)
    {
        if (value < core::FLIP_NONE || core::FLIP_COUNT <= value)
        {
            throw std::invalid_argument("invalid value");
        }

        this->flip = flip;
        return *this;
    }

    float RenderObject::GetLayer()
    {
        return this->layer;
    }

    RenderObject &RenderObject::SetLayer(float value)
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
        return *this;
    }

    uint8_t RenderObject::GetPriority()
    {
        return this->priority;
    }

    RenderObject &RenderObject::SetPriority(uint8_t priority)
    {
        this->priority = priority;
        return *this;
    }

    Texture &RenderObject::GetTexture()
    {
        return *this->texture;
    }

    RenderObject &RenderObject::SetTexture(Texture *value)
    {
        this->texture.reset(value);

        if (value == nullptr)
        {
            this->data = nullptr;
        }
        else
        {
            this->data = value->GetData();
        }

        return *this;
    }

    uint8_t RenderObject::GetColorR()
    {
        return this->color.r;
    }

    RenderObject &RenderObject::SetColorR(uint8_t r)
    {
        this->color.r = r;
        return *this;
    }
    uint8_t RenderObject::GetColorG()
    {
        return this->color.g;
    }

    RenderObject &RenderObject::SetColorG(uint8_t g)
    {
        this->color.g = g;
        return *this;
    }
    uint8_t RenderObject::GetColorB()
    {
        return this->color.b;
    }

    RenderObject &RenderObject::SetColorB(uint8_t b)
    {
        this->color.b = b;
        return *this;
    }
    uint8_t RenderObject::GetColorA()
    {
        return this->color.a;
    }

    RenderObject &RenderObject::SetColorA(uint8_t a)
    {
        this->color.a = a;
        return *this;
    }

    RenderObject::RenderObject(Texture *texture)
    {
        this->SetX(0);
        this->SetY(0);
        this->SetWidth(0);
        this->SetHeight(0);
        this->SetAngle(0);
        this->SetFlip(core::FLIP_NONE);
        this->SetLayer(0);
        this->SetPriority(UINT8_MAX >> 1);
        this->SetTexture(texture);
        this->SetColorR(UINT8_MAX);
        this->SetColorG(UINT8_MAX);
        this->SetColorB(UINT8_MAX);
        this->SetColorA(UINT8_MAX);

        this->objs.push_back(this);
    }

    RenderObject::~RenderObject()
    {
        this->objs.erase(std::remove(this->objs.begin(), this->objs.end(), this));
    }

    void RenderObject::UpdateRender()
    {
        core::UpdateRender(RenderObject::objs.data(),
                           RenderObject::objs.data() + RenderObject::objs.size());
    }
}
