/**
 * zlib License
 *
 * Copyright (C) 2023 Zana Domán
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

#include "common.hpp" // IWYU pragma: keep

namespace wze {
/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Image file in host memory.
 */
using image = std::shared_ptr<SDL_Surface>;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Image file in device memory.
 */
using texture = std::shared_ptr<SDL_Texture>;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Audio file.
 */
using sound = std::shared_ptr<Mix_Chunk>;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Font file.
 */
using font = std::shared_ptr<TTF_Font>;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Cursor image.
 */
using cursor = std::shared_ptr<SDL_Cursor>;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Font styles.
 */
enum font_style {
    FONT_STYLE_NORMAL = TTF_STYLE_NORMAL,
    FONT_STYLE_BOLD = TTF_STYLE_BOLD,
    FONT_STYLE_ITALIC = TTF_STYLE_ITALIC,
    FONT_STYLE_UNDERLINE = TTF_STYLE_UNDERLINE,
    FONT_STYLE_STRIKETHROUGH = TTF_STYLE_STRIKETHROUGH
};

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief System cursors.
 */
enum system_cursor {
    SYSTEM_CURSOR_ARROW = SDL_SYSTEM_CURSOR_ARROW,
    SYSTEM_CURSOR_IBEAM = SDL_SYSTEM_CURSOR_IBEAM,
    SYSTEM_CURSOR_WAIT = SDL_SYSTEM_CURSOR_WAIT,
    SYSTEM_CURSOR_CROSSHAIR = SDL_SYSTEM_CURSOR_CROSSHAIR,
    SYSTEM_CURSOR_WAITARROW = SDL_SYSTEM_CURSOR_WAITARROW,
    SYSTEM_CURSOR_SIZENWSE = SDL_SYSTEM_CURSOR_SIZENWSE,
    SYSTEM_CURSOR_SIZENESW = SDL_SYSTEM_CURSOR_SIZENESW,
    SYSTEM_CURSOR_SIZEWE = SDL_SYSTEM_CURSOR_SIZEWE,
    SYSTEM_CURSOR_SIZENS = SDL_SYSTEM_CURSOR_SIZENS,
    SYSTEM_CURSOR_SIZEALL = SDL_SYSTEM_CURSOR_SIZEALL,
    SYSTEM_CURSOR_NO = SDL_SYSTEM_CURSOR_NO,
    SYSTEM_CURSOR_HAND = SDL_SYSTEM_CURSOR_HAND,
    SYSTEM_CURSOR_COUNT = SDL_NUM_SYSTEM_CURSORS
};

class assets final {
  private:
    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Private default constructor to prevent instantiation.
     */
    assets() = default;

  public:
    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Loads an image into the host memory from a path.
     * @param path Path of the image.
     * @return Shared pointer to the loaded image.
     * @warning If image cannot be loaded, throws std::runtime_error.
     */
    static image load_image(std::string const& path);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates an image into the host memory from a text.
     * @param text Text of the image.
     * @param font Font of the text.
     * @param font_style Style of the font.
     * @return Shared pointer to the created image.
     * @warning If font is nullptr, throws std::invalid_argument.
     * @warning If image cannot be created, throws std::runtime_error.
     */
    static image create_image(std::string const& text, font const& font,
                              font_style font_style = FONT_STYLE_NORMAL);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates a texture into the device memory from an image.
     * @param image Image of the texture.
     * @return Shared pointer to the created texture.
     * @warning If image is nullptr, throws std::invalid_argument
     * @warning If texture cannot be created, throws std::runtime_error.
     */
    static texture create_texture(image const& image);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Loads a sound from a path.
     * @param path Path of the sound.
     * @return Shared pointer to the loaded sound.
     * @warning If sound cannot be loaded, throws std::runtime_error.
     */
    static sound load_sound(std::string const& path);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Loads a font from a path.
     * @param path Path of the font.
     * @return Shared pointer to the loaded font.
     * @warning If font cannot be loaded, throws std::runtime_error.
     */
    static font load_font(std::string const& path, uint8_t size);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates a cursor from a system cursor.
     * @param system_cursor Type of the cursor.
     * @return Shared pointer to the created cursor.
     * @warning If cursor cannot be created, throws std::runtime_error.
     */
    static cursor create_cursor(system_cursor system_cursor);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates a cursor from an image.
     * @param image Image of the cursor.
     * @param hot_x Hot spot x of the cursor.
     * @param hot_y Hot spot y of the cursor.
     * @return Shared pointer to the created cursor.
     * @warning If image is nullptr, throws std::invalid_argument.
     * @warning If cursor cannot be created, throws std::runtime_error.
     */
    static cursor create_cursor(image const& image, uint16_t hot_x = 0,
                                uint16_t hot_y = 0);
};
} // namespace wze
