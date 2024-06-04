#pragma once

#include <algorithm> // IWYU pragma: keep
#include <array>     // IWYU pragma: keep
#include <cstddef>   // IWYU pragma: keep
#include <cstdint>   // IWYU pragma: keep
#include <deque>     // IWYU pragma: keep
#include <memory>    // IWYU pragma: keep
#include <ranges>    // IWYU pragma: keep
#include <stdexcept> // IWYU pragma: keep
#include <string>    // IWYU pragma: keep
#include <vector>    // IWYU pragma: keep

#include "SDL2/SDL.h"       // IWYU pragma: keep
#include "SDL2/SDL_image.h" // IWYU pragma: keep
#include "SDL2/SDL_mixer.h" // IWYU pragma: keep
#include "SDL2/SDL_ttf.h"   // IWYU pragma: keep

namespace wze {
    constexpr float TO_RADF = M_PIf / 180.f;
    constexpr float TO_DEGF = 180.f / M_PIf;
} // namespace wze
