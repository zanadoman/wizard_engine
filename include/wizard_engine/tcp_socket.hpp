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

#ifndef WIZARD_ENGINE_TCP_SOCKET_HPP
#define WIZARD_ENGINE_TCP_SOCKET_HPP

#include <wizard_engine/exception.hpp>
#include <wizard_engine/export.hpp>
#include <wizard_engine/net.hpp>

namespace wze {
/**
 * @file tcp_socket.hpp
 * @author Zana Domán
 * @brief Establishes a TCP connection to a server.
 * @param outgoing Type of the outgoing data.
 * @param incoming Type of the incoming data.
 */
template <typename outgoing, typename incoming,
          typename = typename std::enable_if_t<
              sizeof(outgoing) <= std::numeric_limits<int32_t>::max() &&
              sizeof(incoming) <= std::numeric_limits<int32_t>::max()>>
class tcp_socket final {
  private:
    std::shared_ptr<_TCPsocket> _socket;
    std::shared_ptr<_SDLNet_SocketSet> _socket_set;

  public:
    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Returns the IPv4 address of the server.
     * @return IPv4 address of the server.
     */
    [[nodiscard]] wze::ipv4 ipv4() {
        return *SDLNet_TCP_GetPeerAddress(_socket.get());
    }

    /**
     * @file tpc_socket.hpp
     * @author Zana Domán
     * @brief Constructs a TCP socket instance.
     * @param ipv4 IPv4 address of the server.
     * @warning If the TCP socket cannot be constructed, throws wze::exception.
     */
    explicit tcp_socket(wze::ipv4 ipv4) {
        if (ipv4.host == INADDR_ANY || ipv4.host == INADDR_NONE) {
            throw exception("Invalid IPv4 address");
        }
        _socket = {SDLNet_TCP_Open(&ipv4), SDLNet_TCP_Close};
        if (!_socket) {
            throw exception(SDLNet_GetError());
        }
        _socket_set = {SDLNet_AllocSocketSet(1), SDLNet_FreeSocketSet};
        if (!_socket_set) {
            throw exception(SDLNet_GetError());
        }
        if (SDLNet_TCP_AddSocket(_socket_set.get(), _socket.get()) != 1) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Sends data to the server.
     * @param buffer Data buffer.
     * @note This method may block.
     * @warning If data cannot be sent, throws wze::exception.
     */
    void send(outgoing const& buffer) {
        if (SDLNet_TCP_Send(_socket.get(), &buffer, sizeof(outgoing)) !=
            sizeof(outgoing)) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Receives data from the server, then returns true on successful
     * data exchange, false otherwise.
     * @param buffer Data buffer.
     * @return True on successful data exchange, false otherwise.
     * @warning If data cannot be received, throws wze::exception.
     */
    [[nodiscard]] bool receive(incoming& buffer) {
        int32_t size;

        if (!(bool)SDLNet_CheckSockets(_socket_set.get(), 0)) {
            return false;
        }
        if (!(bool)SDLNet_SocketReady(_socket.get())) {
            return false;
        }

        size = SDLNet_TCP_Recv(_socket.get(), &buffer, sizeof(incoming));
        if (size <= 0) {
            throw exception(SDLNet_GetError());
        }

        return size == sizeof(incoming);
    }
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_TCP_SOCKET_HPP */
