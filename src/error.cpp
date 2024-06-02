#include "WZE/error.hpp"

wze::error::error(std::string const& what) {
    _what = what;
}

char const* wze::error::what() const noexcept {
    return _what.c_str();
}

wze::argument_error::argument_error(std::string const& what) : error(what) {}

wze::projection_error::projection_error(std::string const& what)
    : error(what) {}
