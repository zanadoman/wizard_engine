#include <wizard_engine/wizard_engine.hpp>

wze_main(1920, 1080) {
    std::shared_ptr<wze::sprite> wizard;
    std::shared_ptr<wze::sprite> cat;
    std::unique_ptr<wze::entity> entity;
    std::shared_ptr<wze::speaker> speaker;

    wizard =
        wze::sprite::create(0, 0, 500, 0, 100, 100, true,
                            wze::assets::create_texture(wze::assets::load_image(
                                "./assets/wizard_engine/icon.png")));
    cat =
        wze::sprite::create(0, 0, 400, 0, 50, 50, true,
                            wze::assets::create_texture(wze::assets::load_image(
                                "./assets/test/run1.png")));
    speaker =
        wze::speaker::create(wze::assets::load_sound("assets/test/music.wav"));

    wze::renderer::queue().push_back(wizard);
    wze::renderer::queue().push_back(cat);
    wze::audio::auto_panning().push_back(speaker);

    entity = wze::entity::create(0, 0, 0, {wizard, cat, speaker});

    speaker->play(0, 1000);

    wze_while(true) {
        if (wze::input::key(wze::KEY_UP)) {
            entity->set_x(
                entity->x() +
                wze::math::move_x(0.5 * wze::timer::delta_time(),
                                  entity->angle() - wze::math::to_radians(90)));
            entity->set_y(
                entity->y() +
                wze::math::move_y(0.5 * wze::timer::delta_time(),
                                  entity->angle() - wze::math::to_radians(90)));
        }
        if (wze::input::key(wze::KEY_DOWN)) {
            entity->set_x(
                entity->x() +
                wze::math::move_x(-0.5 * wze::timer::delta_time(),
                                  entity->angle() - wze::math::to_radians(90)));
            entity->set_y(
                entity->y() +
                wze::math::move_y(-0.5 * wze::timer::delta_time(),
                                  entity->angle() - wze::math::to_radians(90)));
        }
        if (wze::input::key(wze::KEY_LEFT)) {
            entity->set_angle(entity->angle() -
                              0.003f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_RIGHT)) {
            entity->set_angle(entity->angle() +
                              0.003f * wze::timer::delta_time());
        }
    }
}
