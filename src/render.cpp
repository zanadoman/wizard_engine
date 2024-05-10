#include "../include/WZE/render.hpp" // IWYU pragma: keep

void wze::render::_open_frame() {
    if (SDL_SetRenderDrawColor(window::_get_renderer(), 0, 0, 0, UINT8_MAX)) {
        throw std::runtime_error(SDL_GetError());
    }

    SDL_RenderClear(window::_get_renderer());
}

void wze::render::_close_frame() {
    SDL_RenderPresent(window::_get_renderer());
}

void wze::render::_update() {
    render::_open_frame();
    render::_close_frame();
}
