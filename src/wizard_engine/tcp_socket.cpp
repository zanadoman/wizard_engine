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

// NOLINTNEXTLINE(bugprone-reserved-identifier,cert-dcl37-c,cert-dcl51-cpp)
#define __WIZARD_ENGINE_INTERNAL__

#include <wizard_engine/tcp_socket.hpp>

wze::ipv4 const& wze::tcp_socket::ipv4() const {
    return _ipv4;
}

wze::tcp_socket::tcp_socket(wze::ipv4 const& ipv4) {
    if (ipv4.host == INADDR_ANY || ipv4.host == INADDR_NONE) {
        throw exception("Invalid IPv4 address");
    }
    _ipv4 = ipv4;
    _socket = {SDLNet_TCP_Open(&_ipv4), SDLNet_TCP_Close};
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

void wze::tcp_socket::send(std::string const& data) {
    uint16_t size;

    size = sizeof(char) * data.size();
    if (std::numeric_limits<uint16_t>::max() < size) {
        throw exception("Data is too large");
    }

    if (SDLNet_TCP_Send(_socket.get(), data.data(), size) != size) {
        throw exception(SDLNet_GetError());
    }
}
