#include "../include/render.hpp" // IWYU pragma: keep

void wze::render::open_frame(void) {
    if (SDL_SetRenderDrawColor(window::get_renderer(), 0, 0, 0, 255)) {
        throw wze_error(SDL_GetError());
    }

    SDL_RenderClear(window::get_renderer());
}

void wze::render::close_frame(void) {
    SDL_RenderPresent(window::get_renderer());
}

void wze::render::update(void) {
    render::open_frame();
    render::close_frame();
}
