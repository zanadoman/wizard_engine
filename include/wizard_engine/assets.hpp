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

#ifndef WIZARD_ENGINE_ASSETS_HPP
#define WIZARD_ENGINE_ASSETS_HPP

#include <wizard_engine/export.hpp>

namespace wze {
/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Image file in host memory.
 * @note Supported image formats: jpg, png, tif, webp, jxl, avif.
 */
using image = SDL_Surface;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Image file in device memory.
 */
using texture = SDL_Texture;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Audio file.
 * @note Supported sound formats: flac, mod, mp3, ogg, mid, opus, wavpack.
 */
using sound = Mix_Chunk;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Font file.
 * @note Supported font format: ttf.
 */
using font = TTF_Font;

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Cursor image.
 */
using cursor = SDL_Cursor;

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

/**
 * @file assets.hpp
 * @author Zana Domán
 * @brief Subsystem to handle external resources.
 */
class assets final {
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
     * @brief Loads an image from a path.
     * @param path Path to the image.
     * @return Loaded image.
     * @note Supported image formats: jpg, png, tif, webp, jxl, avif.
     * @warning If the image cannot be loaded, throws std::runtime_error.
     */
    static std::unique_ptr<image, std::function<void(image*)>>
    load_image(std::string const& path);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates an image from a text.
     * @param text Text of the image.
     * @param font Font of the text.
     * @return Created image.
     * @warning If the image cannot be created, throws std::runtime_error.
     */
    static std::unique_ptr<image, std::function<void(image*)>>
    create_image(std::string const& text, std::shared_ptr<font> const& font);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates a texture from an image.
     * @param image Image of the texture.
     * @return Created texture.
     * @warning If the texture cannot be created, throws std::runtime_error.
     */
    static std::unique_ptr<texture, std::function<void(texture*)>>
    create_texture(std::shared_ptr<image> const& image);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Loads a sound from a path.
     * @param path Path to the sound.
     * @return Loaded sound.
     * @note Supported sound formats: flac, mod, mp3, ogg, mid, opus, wavpack.
     * @warning If the sound cannot be loaded, throws std::runtime_error.
     */
    static std::unique_ptr<sound, std::function<void(sound*)>>
    load_sound(std::string const& path);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Loads a font from a path.
     * @param path Path to the font.
     * @param size Size of the font.
     * @param style Style of the font.
     * @return Loaded font.
     * @note Supported font format: ttf.
     * @warning If the font cannot be loaded, throws std::runtime_error.
     */
    static std::unique_ptr<font, std::function<void(font*)>>
    load_font(std::string const& path, uint8_t size = 48,
              font_style style = FONT_STYLE_NORMAL);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates a cursor from a system cursor.
     * @param system_cursor Type of the cursor.
     * @return Created cursor.
     * @warning If the cursor cannot be created, throws std::runtime_error.
     */
    static std::unique_ptr<cursor, std::function<void(cursor*)>>
    create_cursor(system_cursor system_cursor);

    /**
     * @file assets.hpp
     * @author Zana Domán
     * @brief Creates a cursor from an image.
     * @param image Image of the cursor.
     * @param hot_x Hot spot x of the cursor.
     * @param hot_y Hot spot y of the cursor.
     * @return Created cursor.
     * @warning If the cursor cannot be created, throws std::runtime_error.
     */
    static std::unique_ptr<cursor, std::function<void(cursor*)>>
    create_cursor(std::shared_ptr<image> const& image, uint16_t hot_x = 0,
                  uint16_t hot_y = 0);
};
} /* namespace wze */

#endif
