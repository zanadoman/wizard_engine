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

#ifndef WIZARD_ENGINE_ANIMATABLE_HPP
#define WIZARD_ENGINE_ANIMATABLE_HPP

#include <wizard_engine/assets.hpp>
#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file animatable.hpp
 * @author Zana Domán
 * @brief Interface to make an object animatable.
 */
class animatable {
  public:
    /**
     * @file animatable.hpp
     * @author Zana Domán
     * @brief Sets the texture of the object.
     * @param texture Texture of the object.
     */
    virtual void set_texture(std::shared_ptr<texture> const& texture) = 0;

    /**
     * @file animatable.hpp
     * @author Zana Domán
     * @brief Returns whether the object should be animated or not.
     * @return Whether the object should be animated or not.
     */
    virtual bool animated() const = 0;

    /**
     * @file animatable.hpp
     * @author Zana Domán
     * @brief Default virtual destructor.
     */
    virtual ~animatable() = default;
};
} /* namespace wze */

#endif /* WIZARD_ENGINE_ANIMATABLE_HPP */
