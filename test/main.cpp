#include "wizard_engine/render.hpp"
#include <wizard_engine/wizard_engine.hpp>

wze_main(1920, 1080) {
    std::shared_ptr<wze::sprite> wizard;
    std::shared_ptr<wze::sprite> cat;
    std::unique_ptr<wze::entity> entity;

    wizard =
        wze::sprite::create(0.f, 0.f, 0.f, 0.f, 100.f, 100.f, false,
                            wze::assets::create_texture(wze::assets::load_image(
                                "./assets/wizard_engine/icon.png")));
    cat =
        wze::sprite::create(0.f, 0.f, 0.f, 0.f, 50.f, 50.f, false,
                            wze::assets::create_texture(wze::assets::load_image(
                                "./assets/test/run1.png")));

    wze::renderer::queue().push_back(wizard);
    wze::renderer::queue().push_back(cat);

    entity = wze::entity::create(0.f, 0.f, 0.f, {wizard, cat});

    wze_while(true) {
        if (wze::input::key(wze::KEY_UP)) {
            entity->set_x(entity->x() +
                          wze::math::move_x(0.5f * wze::timer::delta_time(),
                                            entity->angle() -
                                                wze::math::to_radians(90.f)));
            entity->set_y(entity->y() +
                          wze::math::move_y(0.5f * wze::timer::delta_time(),
                                            entity->angle() -
                                                wze::math::to_radians(90.f)));
        }
        if (wze::input::key(wze::KEY_DOWN)) {
            entity->set_x(entity->x() +
                          wze::math::move_x(-0.5f * wze::timer::delta_time(),
                                            entity->angle() -
                                                wze::math::to_radians(90.f)));
            entity->set_y(entity->y() +
                          wze::math::move_y(-0.5f * wze::timer::delta_time(),
                                            entity->angle() -
                                                wze::math::to_radians(90.f)));
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
