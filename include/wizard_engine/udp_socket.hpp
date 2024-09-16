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

#ifndef WIZARD_ENGINE_UDP_SOCKET_HPP
#define WIZARD_ENGINE_UDP_SOCKET_HPP

#include <wizard_engine/exception.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/net.hpp>

namespace wze {
/**
 * @file udp_socket.hpp
 * @author Zana Domán
 * @brief Establishes a UDP connection to a server.
 * @param outgoing Type of the outgoing data.
 * @param incoming Type of the incoming data.
 */
template <typename outgoing, typename incoming,
          typename = typename std::enable_if_t<
              sizeof(outgoing) <= std::numeric_limits<int32_t>::max() &&
              sizeof(incoming) <= std::numeric_limits<int32_t>::max()>>
class udp_socket final {
  private:
    std::shared_ptr<_UDPsocket> _socket;
    UDPpacket _outgoing;
    UDPpacket _incoming;

  public:
    /**
     * @file udp_socket.hpp
     * @author Zana Domán
     * @brief Returns the IPv4 address of the server.
     * @return IPv4 address of the server.
     */
    [[nodiscard]] wze::ipv4 ipv4() {
        return *SDLNet_UDP_GetPeerAddress(_socket.get(), -1);
    }

    /**
     * @file udp_socket.hpp
     * @author Zana Domán
     * @brief Constructs a UDP socket instance.
     * @param ipv4 IPv4 address of the server.
     * @warning If the UDP socket cannot be constructed, throws wze::exception.
     */
    explicit udp_socket(wze::ipv4 const& ipv4) {
        if (ipv4.host == INADDR_ANY || ipv4.host == INADDR_NONE) {
            throw exception("Invalid IPv4 address");
        }
        _socket = {SDLNet_UDP_Open(0), SDLNet_UDP_Close};
        if (!_socket) {
            throw exception(SDLNet_GetError());
        }
        _outgoing = {-1, nullptr, sizeof(outgoing), sizeof(outgoing), 0, ipv4};
        _incoming = {-1, nullptr, sizeof(incoming), sizeof(incoming), 0, ipv4};
    }

    /**
     * @file udp_socket.hpp
     * @author Zana Domán
     * @brief Sends data to the server.
     * @param buffer Data buffer.
     * @warning If data cannot be sent, throws wze::exception.
     */
    void send(outgoing& buffer) {
        _outgoing.data = (uint8_t*)&buffer;
        if (!(bool)SDLNet_UDP_Send(_socket.get(), -1, &_outgoing)) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @file udp_socket.hpp
     * @author Zana Domán
     * @brief Receives data from the server, then returns true on successful
     * data exchange, false otherwise.
     * @param buffer Data buffer.
     * @return True on successful data exchange, false otherwise.
     * @warning If data cannot be received, throws wze::exception.
     */
    [[nodiscard]] bool receive(incoming& buffer) {
        _incoming.data = (uint8_t*)&buffer;
        switch (SDLNet_UDP_Recv(_socket.get(), &_incoming)) {
        case 0:
            return false;
        case 1:
            return _incoming.len == sizeof(incoming);
        default:
            throw exception(SDLNet_GetError());
        }
    }
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_UDP_SOCKET_HPP */
