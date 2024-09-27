/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

#include <wizard_engine/wizard_engine.hpp>

constexpr uint8_t font_size = 48;

wze_main("Wizard Engine - Text", 1920, 1080) {
    std::string text;
    bool update;
    std::shared_ptr<wze::font> font;
    std::shared_ptr<wze::image> image;
    wze::sprite sprite;

    font = wze::assets::load_font("./tests/FreeSerif.ttf", font_size,
                                  wze::FONT_STYLE_NORMAL,
                                  wze::FONT_ALIGNMENT_CENTER);

    wze_while(true) {
        update = false;
        if (wze::input::key() == '\b') {
            if (!text.empty()) {
                text.pop_back();
                update = true;
            }
        } else if (wze::input::key() != '\0') {
            text.push_back((char)wze::input::key());
            update = true;
        }
        if (update) {
            try {
                image = wze::assets::create_image(text, font,
                                                  wze::window::width() / 2);
            } catch (...) {
                sprite.set_texture(nullptr);
                continue;
            }
            sprite.set_width((float)image->w);
            sprite.set_height((float)image->h);
            sprite.set_texture(wze::assets::create_texture(image));
        }
    }

    return 0;
}
