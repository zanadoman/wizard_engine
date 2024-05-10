#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "render.hpp" // IWYU pragma: keep

namespace wze {
class engine final {
  private:
    static std::deque<SDL_Event> events;

  public:
    static auto get_events() -> const std::deque<SDL_Event> &;

  public:
    static void init();

  public:
    static auto update() -> bool;
};
} // namespace wze
