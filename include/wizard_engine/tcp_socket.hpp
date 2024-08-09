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
 * @param T Type of the buffer.
 * @param N Size of the buffer.
 */
class tcp_socket final {
  private:
    wze::ipv4 _ipv4;
    std::shared_ptr<_TCPsocket> _socket;
    std::shared_ptr<_SDLNet_SocketSet> _socket_set;

  public:
    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Returns the IPv4 address of the socket.
     * @return IPv4 address of the socket.
     */
    [[nodiscard]] wze::ipv4 const& ipv4() const;

    /**
     * @file tpc_socket.hpp
     * @author Zana Domán
     * @brief Constructs a TCP socket instance.
     * @param ipv4 IPv4 address of the socket.
     * @warning If the TCP socket cannot be constructed, throws
     * std::runtime_error.
     */
    explicit tcp_socket(wze::ipv4 const& ipv4);

    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Sends data through the TCP socket.
     * @param T Type of the data.
     * @param data Data.
     * @note This method may block.
     * @warning If the data cannot be sent, throws std::runtime_error.
     */
    template <typename T> void send(T const& data) {
        static_assert(sizeof(T) <= std::numeric_limits<uint16_t>::max(),
                      "Data is too large");

        if (SDLNet_TCP_Send(_socket.get(), &data, sizeof(T)) != sizeof(T)) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Sends data through the TCP socket.
     * @param T Type of the data.
     * @param N Count of the data.
     * @param data Data.
     * @note This method may block.
     * @warning If the data cannot be sent, throws std::runtime_error.
     */
    template <typename T, size_t N> void send(std::array<T, N> const& data) {
        constexpr uint16_t size = sizeof(T) * N;
        static_assert(size <= std::numeric_limits<uint16_t>::max(),
                      "Data is too large");

        if (SDLNet_TCP_Send(_socket.get(), data.data(), size) != size) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Sends data through the TCP socket.
     * @param T Type of the data.
     * @param data Data.
     * @note This method may block.
     * @warning If the data cannot be sent, throws std::runtime_error.
     */
    template <typename T> void send(std::vector<T> const& data) {
        uint16_t size;

        size = sizeof(T) * data.size();
        if (std::numeric_limits<uint16_t>::max() < size) {
            throw exception("Data is too large");
        }

        if (SDLNet_TCP_Send(_socket.get(), data.data(), size) != size) {
            throw exception(SDLNet_GetError());
        }
    }

    /**
     * @file tcp_socket.hpp
     * @author Zana Domán
     * @brief Sends data through the TCP socket.
     * @param data Data.
     * @note This method may block.
     * @warning If the data cannot be sent, throws std::runtime_error.
     */
    void send(std::string const& data);
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_TCP_SOCKET_HPP */
