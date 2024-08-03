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

#include <wizard_engine/exception.hpp>

wze::exception::exception(std::string const& what) {
    _what = what;
#ifdef __EMSCRIPTEN__
    // NOLINTNEXTLINE(hicpp-vararg,cppcoreguidelines-pro-type-vararg)
    emscripten_log(EM_LOG_ERROR, this->what());
#else  /* __EMSCRIPTEN__ */
    std::cerr << this->what() << '\n';
#endif /* __EMSCRIPTEN__ */
}

char const* wze::exception::what() const noexcept {
    return _what.c_str();
}
