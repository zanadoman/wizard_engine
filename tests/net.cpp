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

#include <wizard_engine/wizard_engine.hpp>

constexpr char const* server_address = "127.0.0.1";
constexpr uint16_t server_port = 8080;

wze_main(1920, 1080) {
    wze::tcp_socket socket(wze::net::resolve(server_address, server_port));
    std::string message;

    wze_while(true) {
        if (wze::input::key() == '\r') {
            socket.send(message);
            message.clear();
        } else if (wze::input::key() != '\0') {
            message += (char)wze::input::key();
        }
    }

    return 0;
}
