#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "render.hpp" // IWYU pragma: keep

namespace wze {
class engine final
{
  private:
    static std::vector<SDL_Event> events;

  public:
    static void init(void);

  public:
    static bool update(void);
};
} // namespace wze
