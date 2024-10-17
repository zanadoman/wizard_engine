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

#include <wizard_engine/exception.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/net.hpp>
#include <wizard_engine/socket.hpp>

namespace wze {
/**
 * @class udp_socket
 * @brief UDP socket.
 * @tparam incoming Type of the incoming data.
 * @tparam outgoing Type of the outgoing data.
 * @sa net
 * @sa udp_socket
 * @sa tcp_socket
 */
template <typename incoming, typename outgoing>
class udp_socket final : public socket<incoming, outgoing> {
  public:
    /**
     * @brief Explicit constructor.
     * @param ipv4 IPv4 address of the server.
     * @exception wze::exception udp_socket cannot be opened.
     * @sa net::resolve(std::string const& hostname, uint16_t port = 0)
     */
    explicit udp_socket(wze::ipv4 const& ipv4)
        : _incoming{-1, nullptr,         sizeof(incoming), sizeof(incoming),
                    0,  {INADDR_NONE, 0}},
          _outgoing{-1, nullptr, sizeof(outgoing), sizeof(outgoing), 0, ipv4} {
        if (this->ipv4().host == INADDR_ANY ||
            this->ipv4().host == INADDR_NONE) {
            throw exception("Invalid IPv4 address");
        }
        _socket = {SDLNet_UDP_Open(0), SDLNet_UDP_Close};
        if (!_socket) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @brief Gets the IPv4 address of the server.
     * @return IPv4 address of the server.
     */
    [[nodiscard]] wze::ipv4 const& ipv4() const final {
        return _outgoing.address;
    }

    /**
     * @brief Receives data from the server.
     * @param buffer Data buffer.
     * @return Integrity of the received data.
     * @retval true Received appropriate data.
     * @retval false Received invalid data.
     * @exception wze::exception Data cannot be received properly.
     * @sa send(outgoing const& buffer)
     */
    [[nodiscard]] bool receive(incoming& buffer) final {
        _incoming.data = (uint8_t*)&buffer;
        switch (SDLNet_UDP_Recv(_socket.get(), &_incoming)) {
        case 0:
            return false;
        case 1:
            return _incoming.address == ipv4() &&
                   _incoming.len == sizeof(incoming);
        default:
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @brief Sends data to the server.
     * @param buffer Data buffer.
     * @exception wze::exception Data cannot be sent properly.
     * @sa receive(incoming& buffer)
     */
    void send(outgoing const& buffer) final {
        _outgoing.data = (uint8_t*)&buffer;
        if (!(bool)SDLNet_UDP_Send(_socket.get(), -1, &_outgoing)) {
            throw exception(SDLNet_GetError());
        }
    }

  private:
    UDPpacket _incoming;
    UDPpacket _outgoing;
    std::shared_ptr<_UDPsocket> _socket;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_UDP_SOCKET_HPP */
