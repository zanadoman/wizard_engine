/**
 * This file is part of Wizard Engine
 * (https://github.com/zanadoman/Wizard-Engine). Copyright (c) 2024 Zana Domán.
 *
 * Wizard Engine is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * Wizard Engine is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Wizard Engine. If not, see
 * https://www.gnu.org/licenses/licenses.html.
 */

#pragma once

#include "common.hpp" // IWYU pragma: keep

namespace wze {
    using image = std::shared_ptr<SDL_Surface>;
    using texture = std::shared_ptr<SDL_Texture>;
    using sound = std::shared_ptr<Mix_Chunk>;
    using font = std::shared_ptr<TTF_Font>;
    using cursor = std::shared_ptr<SDL_Cursor>;

    enum font_style {
        FONT_STYLE_NORMAL = TTF_STYLE_NORMAL,
        FONT_STYLE_BOLD = TTF_STYLE_BOLD,
        FONT_STYLE_ITALIC = TTF_STYLE_ITALIC,
        FONT_STYLE_UNDERLINE = TTF_STYLE_UNDERLINE,
        FONT_STYLE_STRIKETHROUGH = TTF_STYLE_STRIKETHROUGH
    };

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
        public:
        /*
         * @file assets.hpp
         * @author Zana Domán
         * @brief Loads an image into the host memory from the given path.
         * @param path Path to the image file.
         * @return Shared pointer to the loaded image.
         */
        static image load_image(std::string const& path);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Creates an image into the host memory with the specified
         * dimensions.
         * @param width Width of the image.
         * @param height Height of the image.
         * @return Shared pointer to the created image.
         */
        static image create_image(int32_t width, int32_t height);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Creates a text image from the specified font with the given
         * style.
         * @param text The text to be rendered.
         * @param font The font to be used.
         * @style A value from font_style enum.
         */
        static image create_image(std::string const& text, font const& font,
                                  font_style style = FONT_STYLE_NORMAL);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Loads an image into the device memory from the given path.
         * @param path Path to the image file.
         * @return Shared pointer to the loaded texture.
         */
        static texture load_texture(std::string const& path);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Copies an image from the host memory to the device memory.
         * @param image Image to be copied.
         * @return Shared pointer to the created texture.
         */
        static texture create_texture(image const& image);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Loads a sound into the host memory from the given path.
         * @param path Path to the sound file.
         * @return Shared pointer to the loaded sound.
         */
        static sound load_sound(std::string const& path);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Loads a font into the host memory from the given path.
         * @param path Path to the font file.
         * @return Shared pointer to the loaded font.
         */
        static font load_font(std::string const& path, uint8_t size);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Creates a new system cursor.
         * @param system_cursor A value from system_cursor enum.
         * @return Shared pointer to the created cursor.
         */
        static cursor create_cursor(system_cursor system_cursor);

        /**
         * @file assets.hpp
         * @author Zana Domán
         * @brief Creates a new cursor from an image.
         * @param image Appereance of the cursor.
         * @param hot_x Hot spot x of the cursor inside the bounds of the image.
         * @param hot_y Hot spot y of the cursor inside the bounds of the image.
         * @return Shared pointer to the created cursor.
         */
        static cursor create_cursor(image const& image, int32_t hot_x = 0,
                                    int32_t hot_y = 0);
    };
} // namespace wze
