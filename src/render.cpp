#include "../include/WZE/render.hpp" // IWYU pragma: keep

void wze::render::open_frame() {
    if (SDL_SetRenderDrawColor(window::renderer(), 0, 0, 0, UINT8_MAX)) {
        throw std::runtime_error(SDL_GetError());
    }

    SDL_RenderClear(window::renderer());
}

void wze::render::close_frame() {
    SDL_RenderPresent(window::renderer());
}

void wze::render::update() {
    render::open_frame();
    render::close_frame();
}
