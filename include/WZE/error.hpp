#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class error : std::exception {
        private:
        std::string _what;

        public:
        error(std::string const& what);
        char const* what() const noexcept final;
    };

    class argument_error : error {
        public:
        argument_error(std::string const& what);
    };

    class projection_error : error {
        public:
        projection_error(std::string const& what);
    };
}
