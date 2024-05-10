#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
class math final {
  public:
    static auto distance(float init_x, float init_y, float term_x, float term_y)
        -> float;

  public:
    static auto angle(float init_x, float init_y, float term_x, float term_y)
        -> float;

  public:
    static auto move_x(float distance, float angle) -> float;

  public:
    static auto move_y(float distance, float angle) -> float;
};
} // namespace wze
