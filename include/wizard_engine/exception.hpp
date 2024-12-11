/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

/**
 * @file exception.hpp
 * @brief Generic exception.
 * @sa errors.hpp
 */

#ifndef WIZARD_ENGINE_EXCEPTION_HPP
#define WIZARD_ENGINE_EXCEPTION_HPP

#include <wizard_engine/engine.hpp>
#include <wizard_engine/enums.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @brief Generic exception.
 * @tparam error Error specialization.
 * @sa errors.hpp
 */
template <typename error> class exception final : public std::exception {
  public:
    /**
     * @brief Explicit constructor.
     * @details Logs the explanatory string with LOG_LEVEL_ERROR.
     * @param what Explanatory string.
     * @sa log_level
     */
    explicit exception(std::string what) : _what{std::move(what)} {
        engine::log({this->what()}, {LOG_LEVEL_ERROR});
    }

    /**
     * @brief Deleted copy constructor.
     */
    exception(exception<error> const&) = delete;

    /**
     * @brief Deleted move constructor.
     */
    exception(exception<error>&&) = delete;

    /**
     * @brief Deleted copy assignment operator.
     */
    exception& operator=(exception<error> const&) = delete;

    /**
     * @brief Deleted move assignment operator.
     */
    exception& operator=(exception<error>&&) = delete;

    /**
     * @brief Gets the explanatory string.
     * @return Explanatory string.
     */
    [[nodiscard]] char const* what() const noexcept final {
        return _what.c_str();
    }

  private:
    std::string _what;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_EXCEPTION_HPP */
