#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class wze_error final : public std::runtime_error {
        public: inline wze_error(const char *const what)
                : std::runtime_error(what) {}
        
        public: inline wze_error(const std::string what)
                : std::runtime_error(what) {}
    };

    class invalid_float_error final : public std::invalid_argument {
        public: inline invalid_float_error(const char *const what) 
                : std::invalid_argument(what) {}

        public: inline invalid_float_error(const std::string what) 
                : std::invalid_argument(what) {}
    };
}
