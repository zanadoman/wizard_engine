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

#ifndef WIZARD_ENGINE_NET_HPP
#define WIZARD_ENGINE_NET_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file net.hpp
 * @author Zana Domán
 * @brief IPv4 address.
 */
using ipv4 = IPaddress;

/**
 * @file net.hpp
 * @author Zana Domán
 * @brief Subsystem to handle networking.
 */
class net {
  private:
    /**
     * @file net.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    net() = default;

  public:
    /**
     * @file net.hpp
     * @author Zana Domán
     * @brief Resolves a hostname to an IPv4 address.
     * @param hostname Hostname of the server.
     * @param port Port of the server.
     * @return Resolved IPv4 address.
     * @warning If the hostname cannot be resolved, throws std::runtime_error.
     */
    [[nodiscard]] static ipv4 resolve(std::string const& hostname,
                                      uint16_t port = 0);

    /**
     * @file net.hpp
     * @author Zana Domán
     * @brief Resolves an IPv4 address to a hostname.
     * @param address IPv4 address of the server.
     * @return Resolved hostname.
     * @warning If the IPv4 address cannot be resolved, throws
     * std::runtime_error.
     */
    [[nodiscard]] static std::string resolve(ipv4 const& address);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_NET_HPP */
