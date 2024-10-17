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
 * @file socket.hpp
 * @brief Generic socket.
 * @sa net.hpp
 * @sa udp_socket.hpp
 * @sa tcp_socket.hpp
 */

#ifndef WIZARD_ENGINE_SOCKET_HPP
#define WIZARD_ENGINE_SOCKET_HPP

#include <wizard_engine/export.hpp>
#include <wizard_engine/net.hpp>

namespace wze {
/**
 * @brief Generic socket.
 * @tparam incoming Type of the incoming data.
 * @tparam outgoing Type of the outgoing data.
 * @sa net
 * @sa udp_socket
 * @sa tcp_socket
 */
template <typename incoming, typename outgoing> class socket {
    static_assert(sizeof(incoming) <= std::numeric_limits<int32_t>::max() &&
                  sizeof(outgoing) <= std::numeric_limits<int32_t>::max());

  public:
    /**
     * Default virtual destructor.
     */
    virtual ~socket() = default;

    /**
     * @brief Gets the wze::ipv4 address of the server.
     * @return wze::ipv4 address of the server.
     */
    [[nodiscard]] virtual ipv4 const& ipv4() const = 0;

    /**
     * @brief Receives data from the server.
     * @param buffer Data buffer.
     * @return Integrity of the received data.
     * @retval true Received appropriate data.
     * @retval false Received invalid data.
     * @exception wze::exception Data cannot be received properly.
     * @sa send(outgoing const& buffer)
     */
    virtual void receive(incoming& buffer) = 0;

    /**
     * @brief Sends data to the server.
     * @param buffer Data buffer.
     * @exception wze::exception Data cannot be sent properly.
     * @sa receive(incoming& buffer)
     */
    virtual bool send(outgoing const& buffer) = 0;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_SOCKET_HPP */
