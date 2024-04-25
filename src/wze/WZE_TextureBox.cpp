#include "../../inc/WZE/WZE_TextureBox.hpp"

namespace wze
{
    Texture &TextureBox::GetTexture()
    {
        return *this->texture;
    }

    void TextureBox::SetTexture(Texture *value)
    {
        this->texture.reset(value);
        this->SetData(texture == nullptr ? nullptr : texture->GetData());
    }

    TextureBox::TextureBox(float       x,
                           float       y,
                           uint16_t    width,
                           uint16_t    height,
                           float       angle,
                           core::Flip  flip,
                           float       layer,
                           uint8_t     priority,
                           Texture    *texture,
                           uint8_t     color_r,
                           uint8_t     color_g,
                           uint8_t     color_b,
                           uint8_t     color_a)
        : RenderObject(x,
                       y,
                       width,
                       height,
                       angle,
                       flip,
                       layer,
                       priority,
                       nullptr,
                       color_r,
                       color_g,
                       color_b,
                       color_a)
    {
        this->SetTexture(texture);
    }

    TextureBox::TextureBox()
        : TextureBox(0,
                     0,
                     0,
                     0,
                     0,
                     core::FLIP_NONE,
                     0,
                     UINT8_MAX >> 1,
                     nullptr,
                     UINT8_MAX,
                     UINT8_MAX,
                     UINT8_MAX,
                     UINT8_MAX) {}
}
