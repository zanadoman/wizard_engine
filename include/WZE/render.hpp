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

#pragma once

#include <WZE/common.hpp>
#include <WZE/renderable.hpp>

namespace wze {
class render final {
    static SDL_Renderer* _base;
    static float_t _origo_x;
    static float_t _origo_y;
    static std::vector<renderable const*> _projectables;
    static std::vector<renderable const*> _inprojectables;
    render() = default;
    static void open_frame();
    static bool invisible(renderable const& instance);
    static void transform(renderable& instance);
    static bool offscreen(renderable const& instance);
    static void draw(renderable const& instance);
    static void close_frame();

  public:
    static std::vector<std::unique_ptr<renderable>>& instances();
#ifdef WZE_INTERNAL
    static SDL_Renderer* base();
#endif
    static float_t origo_x();
    static void set_origo_x(float_t origo_x);
    static float_t origo_y();
    static void set_origo_y(float_t origo_y);
#ifdef WZE_INTERNAL
    static void init();
#endif
#ifdef WZE_INTERNAL
    static void update();
#endif
#ifdef WZE_INTERNAL
    static std::pair<float_t, float_t> detransform(float_t x, float_t y);
#endif
};
} // namespace wze
