#include "../include/WZE/assets.hpp" // IWYU pragma: keep

auto new_texture(SDL_Surface *image) -> GLuint * {
    auto result = new GLuint;

    glGenTextures(1, result);
    glBindTexture(GL_TEXTURE_2D, *result);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, image->w, image->h, 0, GL_RGBA,
                 GL_UNSIGNED_BYTE, image->pixels);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    SDL_FreeSurface(image);

    return result;
}

void delete_texture(GLuint *texture) {
    glDeleteTextures(1, texture);
    delete texture;
}

auto wze::load_texture(const std::string &path) -> texture {
    SDL_Surface *image = IMG_Load(path.c_str());

    if (!image) {
        throw std::runtime_error(IMG_GetError());
    }

    if (image->format->BytesPerPixel != 4) {
        throw std::runtime_error("wze::load_texture() Format not supported");
    }

    return {new_texture(image), delete_texture};
}

auto wze::load_texture(const std::string &string, const font &font, style style)
    -> texture {
        SDL_Surface *image = nullptr;

        TTF_SetFontStyle(font.get(), style);
        image = TTF_RenderUTF8_Blended(font.get(), string.c_str(),
                    {UINT8_MAX, UINT8_MAX, UINT8_MAX, UINT8_MAX});

        if (!image) {
            throw std::runtime_error(TTF_GetError());
        }

        return {new_texture(image), delete_texture};
    }

auto wze::load_sound(const std::string &path) -> sound {
    Mix_Chunk *result = Mix_LoadWAV(path.c_str());

    if (!result) {
        throw std::runtime_error(Mix_GetError());
    }

    return {result, Mix_FreeChunk};
}

auto wze::load_font(const std::string &path, uint8_t size) -> font {
    TTF_Font *result = TTF_OpenFont(path.c_str(), size);

    if (!result) {
        throw std::runtime_error(TTF_GetError());
    }

    return {result, TTF_CloseFont};
}
