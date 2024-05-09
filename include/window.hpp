#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
class window final
{
  private:
    static SDL_Window* base;

  private:
    static SDL_Renderer* renderer;

  private:
    static uint16_t width;

  private:
    static uint16_t height;

  public:
    static uint16_t get_width(void);

  public:
    static uint16_t get_height(void);

  public:
    static SDL_Window* _get_base(void);

  public:
    static SDL_Renderer* _get_renderer(void);

  public:
    static void open(const std::string title,
                     const std::string icon_path,
                     uint16_t          width,
                     uint16_t          height);
};
} // namespace wze
