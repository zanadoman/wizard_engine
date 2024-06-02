#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    class error : std::exception {
        private:
        std::string _what;

        public:
        char const* what() const noexcept final;
        error(std::string const& what);
    };

    class sdl_error : error {
        protected:
        sdl_error(std::string const& what);

        public:
        sdl_error();
    };

    class sdl_image_error final : sdl_error {
        public:
        sdl_image_error();
    };

    class sdl_mixer_error final : sdl_error {
        public:
        sdl_mixer_error();
    };

    class sdl_ttf_error final : sdl_error {
        public:
        sdl_ttf_error();
    };

    class argument_error final : error {
        public:
        argument_error(std::string const& what);
    };

    class projection_error final : error {
        public:
        projection_error(std::string const& what);
    };
} // namespace wze
