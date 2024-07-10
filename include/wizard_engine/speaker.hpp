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

#ifndef WIZARD_ENGINE_SPEAKER_HPP
#define WIZARD_ENGINE_SPEAKER_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/component.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file speaker.hpp
 * @author Zana Domán
 * @brief Audio component.
 */
class speaker final : public component {
  private:
    static std::vector<speaker*> _instances;
    int32_t _channel;
    std::shared_ptr<wze::sound> _sound;
    float _range;
    bool _auto_panning;
    float _x;
    float _y;
    float _angle;
    float _x_offset;
    float _y_offset;
    float _angle_offset;
    bool _attach_x;
    bool _attach_y;
    bool _attach_angle;
    bool _x_angle_lock;
    bool _y_angle_lock;

  public:
#ifdef __WIZARD_ENGINE_INTERNAL
    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns speaker instances.
     * @return Speaker instances.
     */
    static std::vector<speaker*> const& instances();
#endif /* __WIZARD_ENGINE_INTERNAL */

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the sound of the speaker.
     * @return Sound of the speaker.
     */
    std::shared_ptr<wze::sound> const& sound() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the sound of the speaker.
     * @param sound Sound of the speaker.
     */
    void set_sound(std::shared_ptr<wze::sound> const& sound);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the volume of the speaker.
     * @return Volume of the speaker.
     * @note Volume is bounded to [0, 1].
     */
    float volume() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the volume of the speaker.
     * @param volume Volume of the speaker.
     * @note Volume is bounded to [0, 1].
     */
    void set_volume(float volume);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the range of the speaker.
     * @return Range of the speaker.
     */
    float range() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the range of the speaker.
     * @param range Range of the speaker.
     */
    void set_range(float range);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the panning should be aligned automatically.
     * @return Whether the panning should be aligned automatically.
     */
    bool auto_panning() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets whether the panning should be aligned automatically.
     * @param auto_panning Whether the panning should be aligned automatically.
     */
    void set_auto_panning(bool auto_panning);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the x position of the speaker.
     * @return X position of the speaker.
     */
    float x() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the x position of the speaker.
     * @param x X position of the speaker.
     */
    void set_x(float x) final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the y position of the speaker.
     * @return Y position of the speaker.
     */
    float y() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the y position of the speaker.
     * @param y Y position of the speaker.
     */
    void set_y(float y) final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the angle of the speaker.
     * @return Angle of the speaker.
     */
    float angle() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the angle of the speaker.
     * @param angle Angle of the speaker.
     */
    void set_angle(float angle) final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the x offset of the speaker.
     * @return X offset of the speaker.
     */
    float x_offset() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the x offset of the speaker.
     * @param x_offset X offset of the speaker.
     */
    void set_x_offset(float x_offset);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the y offset of the speaker.
     * @return Y offset of the speaker.
     */
    float y_offset() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the y offset of the speaker.
     * @param y_offset Y offset of the speaker.
     */
    void set_y_offset(float y_offset);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns the angle offset of the speaker.
     * @return Angle offset of the speaker.
     */
    float angle_offset() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets the angle offset of the speaker.
     * @param angle_offset Angle offset of the speaker.
     */
    void set_angle_offset(float angle_offset);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is attached to entities.
     * @return Whether the x position is attached to entities.
     */
    bool attach_x() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets whether the x position is attached to entities.
     * @param attach_x Whether the x position is attached to entities.
     */
    void set_attach_x(bool attach_x);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is attached to entities.
     * @return Whether the y position is attached to entities.
     */
    bool attach_y() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets whether the y position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     */
    void set_attach_y(bool attach_y);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the angle is attached to entities.
     * @return Whether the angle is attached to entities.
     */
    bool attach_angle() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets whether the angle is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     */
    void set_attach_angle(bool attach_angle);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the x position is affected by the angle.
     * @return Whether the x position is affected by the angle.
     */
    bool x_angle_lock() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets whether the x position is affected by the angle.
     * @param x_angle_lock Whether the x position is affected by the angle.
     */
    void set_x_angle_lock(bool x_angle_lock);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the y position is affected by the angle.
     * @return Whether the y position is affected by the angle.
     */
    bool y_angle_lock() const final;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Sets whether the y position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     */
    void set_y_angle_lock(bool y_angle_lock);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the speaker is playing or not.
     * @return Whether the speaker is playing or not.
     */
    bool playing() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Returns whether the speaker is paused or not.
     * @return Whether the speaker is paused or not.
     */
    bool paused() const;

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Constructs a speaker instance and pushes into instances.
     * @param sound Sound of the speaker.
     * @param volume Volume of the speaker.
     * @param range Range of the speaker.
     * @param auto_panning Whether the panning should be aligned automatically.
     * @param x X position of the speaker.
     * @param y Y position of the speaker.
     * @param angle Angle of the speaker.
     * @param x_offset X offset of the speaker.
     * @param y_offset Y offset of the speaker.
     * @param angle_offset Angle offset of the speaker.
     * @param attach_x Whether the x position is attached to entities.
     * @param attach_y Whether the y position is attached to entities.
     * @param attach_angle Whether the angle is attached to entities.
     * @param x_angle_lock Whether the x position is affected by the angle.
     * @param y_angle_lock Whether the y position is affected by the angle.
     */
    speaker(std::shared_ptr<wze::sound> const& sound = {}, float volume = 1,
            float range = 1024, bool auto_panning = false, float x = 0,
            float y = 0, float angle = 0, float x_offset = 0,
            float y_offset = 0, float angle_offset = 0, bool attach_x = true,
            bool attach_y = true, bool attach_angle = true,
            bool x_angle_lock = true, bool y_angle_lock = true);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Copy constructor.
     * @param other Other speaker instance.
     */
    speaker(speaker const& other);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Destroys the speaker instance and erases from instances.
     */
    ~speaker();

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Copy assignment operator.
     * @param other Other speaker instance.
     * @return Self reference.
     */
    speaker& operator=(speaker const& other);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Plays the sound of the speaker.
     * @param fade_in Fade in in milliseconds.
     * @param loops Number of loops.
     * @warning If the sound cannot be played, throws std::runtime_error.
     */
    void play(uint16_t fade_in = 0, uint16_t loops = 0);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Pauses the sound of the speaker.
     */
    void pause();

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Resumes the sound of the speaker.
     */
    void resume();

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Stops the sound of the speaker.
     * @param fade_out Fade out in milliseconds.
     */
    void stop(uint16_t fade_out = 0);

    /**
     * @file speaker.hpp
     * @author Zana Domán
     * @brief Aligns the panning of the speaker relative to the camera.
     * @warning If the panning cannot aligned, throws std::runtime_error.
     */
    void align_panning();
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_SPEAKER_HPP */
