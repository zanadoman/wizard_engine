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
 * @file udp_socket.hpp
 * @brief UDP socket.
 * @sa net.hpp
 * @sa socket.hpp
 * @sa tcp_socket.hpp
 */

#ifndef WIZARD_ENGINE_UDP_SOCKET_HPP
#define WIZARD_ENGINE_UDP_SOCKET_HPP

#include <wizard_engine/errors.hpp>
#include <wizard_engine/exception.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/net.hpp>

namespace wze {
/**
 * @brief UDP socket.
 * @tparam incoming Type of the incoming data.
 * @tparam outgoing Type of the outgoing data.
 * @sa net
 * @sa udp_socket
 * @sa tcp_socket
 */
class udp_socket final {
  public:
    /**
     * @brief Explicit constructor.
     * @param ipv4 IPv4 address of the server.
     * @exception wze::exception <socket_error> udp_socket cannot be opened.
     * @sa net::resolve(std::string const& hostname, uint16_t port = 0)
     */
    explicit udp_socket(wze::ipv4 const& ipv4)
        : _incoming{-1, nullptr, 0, 0, 0, {INADDR_NONE, 0}},
          _outgoing{-1, nullptr, 0, 0, 0, {ipv4}} {
        if (this->ipv4().host == INADDR_ANY ||
            this->ipv4().host == INADDR_NONE) {
            throw exception<socket_error>{{"Invalid IPv4 address"}};
        }
        _socket = {SDLNet_UDP_Open(0), SDLNet_UDP_Close};
        if (!_socket) {
            throw exception<socket_error>{{SDLNet_GetError()}};
        }
    }

    /**
     * @brief Gets the wze::ipv4 address of the server.
     * @return wze::ipv4 address of the server.
     */
    [[nodiscard]] wze::ipv4 const& ipv4() const {
        return _outgoing.address;
    }

    /**
     * @brief Receives data from the server.
     * @param buffer Data buffer.
     * @return Integrity of the received data.
     * @retval true Received appropriate data.
     * @retval false Received invalid data.
     * @exception wze::exception <socket_error> Data cannot be received
     * properly.
     * @sa send(outgoing const& buffer)
     */
    template <typename packet> [[nodiscard]] int32_t receive(packet& buffer) {
        static_assert(sizeof(buffer) <= std::numeric_limits<int32_t>::max());
        _incoming.data = static_cast<uint8_t*>(&buffer);
        _incoming.len = 0;
        _incoming.maxlen = sizeof(buffer);
        switch (SDLNet_UDP_Recv(_socket.get(), &_incoming)) {
        case 1:
            if (_incoming.address.host == ipv4().host &&
                _incoming.address.port == ipv4().port) {
                return _incoming.len;
            }
        case 0:
            return 0;
        default:
            throw exception<socket_error>{{SDLNet_GetError()}};
        }
    }

    /**
     * @brief Sends data to the server.
     * @param buffer Data buffer.
     * @exception wze::exception Data cannot be sent properly.
     * @sa receive(incoming& buffer)
     */
    template <typename packet> void send(packet const& buffer) {
        static_assert(sizeof(buffer) <= std::numeric_limits<int32_t>::max());
        _outgoing.data = static_cast<uint8_t*>(&buffer);
        _outgoing.len = sizeof(buffer);
        _outgoing.maxlen = sizeof(buffer);
        if (!static_cast<bool>(
                SDLNet_UDP_Send(_socket.get(), -1, &_outgoing))) {
            throw exception<socket_error>{{SDLNet_GetError()}};
        }
    }

  private:
    UDPpacket _incoming;
    UDPpacket _outgoing;
    std::shared_ptr<_UDPsocket> _socket;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_UDP_SOCKET_HPP */
