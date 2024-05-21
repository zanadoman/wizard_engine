#include "../include/WZE/assets.hpp" // IWYU pragma: keep

auto wze::assets::_new_texture(SDL_Surface *surface) -> wze::texture {
    auto id = new uint32_t();

    glGenTextures(1, id);
    glBindTexture(GL_TEXTURE_2D, *id);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, surface->w, surface->h, 0, GL_RGBA,
                 GL_UNSIGNED_BYTE, surface->pixels);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

    return {id, _delete_texture};
}

void wze::assets::_delete_texture(uint32_t *id) {
    if (id) {
        glDeleteTextures(1, id);
        delete id;
    }
}

auto wze::assets::load_texture(const std::string &path) -> texture {
    auto result = texture();
    auto surface = IMG_Load(path.c_str());

    if (!surface) {
        throw std::runtime_error(IMG_GetError());
    }

    if (surface->format->BytesPerPixel != 4) {
        throw std::runtime_error("wze::assets::load_texture(" + path +
                                 ") Format not supported");
    }

    result = _new_texture(surface);
    SDL_FreeSurface(surface);

    return result;
}

auto wze::assets::load_texture(const std::string &text, const font &font,
                               styles style) -> texture {
    auto result = texture();
    auto surface = (SDL_Surface*)nullptr;

    TTF_SetFontStyle(font.get(), style);
    surface = TTF_RenderUTF8_Blended(font.get(), text.c_str(),
                                     {255, 255, 255, 255});

    if (!surface) {
        throw std::runtime_error(TTF_GetError());
    }

    result = _new_texture(surface);
    SDL_FreeSurface(surface);

    return result;
}

auto wze::assets::load_sound(const std::string &path) -> sound {
    auto result = Mix_LoadWAV(path.c_str());

    if (!result) {
        throw std::runtime_error(Mix_GetError());
    }

    return {result, Mix_FreeChunk};
}

auto wze::assets::load_font(const std::string &path, uint8_t size) -> font {
    auto result = TTF_OpenFont(path.c_str(), size);

    if (!result) {
        throw std::runtime_error(TTF_GetError());
    }

    return {result, TTF_CloseFont};
}
