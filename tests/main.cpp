// NOLINTBEGIN

#include <wizard_engine/wizard_engine.hpp>

std::shared_ptr<wze::sprite> szar;

wze_main(200, 300) {
    std::shared_ptr<wze::texture> tex = wze::assets::create_texture(
        wze::assets::load_image("./assets/wizard_engine/logo.png"));
    szar.reset(new wze::sprite(0, 0, 0, 0, 100, 100, false, tex));

    emscripten_set_main_loop([]() -> void {
        (void)wze::engine::update();
        szar->set_x(szar->x() + 0.01f * wze::timer::delta_time());
    }, 0, 1);

    return 0;
}

// NOLINTEND
