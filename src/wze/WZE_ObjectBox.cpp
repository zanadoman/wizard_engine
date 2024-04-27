#include "../../inc/WZE/WZE_ObjectBox.hpp"

namespace wze
{
    float *ObjectBox::GetOrigoX()
    {
        return this->origo_x;
    }

    void ObjectBox::SetOrigoX(float *value)
    {
        this->origo_x = value;
    }

    float *ObjectBox::GetOrigoY()
    {
        return this->origo_y;
    }

    void ObjectBox::SetOrigoY(float *value)
    {
        this->origo_y = value;
    }

    float *ObjectBox::GetOrigoAngle()
    {
        return this->origo_angle;
    }

    void ObjectBox::SetOrigoAngle(float* value)
    {
        this->origo_angle = value;
    }

    float ObjectBox::GetX()
    {
        return this->x;
    }

    void ObjectBox::SetX(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        if (this->origo_x != nullptr && *this->origo_x == *this->origo_x)
        {
            this->offset_x = value - *this->origo_x;
            this->offset_length = wzc::GetDistance(*this->origo_x, *this->origo_y,
                                                   value, this->y);
            this->offset_angle = wzc::GetAngle(*this->origo_x, *this->origo_y,
                                               value, this->y);
        }

        this->x = value; 
    }

    float ObjectBox::GetY()
    {
        return this->y;
    }

    void ObjectBox::SetY(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        if (this->origo_y != nullptr && *this->origo_y == *this->origo_y)
        {
            this->offset_y = value - *this->origo_y;
            this->offset_length = wzc::GetDistance(*this->origo_x, *this->origo_y,
                                                   this->x, value);
            this->offset_angle = wzc::GetAngle(*this->origo_x, *this->origo_y,
                                               this->x, value);
        }

        this->y = value;
    }

    float ObjectBox::GetAngle()
    {
        return this->angle;
    }

    void ObjectBox::SetAngle(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        this->angle = value;
    }

    float ObjectBox::GetOffsetX()
    {
        return this->offset_x;
    }

    void ObjectBox::SetOffsetX(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        if (this->origo_x != nullptr && *this->origo_x == *this->origo_x)
        {
            this->x = *this->origo_x + value;
            this->offset_length = wzc::GetDistance(*this->origo_x, *this->origo_y,
                                                   this->x, this->y);
            this->offset_angle = wzc::GetAngle(*this->origo_x, *this->origo_y,
                                               this->x, this->y);
        }

        this->offset_x = value;
    }

    float ObjectBox::GetOffsetY()
    {
        return this->offset_y;
    }

    void ObjectBox::SetOffsetY(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        if (this->origo_y != nullptr && *this->origo_y == *this->origo_y)
        {
            this->y = *this->origo_y + value;
            this->offset_length = wzc::GetDistance(*this->origo_x, *this->origo_y,
                                                   this->x, this->y);
            this->offset_angle = wzc::GetAngle(*this->origo_x, *this->origo_y,
                                               this->x, this->y);
        }

        this->offset_y = value;
    }

    float ObjectBox::GetOffsetLength()
    {
        return this->offset_length;
    }

    void ObjectBox::SetOffsetLength(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        if (this->origo_x != nullptr)
        {
            this->x = GetTermX(*this->origo_x, value, this->offset_angle);
            this->offset_x = this->x - *this->origo_x;
        }
        if (this->origo_y != nullptr)
        {
            this->y = GetTermY(*this->origo_y, value, this->offset_angle);
            this->offset_y = this->y - *this->origo_y;
        }

        this->offset_length = value;
    }

    float ObjectBox::GetOffsetAngle()
    {
        return this->offset_angle;
    }

    void ObjectBox::SetOffsetAngle(float value)
    {
        if (value != value)
        {
            throw std::invalid_argument("NaN value");
        }

        if (this->origo_x != nullptr)
        {
            this->x = GetTermX(*this->origo_x, this->offset_length, value);
            this->offset_x = this->x - *this->origo_x;
        }
        if (this->origo_y != nullptr)
        {
            this->y = GetTermY(*this->origo_y, this->offset_length, value);
            this->offset_y = this->y - *this->origo_y;
        }

        this->offset_angle = value;
    }

    bool ObjectBox::GetXLock()
    {
        return this->x_lock;
    }

    void ObjectBox::SetXLock(bool value)
    {
        if (value && this->origo_x != nullptr && *this->origo_x == *this->origo_x)
        {
            this->x = *this->origo_x + this->offset_x;
        }

        this->x_lock = value;
    }

    bool ObjectBox::GetYLock()
    {
        return this->y_lock;
    }

    void ObjectBox::SetYLock(bool value)
    {
        if (value && this->origo_y != nullptr && *this->origo_y == *this->origo_y)
        {
            this->y = *this->origo_y + this->offset_y;
        }

        this->y_lock = value;
    }

    void ObjectBox::UpdatePosition()
    {
        if (this->x_lock && this->origo_x != nullptr && *this->origo_x == *this->origo_x)
        {
            this->x = *this->origo_x + this->offset_x;
        }
        if (this->y_lock && this->origo_y != nullptr && *this->origo_y == *this->origo_y)
        {
            this->y = *this->origo_y + this->offset_y;
        }
    }
}
