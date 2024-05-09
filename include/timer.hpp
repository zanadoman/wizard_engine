#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
class timer final
{
  private:
    static uint8_t frametime;

  private:
    static uint64_t lasttime;

  private:
    static uint8_t deltatime;

  public:
    static uint8_t get_frametime(void);

  public:
    static void set_frametime(uint8_t frametime);

  public:
    static uint8_t get_deltatime(void);

  public:
    static void set_deltatime(uint8_t deltatime);

  public:
    static uint64_t get_time(void);

  public:
    static void _update(void);
};
} // namespace wze
