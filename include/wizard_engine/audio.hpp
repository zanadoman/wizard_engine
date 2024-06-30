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

#include <wizard_engine/assets.hpp>
#include <wizard_engine/composition.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file audio.hpp
 * @author Zana Domán
 * @brief Plays sound regardless of the position.
 */
class mono_speaker {
  private:
    uint16_t _channel;
    std::shared_ptr<wze::sound> _sound;

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Constructs a speaker instance.
     * @param sound Sound of the speaker.
     * @param volume Volume of the speaker.
     * @note Volume is bounded to [0, 1].
     */
    mono_speaker(std::shared_ptr<wze::sound> const& sound, float volume);

  public:
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns the sound of the speaker.
     * @return Sound of the speaker.
     */
    std::shared_ptr<wze::sound> const& sound() const;

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Sets the sound of the speaker.
     * @param sound Sound of the speaker.
     */
    void set_sound(std::shared_ptr<wze::sound> const& sound);

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns the volume of the speaker.
     * @return Volume of the speaker.
     * @note Volume is bounded to [0, 1].
     */
    float volume() const;

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Sets the volume of the speaker.
     * @param volume Volume of the speaker.
     * @note Volume is bounded to [0, 1].
     */
    void set_volume(float volume);

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns whether the speaker is paused or not.
     * @return Whether the speaker is paused or not.
     */
    bool paused() const;

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Sets whether the speaker is paused or not.
     * @param paused Whether the speaker is paused or not.
     */
    void set_paused(bool paused);

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns a new mono speaker instance allocated on the heap.
     * @param sound Sound of the speaker.
     * @param volume Volume of the speaker.
     * @return New mono speaker instance allocated on the heap.
     * @note Volume is bounded to [0, 1].
     */
    static std::unique_ptr<mono_speaker>
    create(std::shared_ptr<wze::sound> const& sound = {}, float volume = 1);

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Drops the channel of the speaker.
     */
    virtual ~mono_speaker();

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Plays the sound of the speaker.
     * @param fade_in Fade in milliseconds.
     * @param loops Number of loops.
     */
    void play(uint16_t fade_in = 0, uint16_t loops = 0);

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Stops the sound of the speaker.
     * @param fade_out Fade out milliseconds.
     */
    void stop(uint16_t fade_out = 0);

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns whether the speaker is playing or not.
     * @return Whether the speaker is playing or not.
     */
    bool playing() const;
};

class stereo_speaker final : mono_speaker, component {
  private:
    float _x;
    float _y;
    float _x_offset;
    float _y_offset;
    bool _attach_x;
    bool _attach_y;
    bool _attach_angle;
    bool _x_angle_lock;
    bool _y_angle_lock;

  public:
    float x() const;
    void set_x(float x) final;

    float y() const;
    void set_y(float y) final;

    void set_angle(float angle) final;

    float x_offset() const final;
    void set_x_offset(float x_offset);

    float y_offset() const final;
    void set_y_offset(float y_offset);

    float angle_offset() const final;

    bool attach_x() const final;
    void set_attach_x(bool attach_x);

    bool attach_y() const final;
    void set_attach_y(bool attach_y);

    bool attach_angle() const final;
    void set_attach_angle(bool attach_angle);

    bool x_angle_lock() const final;
    void set_x_angle_lock(bool x_angle_lock);

    bool y_angle_lock() const final;
    void set_y_angle_lock(bool y_angle_lock);
};

/**
 * @file audio.hpp
 * @author Zana Domán
 * @brief Subsystem to handle global audio.
 */
class audio final {
  private:
    static std::vector<uint16_t> _channels;

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    audio() = default;

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Allocates a channel.
     * @return Allocated channel.
     * @warning If the channel cannot be allocated, throws std::runtime_error.
     */
    static uint16_t request_channel();
#endif /* __WIZARD_ENGINE_INTERNAL */

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Drops a channel.
     * @param channel Dropped channel.
     */
    static void drop_channel(uint16_t channel);
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Returns the global volume of the audio.
     * @return Global volume of the audio.
     * @note Global volume is bounded to [0, 1].
     */
    static float volume();

    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Sets the global volume of the audio.
     * @param volume Global Volume of the audio.
     * @note Global volume is bounded to [0, 1].
     */
    static void set_volume(float volume);

#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file audio.hpp
     * @author Zana Domán
     * @brief Allocates the default channel count.
     */
    static void initialize();
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
     */
    static void stop();
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_AUDIO_HPP */
