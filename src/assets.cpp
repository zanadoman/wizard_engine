#include "WZE/assets.hpp"
#include "WZE/render.hpp"
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_mixer.h>
#include <SDL2/SDL_ttf.h>
#include <string>

wze::image wze::assets::load_image(const std::string &path) {
    SDL_Surface *res;

    res = IMG_Load(path.c_str());

    if (!res) {
        throw std::runtime_error(IMG_GetError());
    }

    return {res, SDL_FreeSurface};
}

wze::texture wze::assets::load_texture(const std::string &path) {
    SDL_Texture *res;

    res = IMG_LoadTexture(render::renderer(), path.c_str());

    if (!res) {
        throw std::runtime_error(IMG_GetError());
    }

    return {res, SDL_DestroyTexture};
}

wze::sound wze::assets::load_sound(const std::string &path) {
    Mix_Chunk *res;

    res = Mix_LoadWAV(path.c_str());

    if (!res) {
        throw std::runtime_error(Mix_GetError());
    }

    return {res, Mix_FreeChunk};
}

wze::font wze::assets::load_font(const std::string &path, uint8_t size) {
    TTF_Font *res;

    res = TTF_OpenFont(path.c_str(), size);

    if (!res) {
        throw std::runtime_error(TTF_GetError());
    }

    return {res, TTF_CloseFont};
}
