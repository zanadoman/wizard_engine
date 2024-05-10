#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
class timer final {
  private:
    static uint8_t frametime;

  private:
    static uint64_t lasttime;

  private:
    static uint8_t deltatime;

  public:
    static auto get_frametime() -> uint8_t;

  public:
    static void set_frametime(uint8_t frametime);

  public:
    static auto get_deltatime() -> uint8_t;

  public:
    static void set_deltatime(uint8_t deltatime);

  public:
    static auto get_time() -> uint64_t;

  public:
    static void _update();
};
} // namespace wze
