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

#include <iostream>
#include <wizard_engine/wizard_engine.hpp>

int64_t cross_product(std::pair<int64_t, int64_t> const& origo,
                      std::pair<int64_t, int64_t> const& point1,
                      std::pair<int64_t, int64_t> const& point2) {
    return (point1.first - origo.first) * (point2.second - origo.second) -
           (point1.second - origo.second) * (point2.first - origo.first);
}

std::vector<std::pair<int64_t, int64_t>>
create_convex(int32_t const* pixels, size_t width, size_t height) {
    size_t half_width;
    size_t half_height;
    size_t i;
    size_t j;
    std::vector<std::pair<int64_t, int64_t>> points;
    // std::vector<std::pair<int64_t, int64_t>> convex;
    // size_t k;

    half_width = width / 2;
    half_height = height / 2;
    for (i = 0; i != width; ++i) {
        for (j = 0; j != height; ++j) {
            // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-pointer-arithmetic)
            if ((bool)pixels[i + j * height]) {
                points.emplace_back(i - half_width, j - half_height);
            }
        }
    }

    // if (points.size() <= 3) {
    //     return points;
    // }
    //
    // std::sort(points.begin(), points.end(),
    //           [](std::pair<float, float> const& point1,
    //              std::pair<float, float> const& point2) {
    //               return point1.first < point2.first ||
    //                      (point1.first == point2.first &&
    //                       point1.second < point2.second);
    //           });
    // convex.resize(points.size() * 2);
    //
    // for (i = 0, j = 0; i < points.size(); ++i) {
    //
    //     while (2 <= j && cross_product(convex.at(j - 2), convex.at(j - 1),
    //                                    points.at(i)) <= 0) {
    //         --j;
    //     }
    //     convex.at(j++) = points.at(i);
    // }
    //
    // for (i = points.size() - 1, k = j + 1; 0 < i; --i) {
    //     while (j >= k && cross_product(convex.at(j - 2), convex.at(j - 1),
    //                                    points.at(i - 1)) <= 0) {
    //         --j;
    //     }
    //     convex.at(j++) = points.at(i - 1);
    // }
    //
    // convex.resize(j - 1);
    return points;
}

wze_main("Wizard Engine - Spatial", 1920, 1080) {
    std::shared_ptr<wze::image> image;
    std::shared_ptr<wze::texture> texture;
    std::vector<std::pair<int64_t, int64_t>> convex;
    std::vector<wze::sprite> pixels;

    image = wze::assets::load_image("./assets/wizard_engine/icon.png");
    texture = wze::assets::create_texture(
        wze::assets::load_image("./assets/tests/image.png"));
    convex =
        create_convex(static_cast<int32_t*>(image->pixels), image->w, image->h);

    std::for_each(convex.begin(), convex.end(),
                  [&](std::pair<int64_t, int64_t> const& vertex) {
                      pixels.emplace_back(vertex.first * 4, vertex.second * 4,
                                          0, 0, 4, 4, false, texture);
                      std::cout << vertex.first << ", " << vertex.second
                                << '\n';
                  });

    wze_while(true);

    return 0;
}
