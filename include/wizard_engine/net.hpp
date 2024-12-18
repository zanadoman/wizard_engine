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
 * @file net.hpp
 * @brief Network modul.
 * @sa socket.hpp
 * @sa udp_socket.hpp
 * @sa tcp_socket.hpp
 */

#ifndef WIZARD_ENGINE_NET_HPP
#define WIZARD_ENGINE_NET_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @brief IPv4 address.
 */
using ipv4 = IPaddress;

/**
 * @brief Network modul.
 * @sa socket
 * @sa udp_socket
 * @sa tcp_socket
 */
class net final {
  public:
    /**
     * @brief Deleted explicit constructor.
     */
    explicit net() = delete;

    /**
     * @brief Resolves a hostname to a wze::ipv4 address.
     * @param hostname Hostname of the server.
     * @param port Port of the server.
     * @return Resolved wze::ipv4 address.
     * @exception wze::exception Hostname cannot be resolved.
     */
    [[nodiscard]] static ipv4 resolve(std::string const& hostname,
                                      uint16_t port = 0);

    /**
     * @brief Resolves an wze::ipv4 address to a hostname.
     * @param address wze::ipv4 address of the server.
     * @return Resolved hostname.
     * @exception wze::exception wze::ipv4 address cannot be resolved.
     */
    [[nodiscard]] static std::string resolve(ipv4 const& address);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_NET_HPP */
