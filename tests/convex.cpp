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

std::vector<std::pair<float, float>>
extract_image(std::shared_ptr<wze::image> const& image) {
    std::vector<std::pair<float, float>> extracted;
    int32_t half_width;
    int32_t half_height;
    int32_t i;
    int32_t j;

    if (image->format->BytesPerPixel != 4) {
        return extracted;
    }

    half_width = image->w / 2;
    half_height = image->h / 2;
    for (i = 0; i != image->h; ++i) {
        for (j = 0; j != image->w; ++j) {
            // NOLINTNEXTLINE(bugprone-implicit-widening-of-multiplication-result,cppcoreguidelines-pro-bounds-pointer-arithmetic)
            if ((bool)static_cast<uint8_t*>(
                    image->pixels)[(i * image->w + j) * 4 + 3]) {
                extracted.emplace_back(j - half_width, i - half_height);
            }
        }
    }

    return extracted;
}

float cross_product(std::pair<float, float> const& origo,
                    std::pair<float, float> const& point1,
                    std::pair<float, float> const& point2) {
    return (point1.first - origo.first) * (point2.second - origo.second) -
           (point1.second - origo.second) * (point2.first - origo.first);
}

std::vector<std::pair<float, float>>
create_convex_hull(std::vector<std::pair<float, float>> const& points) {
    std::vector<std::pair<float, float>> convex_hull;
    size_t i;
    size_t j;
    size_t k;

    if (points.size() <= 3) {
        return convex_hull;
    }

    convex_hull.resize(points.size() * 2);
    for (i = 0, j = 0; i != points.size(); ++i) {
        while (2 <= j &&
               cross_product(convex_hull.at(j - 2), convex_hull.at(j - 1),
                             points.at(i)) <= 0) {
            --j;
        }
        convex_hull.at(j++) = points.at(i);
    }
    for (i = points.size() - 1, k = j + 1; (bool)i; --i) {
        while (k <= j &&
               cross_product(convex_hull.at(j - 2), convex_hull.at(j - 1),
                             points.at(i - 1)) <= 0) {
            --j;
        }
        convex_hull.at(j++) = points.at(i - 1);
    }
    convex_hull.resize(j - 1);

    return convex_hull;
}

wze_main("Wizard Engine - Spatial", 1920, 1080) {
    std::vector<std::pair<float, float>> extracted_image;
    std::vector<std::pair<float, float>> convex_hull;
    std::shared_ptr<wze::texture> texture;
    std::vector<wze::sprite> sprites;

    extracted_image =
        extract_image(wze::assets::load_image("./wizard_engine/logo.png"));
    convex_hull = create_convex_hull(extracted_image);

    texture = wze::assets::create_texture(
        wze::assets::load_image("./tests/image.png"));
    std::for_each(extracted_image.begin(), extracted_image.end(),
                  [&](std::pair<float, float> const& pixel) {
                      sprites.emplace_back(pixel.first, pixel.second, 0, 0, 1,
                                           1, false, texture);
                  });
    std::for_each(convex_hull.begin(), convex_hull.end(),
                  [&](std::pair<float, float> const& pixel) {
                      sprites.emplace_back(
                          pixel.first, pixel.second, 0, 0, 3, 3, false, texture,
                          std::numeric_limits<uint8_t>::max(), 0, 0);
                  });

    wze_while(true);

    return 0;
}
