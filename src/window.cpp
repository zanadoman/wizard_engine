#include "../include/WZE/window.hpp"

SDL_Window *wze::window::_base = nullptr;
int32_t wze::window::_width = int32_t();
int32_t wze::window::_height = int32_t();
std::array<int32_t, 4> wze::window::_viewport({});
float wze::window::_aspect_ratio = float();

void wze::window::_resize(void) {
    auto aspect_ratio = float();

    SDL_GetWindowSize(_base, &_width, &_height);
    aspect_ratio = (float)_width / (float)_height;

    if (aspect_ratio < _aspect_ratio) {
        _viewport.at(2) = _width;
        _viewport.at(3) = std::round(_width / _aspect_ratio);
    } else if (_aspect_ratio < aspect_ratio) {
        _viewport.at(2) = std::round(_height * _aspect_ratio);
        _viewport.at(3) = _height;
    } else {
        _viewport.at(2) = _width;
        _viewport.at(3) = _height;
    }

    _viewport.at(0) = (_width - _viewport.at(2)) / 2;
    _viewport.at(1) = (_height - _viewport.at(3)) / 2;

    glViewport(_viewport.at(0), _viewport.at(1), _viewport.at(2),
               _viewport.at(3));
}

void wze::window::_init_base(const std::string &title) {
    _base =
        SDL_CreateWindow(title.empty() ? "Wizard Engine" : title.c_str(),
                         SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 0, 0,
                         SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE |
                             SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (!_base) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::window::_init_render() {
    if (!SDL_GL_CreateContext(_base)) {
        throw std::runtime_error(SDL_GetError());
    }

    glEnable(GL_TEXTURE_2D);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
}

auto wze::window::base() -> SDL_Window * {
    return _base;
}

auto wze::window::width() -> int32_t {
    return _width;
}

auto wze::window::height() -> int32_t {
    return _height;
}

auto wze::window::viewport(void) -> const std::array<int32_t, 4> & {
    return _viewport;
}

void wze::window::set_icon(const std::string &path) {
    auto *icon = IMG_Load(path.empty() ? "assets/wze/icon.png" : path.c_str());

    if (!icon) {
        throw std::runtime_error(IMG_GetError());
    }

    SDL_SetWindowIcon(_base, icon);
    SDL_FreeSurface(icon);
}

void wze::window::__init(const std::string &title, float aspect_ratio) {
    _init_base(title);
    _init_render();
    _aspect_ratio = aspect_ratio;
    _resize();
}

void wze::window::__update(void) {
    for (auto event : engine::events()) {
        if (event.type == SDL_WINDOWEVENT &&
            event.window.event == SDL_WINDOWEVENT_RESIZED) {
            _resize();
            break;
        }
    }
}
