#include "../include/WZE/window.hpp"

SDL_Window *wze::window::_base   = nullptr; // NOLINT
uint16_t    wze::window::_width  = 0;       // NOLINT
uint16_t    wze::window::_height = 0;       // NOLINT
float       wze::window::_ratio  = 0.0f;    // NOLINT

void wze::window::resize() {
    int32_t width  = 0;
    int32_t height = 0;
    float   ratio  = 0.0f;

    SDL_GetWindowSize(_base, &width, &height);
    ratio = (float)width / (float)height;

    if (ratio < _ratio) {
        _width  = width;
        _height = width / _ratio;
    } else if (_ratio < ratio) {
        _width  = height * _ratio;
        _height = height;
    } else {
        _width  = width;
        _height = height;
    }

    if (_width < width) {
        glViewport((width - _width) / 2, 0, _width, _height);
    } else if (_height < height) {
        glViewport(0, (height - _height) / 2, _width, _height);
    } else {
        glViewport(0, 0, _width, _height);
    }

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(60, (double)_ratio, 1, 1000);
}

auto wze::window::base() -> SDL_Window * {
    return _base;
}

auto wze::window::width() -> uint16_t {
    return _width;
}

auto wze::window::height() -> uint16_t {
    return _height;
}

auto wze::window::ratio() -> float {
    return _ratio;
}

void wze::window::open(const std::string &title, const std::string &icon_path,
                       float ratio) {
    SDL_Surface *icon = nullptr;

    _base =
        SDL_CreateWindow(title.empty() ? "Wizard Engine" : title.c_str(),
                         SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 0, 0,
                         SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE |
                             SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (!_base) {
        throw std::runtime_error(SDL_GetError());
    }

    icon =
        IMG_Load(icon_path.empty() ? "assets/wze/icon.png" : icon_path.c_str());

    if (!icon) {
        throw std::runtime_error(IMG_GetError());
    }

    SDL_SetWindowIcon(_base, icon);
    SDL_FreeSurface(icon);

    if (!SDL_GL_CreateContext(_base)) {
        throw std::runtime_error(SDL_GetError());
    }

    glEnable(GL_TEXTURE_2D);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    _ratio = ratio;
    resize();
}

void wze::window::update() {
    for (auto event : engine::events()) {
        if (event.type == SDL_WINDOWEVENT &&                 // NOLINT
            event.window.event == SDL_WINDOWEVENT_RESIZED) { // NOLINT
            resize();
            break;
        }
    }
}
