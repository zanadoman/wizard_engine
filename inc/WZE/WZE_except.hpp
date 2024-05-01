#pragma once

#include "WZE_include.hpp" // IWYU pragma: keep

namespace wze
{
    class wze_error : public std::runtime_error
    {
        public: inline
                wze_error(const char *const what)
                    : std::runtime_error(what) {}
        
        public: inline
                wze_error(const std::string what)
                    : std::runtime_error(what) {}

        public: inline virtual
                ~wze_error() = default;
    };

    class invalid_float_error : public std::invalid_argument
    {
        public: inline
                invalid_float_error(const char *const what)
                    : std::invalid_argument(what) {}

        public: inline
                invalid_float_error(const std::string what)
                    : std::invalid_argument(what) {}
    
        public: inline virtual
                ~invalid_float_error() = default;
    };
}
