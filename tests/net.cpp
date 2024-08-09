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

#include <iostream>
#include <wizard_engine/wizard_engine.hpp>

constexpr char const* server_address = "127.0.0.1";
constexpr uint16_t server_port = 8080;
constexpr size_t content_size = 1024;

struct payload {
    // NOLINTNEXTLINE(hicpp-avoid-c-arrays,cppcoreguidelines-avoid-c-arrays,modernize-avoid-c-arrays,misc-non-private-member-variables-in-classes)
    uint8_t buffer[content_size];
    virtual ~payload() = default;
};

class message : public payload {
  private:
    size_t _current;

  public:
    explicit message(std::string const& content = {}) {
        if (content.empty() || content_size < content.length()) {
            clear();
        } else {
            std::copy(
                // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-pointer-arithmetic)
                content.data(), content.c_str() + content.length(),
                // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-array-to-pointer-decay,hicpp-no-array-decay)
                this->buffer);
        }
    }

    bool push(char character) {
        bool full;

        full = _current == content_size;
        if (!full) {
            // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-constant-array-index)
            buffer[_current++] = character;
        }

        return full;
    }

    void clear() {
        for (_current = 0; _current != content_size; ++_current) {
            // NOLINTNEXTLINE(cppcoreguidelines-pro-bounds-constant-array-index)
            buffer[_current] = 0;
        }
        _current = 0;
    }
};

wze_main(1920, 1080) {
    wze::tcp_socket<payload, payload> socket(
        wze::net::resolve(server_address, server_port));
    std::vector<std::unique_ptr<payload>> outgoing;
    payload incoming;
    message* message;

    wze_while(true) {
        if (wze::input::key() == '\r') {
            for (std::unique_ptr<payload> const& payload : outgoing) {
                socket.send(*payload);
            }
            outgoing.clear();
            outgoing.emplace_back(std::make_unique<class message>());
        } else if (wze::input::key() != '\0') {
            message = dynamic_cast<class message*>(outgoing.back().get());
            if (!message->push((char)wze::input::key())) {
                outgoing.emplace_back(std::make_unique<class message>());
                message = dynamic_cast<class message*>(outgoing.back().get());
                message->push((char)wze::input::key());
            }
        }

        if (socket.receive(incoming)) {
            for (uint8_t byte : incoming.buffer) {
                std::cout << byte;
            }
            std::cout << '\n';
        }
    }

    return 0;
}
