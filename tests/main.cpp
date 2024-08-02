// NOLINTBEGIN

#include <wizard_engine/wizard_engine.hpp>
// #include <emscripten.h>

// NOLINTNEXTLINE(hicpp-avoid-c-arrays,cppcoreguidelines-avoid-c-arrays,modernize-avoid-c-arrays,cert-dcl51-cpp,bugprone-reserved-identifier,cert-dcl37-c)
wze_main(200, 300) {
    std::shared_ptr<wze::texture> tex = wze::assets::create_texture(
        wze::assets::load_image("./assets/wizard_engine/logo.png"));
    wze::sprite sprite(0, 0, 0, 0, 100, 100, false, tex);

    // emscripten_set_main_loop([]() {
    //     (void)wze::engine::update();
    // }, 0, 1);

    return 0;
}

// NOLINTEND
