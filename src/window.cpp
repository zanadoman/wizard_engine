#include "../include/WZE/window.hpp"

SDL_Window *wze::window::_base          = nullptr; // NOLINT
int32_t     wze::window::_base_width    = 0;       // NOLINT
int32_t     wze::window::_base_height   = 0;       // NOLINT
double      wze::window::_base_ratio    = 0;    // NOLINT
int32_t     wze::window::_render_width  = 0;       // NOLINT
int32_t     wze::window::_render_height = 0;       // NOLINT
double      wze::window::_render_ratio  = 0;    // NOLINT

void wze::window::resize() {
    SDL_GetWindowSize(_base, &_base_width, &_base_height);
    _base_ratio = (double)_base_width / (double)_base_height;

    if (_base_ratio < _render_ratio) {
        _render_width  = _base_width;
        _render_height = _base_width / _render_ratio;
        glViewport(0, (_base_height - _render_height) / 2, _render_width,
                   _render_height);
    } else if (_render_ratio < _base_ratio) {
        _render_width  = _base_height * _render_ratio;
        _render_height = _base_height;
        glViewport((_base_width - _render_width) / 2, 0, _render_width,
                   _render_height);
    } else {
        _render_width  = _base_width;
        _render_height = _base_height;
        glViewport(0, 0, _render_width, _render_height);
    }

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(60, (double)_render_ratio, 1, 1000);
}

auto wze::window::base() -> SDL_Window * {
    return _base;
}

auto wze::window::base_width() -> int32_t {
    return _base_width;
}

auto wze::window::base_height() -> int32_t {
    return _base_height;
}

auto wze::window::base_ratio() -> double {
    return _base_ratio;
}

auto wze::window::render_width() -> int32_t {
    return _render_width;
}

auto wze::window::render_height() -> int32_t {
    return _render_height;
}

auto wze::window::render_ratio() -> double {
    return _render_ratio;
}

void wze::window::open(const std::string &title, const std::string &icon_path,
                       double render_ratio) {
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

    _render_ratio = render_ratio;
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
