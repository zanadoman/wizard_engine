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

#ifndef WIZARD_ENGINE_AUDIO_HPP
#define WIZARD_ENGINE_AUDIO_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file audio.hpp
 * @author Zana Domán
 * @brief Subsystem to handle global audio.
 */
class audio final {
  private:
    static std::vector<int32_t> _channels;
    static int32_t _maximum_channel;

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    audio() = default;

  public:
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns the global volume of the audio.
     * @return Global volume of the audio.
     */
    static int8_t volume();

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Sets the global volume of the audio.
     * @param volume Global Volume of the audio.
     */
    static void set_volume(int8_t volume);

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Initializes the audio subsystem.
     */
    static void initialize();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Updates the audio subsystem.
     */
    static void update();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Allocates a channel.
     * @return Allocated channel.
     * @warning If the channel cannot be allocated, throws std::runtime_error.
     */
    static int32_t request_channel();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Drops a channel.
     * @param channel Dropped channel.
     * @warning If the channel cannot be dropped, throws std::runtime_error.
     */
    static void drop_channel(int32_t channel);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Pauses the audio globally.
     */
    static void pause();

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Resumes the audio globally.
     */
    static void resume();

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Stops the audio globally.
     * @warning If the audio cannot be stopped globally, throws
     * std::runtime_error.
     */
    static void stop();
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_AUDIO_HPP */
