#include <wizard_engine/wizard_engine.hpp>

wze_main(1920, 1080) {
    std::shared_ptr<wze::sprite> wizard;
    std::shared_ptr<wze::sprite> cat;
    std::shared_ptr<wze::polygon> polygon;
    std::unique_ptr<wze::entity> entity;
    std::shared_ptr<wze::speaker> speaker;

    wze::timer::set_frame_time(10);

    wizard =
        wze::sprite::create(0, 0, 400, 0, 100, 100, true,
                            wze::assets::create_texture(wze::assets::load_image(
                                "./assets/wizard_engine/icon.png")));
    cat =
        wze::sprite::create(0, 0, 400, 0, 50, 50, true,
                            wze::assets::create_texture(wze::assets::load_image(
                                "./assets/test/run1.png")));
    polygon = wze::polygon::create({{-50, 0}, {0, 50}, {50, 0}, {0, -50}});
    speaker =
        wze::speaker::create(wze::assets::load_sound("assets/test/music.wav"));

    wze::renderer::queue().push_back(wizard);
    wze::renderer::queue().push_back(cat);
    wze::audio::auto_panning().push_back(speaker);

    cat->set_x_offset(100);

    entity = wze::entity::create({wizard, cat, polygon, speaker}, 0, 0, 0);

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
        if (wze::input::key(wze::KEY_A)) {
            wze::camera::set_angle(wze::camera::angle() -
                                   0.003f * wze::timer::delta_time());
        }
        if (wze::input::key(wze::KEY_D)) {
            wze::camera::set_angle(wze::camera::angle() +
                                   0.003f * wze::timer::delta_time());
        }

        if (std::apply([polygon](float x, float y)
                           -> bool { return polygon->inside(x, y); },
                       wze::input::cursor_spatial(400))) {
            wizard->set_color_g(128);
            wizard->set_color_b(128);
        } else {
            wizard->set_color_g(255);
            wizard->set_color_b(255);
        }
    }
}
