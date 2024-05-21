#include "../include/WZE/window.hpp"

SDL_Window *wze::window::_base = nullptr;
std::string _title;
std::string _height;
std::array<int32_t, 4> wze::window::_view({});
double wze::window::_ar = 0.0;
int32_t wze::window::_width = 0;
int32_t wze::window::_height = 0;

void wze::window::_resize(void) {
    double ar;

    SDL_GetWindowSize(_base, &_width, &_height);
    ar = (double)_width / (double)_height;

    if (ar < _ar) {
        _view.at(2) = _width;
        _view.at(3) = std::round(_width / _ar);
    } else if (_ar < ar) {
        _view.at(2) = std::round(_height * _ar);
        _view.at(3) = _height;
    } else {
        _view.at(2) = _width;
        _view.at(3) = _height;
    }

    _view.at(0) = (_width - _view.at(2)) / 2;
    _view.at(1) = (_height - _view.at(3)) / 2;

    glViewport(_view.at(0), _view.at(1), _view.at(2), _view.at(3));
}

void wze::window::_init_base() {
    _base = SDL_CreateWindow("", SDL_WINDOWPOS_UNDEFINED,
                             SDL_WINDOWPOS_UNDEFINED, 0, 0,
                             SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE |
                                 SDL_WINDOW_FULLSCREEN_DESKTOP);

    if (!_base) {
        throw std::runtime_error(SDL_GetError());
    }
}

void wze::window::_init_render(void) {
    if (!SDL_GL_CreateContext(_base)) {
        throw std::runtime_error(SDL_GetError());
    }

    glEnable(GL_TEXTURE_2D);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_ALPHA_TEST);
    glAlphaFunc(GL_GREATER, 0.0);
}

auto wze::window::base(void) -> SDL_Window * {
    return _base;
}

auto wze::window::width(void) -> int32_t {
    return _width;
}

auto wze::window::height(void) -> int32_t {
    return _height;
}

auto wze::window::view(void) -> const std::array<int32_t, 4> & {
    return _view;
}

auto wze::window::title(void) -> const std::string & {
    return _title;
}

void wze::window::set_title(const std::string &title) {
    _title = title.empty() ? "Wizard Engine" : title;
    SDL_SetWindowTitle(_base, title.c_str());
}

auto wze::window::icon(void) -> const std::string & {
    return _icon;
}

void wze::window::set_icon(const std::string &icon) {
    SDL_Surface *img;

    _icon = icon.empty() ? "assets/wze/icon.png" : icon;
    img = IMG_Load(_icon.c_str());

    if (img == nullptr) {
        throw std::runtime_error(IMG_GetError());
    }

    SDL_SetWindowIcon(_base, img);
    SDL_FreeSurface(img);
}

void wze::window::__init(double ar) {
    _init_base();
    _init_render();
    _ar = ar;
    _resize();
    set_title("");
    set_icon("");
}

void wze::window::__update(void) {
    for (const SDL_Event &event : engine::events()) {
        if (event.type == SDL_WINDOWEVENT &&
            event.window.event == SDL_WINDOWEVENT_RESIZED) {
            _resize();
            break;
        }
    }
}
