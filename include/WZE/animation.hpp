/**
 * zlib License
 *
 * Copyright (C) 2023-2024 Zana Domán
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

#pragma once

#include "assets.hpp" // IWYU pragma: keep
#include "common.hpp" // IWYU pragma: keep

namespace wze {
/**
 * @file animator.hpp
 * @author Zana Domán
 * @brief Interface to make an object animatable.
 */
class animatable {
  public:
    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Sets the texture of the object.
     * @param texture Texture of the object.
     */
    virtual void set_texture(texture const& texture) = 0;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Default virtual destructor.
     */
    virtual ~animatable() = default;
};

/**
 * @file animator.hpp
 * @author Zana Domán
 * @brief Animates animatable objects.
 */
class animator final {
  private:
    std::vector<std::weak_ptr<animatable>> _instances;
    std::vector<texture> _frames;
    uint16_t _frame_time;
    size_t _current_frame;
    uint16_t _remaining_time;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Construct an animator instance.
     * @param instances Animated instances.
     * @param frames Frame pool of the animation.
     * @param frame_time Frame time of the animation.
     * @return Animator instance.
     */
    animator(std::vector<std::weak_ptr<animatable>> const& instances,
             std::vector<texture> const& frames, uint16_t frame_time);

  public:
    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the animated instances.
     * @return Animated instances.
     */
    std::vector<std::weak_ptr<animatable>>& instances();

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the frame pool of the animation.
     * @return Frame pool of the animation.
     */
    std::vector<texture> const& frames() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the frame time of the animation.
     * @return Frame time of the animation.
     */
    uint16_t frame_time() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Sets the frame time of the animation.
     * @param frame_time Frame time of the animation.
     */
    void set_frame_time(uint16_t frame_time);

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns the current frame of the animation.
     * @return Current frame of the animation.
     */
    size_t current_frame() const;

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Sets the current frame of the animation.
     * @param current_frame Current frame of the animation.
     */
    void set_current_frame(size_t current_frame);

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Returns a new animator instance allocated on the heap.
     * @param instances Animated instances.
     * @param frames Frame pool of the animation.
     * @param frame_time Frame time of the animation.
     * @return New animator instance allocated on the heap.
     */
    static std::unique_ptr<animator>
    create(std::vector<std::weak_ptr<animatable>> const& instances = {},
           std::vector<texture> const& frames = {}, uint16_t frame_time = 100);

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Updates the animation and erases expired instances, then returns
     * whether the animation is looped or not.
     * @return Whether the animation is looped or not.
     */
    bool update();

    /**
     * @file animator.hpp
     * @author Zana Domán
     * @brief Resets the animation.
     */
    void reset();
};
} // namespace wze
