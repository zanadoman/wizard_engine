#include "../include/WZE/assets.hpp" // IWYU pragma: keep

auto wze::to_texture(SDL_Surface *raw) -> texture {
    GLuint *result = new GLuint;
    int32_t format = 0;

    switch (raw->format->BytesPerPixel) {
    case 3:
        format = GL_RGBA;
        break;

    case 4:
        format = GL_RGBA;
        break;

    default:
        throw std::runtime_error("wze::to_texture() Format not supported");
        break;
    }

    glGenTextures(1, result);
    glBindTexture(GL_TEXTURE_2D, *result);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexImage2D(GL_TEXTURE_2D, 0, format, raw->w, raw->h, 0, format,
                 GL_UNSIGNED_BYTE, raw->pixels);

    return {result, [](GLuint *tex) {
                glDeleteTextures(1, tex);
                delete tex;
            }};
}

auto wze::load_texture(const std::string &path) -> texture {
    texture      result;
    SDL_Surface *raw = IMG_Load(path.c_str());

    if (!raw) {
        throw std::runtime_error(IMG_GetError());
    }

    result = to_texture(raw);
    SDL_FreeSurface(raw);

    return result;
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

auto wze::render_text(const std::string &string, const font &font, style style)
    -> std::tuple<texture, std::string> {
    texture      result;
    SDL_Surface *raw = nullptr;

    TTF_SetFontStyle(font.get(), style);
    raw = TTF_RenderUTF8_Blended(font.get(), string.c_str(),
                                 {UINT8_MAX, UINT8_MAX, UINT8_MAX, UINT8_MAX});

    if (!raw) {
        throw std::runtime_error(TTF_GetError());
    }

    result = to_texture(raw);
    SDL_FreeSurface(raw);

    return {result, string};
}
