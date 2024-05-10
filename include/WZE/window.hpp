#pragma once

#include "common.hpp" // IWYU pragma: keep
#include <cstdint>

namespace wze {
class window final {
  private:
    static SDL_Window *base;

  private:
    static SDL_Renderer *renderer;

  private:
    static uint16_t width;

  private:
    static uint16_t height;

  public:
    static auto get_width() -> uint16_t;

  public:
    static auto get_height() -> uint16_t;

  public:
    static auto _get_base() -> SDL_Window *;

  public:
    static auto _get_renderer() -> SDL_Renderer *;

  public:
    static void open(const std::string &title, const std::string &icon_path,
                     uint16_t width, uint16_t height);
};
} // namespace wze
