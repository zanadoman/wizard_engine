#include "WZE/error.hpp"

char const* wze::error::what() const noexcept {
    return _what.c_str();
}

wze::error::error(std::string const& what) {
    _what = what;
}

wze::sdl_error::sdl_error(std::string const& what) : error(what) {}

wze::sdl_error::sdl_error() : sdl_error(SDL_GetError()) {}

wze::sdl_image_error::sdl_image_error() : sdl_error(IMG_GetError()) {}

wze::sdl_mixer_error::sdl_mixer_error() : sdl_error(Mix_GetError()) {}

wze::sdl_ttf_error::sdl_ttf_error() : sdl_error(TTF_GetError()) {}

wze::argument_error::argument_error(std::string const& what) : error(what) {}

wze::projection_error::projection_error(std::string const& what)
    : error(what) {}
