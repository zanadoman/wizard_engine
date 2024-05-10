#pragma once

#include "common.hpp" // IWYU pragma: keep
#include "window.hpp" // IWYU pragma: keep

namespace wze {
class render final {
  private:
    static void _open_frame(void);

  private:
    static void _close_frame(void);

  public:
    static void _update(void);
};
} // namespace wze
